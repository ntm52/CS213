// Utilities for unpacking files
// PackLab - CS213 - Northwestern University

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "unpack-utilities.h"


// --- public functions ---

void error_and_exit(const char* message) {
  fprintf(stderr, "%s", message);
  exit(1);
}

void* malloc_and_check(size_t size) {
  void* pointer = malloc(size);
  if (pointer == NULL) {
    error_and_exit("ERROR: malloc failed\n");
  }
  return pointer;
}

void parse_header(uint8_t* input_data, size_t input_len, packlab_config_t* config) {

  // Validate the header and set configurations based on it
  // Look at unpack-utilities.h to see what the fields of config are
  // Set the is_valid field of config to false if the header is invalid
  // or input_len (length of the input_data) is shorter than expected
  config->is_valid = true;

  // basic length needed for a header
  if (input_len < 16)
  {
    config->is_valid = false;
  }

  // magic and version number
  if (input_data[0] != 0x02 && input_data[1] != 0x13 && input_data[2] != 0x03)
  {
    config->is_valid = false;
    return;
  }
  
  uint8_t flags = input_data[3];
  
  if (flags >= 0x80) config->is_compressed = true; // compression
  flags = flags << 1;

  if (flags >= 0x80) config->is_encrypted = true; // encryption
  flags = flags << 1;

  if (flags >= 0x80) config->is_checksummed = true; // checksumming
  flags = flags << 1;

  if (flags >= 0x80) config->should_continue = true; // continuation
  flags = flags << 1;

  if (flags >= 0x80) config->should_float = true; // float data?
  flags = flags << 1;

  if (flags >= 0x80) config->should_float3 = true; // float3 data?

  // now onto byte 5-12 or indexes 4-11 for the length in bytes
  uint64_t originalLength = 0;
  for (int i = 11; i > 3; i--)
  {
    originalLength = originalLength + input_data[i];
    if (i != 4) originalLength = originalLength << 8;
  }
  config->orig_data_size = originalLength;

  // indexes 12-19 for the packed length
  uint64_t dataLength = 0;
  for (int i = 19; i > 11; i--)
  {
    dataLength = dataLength + input_data[i];
    if (i != 12) dataLength = dataLength << 8;
  }
  config->data_size = dataLength;
  
  int dataIndexer = 20;
  
  if (config->is_compressed) // deals with compressed
  {
    if (input_len < dataIndexer + 16) // check input len
    {
      config->is_valid = false;
      return;
    }
    for (int i = 0; i < 16; i++)
    {
      config->dictionary_data[i] = input_data[dataIndexer+i];
    }
    dataIndexer += 16;
  }

  if (config->is_checksummed) // deals with checksummed
  {
    if (input_len < dataIndexer + 2) // deals with input len too short
    {
      config->is_valid = false;
    }
    config->checksum_value = input_data[dataIndexer] << 8;
    config->checksum_value = config->checksum_value + input_data[dataIndexer + 1];
    dataIndexer += 2;
  }
  config->header_len = dataIndexer;
  return;

}

uint16_t calculate_checksum(uint8_t* input_data, size_t input_len) {

  // Calculate a checksum over input_data
  // Return the checksum value
  uint16_t checksum = 0;

  for (int i = 0; i < input_len; i++)
  {
    checksum += input_data[i];
  }


  return checksum;
}

uint16_t lfsr_step(uint16_t oldstate) {
  // Calculate the new LFSR state given previous state
  // Return the new LFSR state
  // ^ is the XOR operator
  int* bits = malloc_and_check(sizeof(int)*16);
  for (int i = 15; i >= 0; i--) // assign all as bits
  {
    bits[i] = 0;

    if (oldstate >= 0x8000) bits[i] = 1;

    oldstate = oldstate << 1;
  }

  int finalBit = ((bits[0] ^ bits[6]) ^ bits[9]) ^ bits[13];

  uint16_t newstate = 0;
  newstate = finalBit;

  for (int i = 15; i > 0; i--)
  {
    newstate = newstate << 1;
    newstate += bits[i];
  }

  free(bits);
  return newstate;
}

void decrypt_data(uint8_t* input_data, size_t input_len, 
                  uint8_t* output_data, size_t output_len,
                  uint16_t encryption_key) {
  
  // TODO
  // Decrypt input_data and write result to output_data
  // Uses lfsr_step() to calculate psuedorandom numbers, initialized with encryption_key
  // Step the LFSR once before encrypting data
  // Apply psuedorandom number with an XOR in little-endian order
  // Beware: input_data may be an odd number of bytes
  
  // Initialize the LFSR state with the encryption key
  uint16_t lfsr_state = lfsr_step(encryption_key);

  // Process the input data in pairs of bytes
  // Grab the next two bytes from the input_data
  size_t i = 0;
  for (i=0; i+1<input_len && i+1<output_len; i+=2) {
    output_data[i] = input_data[i] ^ (lfsr_state & 0xFF);
    output_data[i+1] = input_data[i+1] ^ (lfsr_state >> 8);
    // Update the lfsr state
    lfsr_state = lfsr_step(lfsr_state);
  }
  
  // If there is an odd number of bytes, process the last byte
  if (i < input_len && i < output_len) {
    output_data[i] = input_data[i] ^ (lfsr_state & 0xFF);
  }
  
}

size_t decompress_data(uint8_t* input_data, size_t input_len,
                      uint8_t* output_data, size_t output_len,
                      uint8_t* dictionary_data) {
  
  // TODO
  // Decompress input_data and write result to output_data
  // Return the length of the decompressed data
  
  // Initialize variables to track positions in input and output
  size_t input_index = 0;
  size_t output_index = 0;
  
  while (input_index < input_len && output_index < output_len) {
    uint8_t current_byte = input_data[input_index];
  
    // Check if the byte is an escape byte
    if (current_byte == 0x07) {
      // reads the next byte 
      uint8_t escape_type = input_data[input_index + 1];
  
      // Check if the second byte is 0x00
      if (escape_type == 0x00) {
        // Literal escape byte: copy it to the output
        output_data[output_index] = 0x07;
        output_index++;
      } else {
        // Repeat the character repeat sequence
        uint8_t repeat_count = (escape_type >> 4) & 0x0F;
        uint8_t dictionary_index = escape_type & 0x0F;
  
        // Ensure don't go beyond the output array boundaries
        for (size_t i = 0; i < repeat_count && output_index < output_len; i++) {
          output_data[output_index] = dictionary_data[dictionary_index];
          output_index++;
        }
      }
  
      // Move to the next byte after the escape sequence
      input_index += 2;
  
    } else {
      // Normal byte: copy it to the output
      output_data[output_index] = current_byte;
      output_index++;
      input_index++;
    }
  }
  
  // Return the total length of the decompressed data
  return output_index;
}

void join_float_array(uint8_t* input_signfrac, size_t input_len_bytes_signfrac,
                      uint8_t* input_exp, size_t input_len_bytes_exp,
                      uint8_t* output_data, size_t output_len_bytes) {
                        
  // Combine two streams of bytes, one with signfrac data and one with exp data,
  // into one output stream of floating point data
  // Output bytes are in little-endian order
  
  // Calculate the number of floating-point numbers in the input streams
  size_t num_floats = input_len_bytes_signfrac / 3; // Each float has 3 bytes in signfrac stream
  // Each float has 1 byte in exp stream
  // Ensure the input streams are valid
  if (input_len_bytes_signfrac % 3 != 0 || input_len_bytes_exp != num_floats) {
    // Handle error: invalid input stream lengths
    return;
  }
  
  // Iterate over each floating-point number
  for (size_t i = 0; i < num_floats; i++) {
    // ensure not over limit
    if (i * 4 > output_len_bytes) break;

    // Extract sign and mantissa from signfrac stream
    uint8_t signfrac_byte0 = input_signfrac[i * 3];
    uint8_t signfrac_byte1 = input_signfrac[i * 3 + 1];
    uint8_t signfrac_byte2 = input_signfrac[i * 3 + 2];
  
    // Extract exponent from exp stream
    uint8_t exp_byte = input_exp[i];

    // Combine sign, exponent, and mantissa into a 32-bit floating-point number
    uint8_t signExp = ((signfrac_byte2 >> 7) << 7) + (exp_byte >> 1);
    uint8_t expMantissa = ((exp_byte) << 7) + ((signfrac_byte2 << 1) >> 1);
  
    uint8_t midMantissa = signfrac_byte1;
    uint8_t endMantissa = signfrac_byte0;

    // Write the 32-bit floating-point number to the output buffer in little-endian order
    output_data[i * 4] = endMantissa;
    output_data[i * 4 + 1] = midMantissa;
    output_data[i * 4 + 2] = expMantissa;
    output_data[i * 4 + 3] = signExp;
  }


}
/* End of mandatory implementation. */

/* Extra credit */
void join_float_array_three_stream(uint8_t* input_frac,
                                   size_t   input_len_bytes_frac,
                                   uint8_t* input_exp,
                                   size_t   input_len_bytes_exp,
                                   uint8_t* input_sign,
                                   size_t   input_len_bytes_sign,
                                   uint8_t* output_data,
                                   size_t   output_len_bytes) {

  // TODO
  // Combine three streams of bytes, one with frac data, one with exp data,
  // and one with sign data, into one output stream of floating point data
  // Output bytes are in little-endian order

}

