
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b00 <_init>:
  400b00:	f3 0f 1e fa          	endbr64 
  400b04:	48 83 ec 08          	sub    $0x8,%rsp
  400b08:	48 8b 05 e1 34 20 00 	mov    0x2034e1(%rip),%rax        # 603ff0 <__gmon_start__@Base>
  400b0f:	48 85 c0             	test   %rax,%rax
  400b12:	74 02                	je     400b16 <_init+0x16>
  400b14:	ff d0                	callq  *%rax
  400b16:	48 83 c4 08          	add    $0x8,%rsp
  400b1a:	c3                   	retq   

Disassembly of section .plt:

0000000000400b20 <.plt>:
  400b20:	ff 35 e2 34 20 00    	pushq  0x2034e2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b26:	ff 25 e4 34 20 00    	jmpq   *0x2034e4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b30 <getenv@plt>:
  400b30:	ff 25 e2 34 20 00    	jmpq   *0x2034e2(%rip)        # 604018 <getenv@GLIBC_2.2.5>
  400b36:	68 00 00 00 00       	pushq  $0x0
  400b3b:	e9 e0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b40 <strcasecmp@plt>:
  400b40:	ff 25 da 34 20 00    	jmpq   *0x2034da(%rip)        # 604020 <strcasecmp@GLIBC_2.2.5>
  400b46:	68 01 00 00 00       	pushq  $0x1
  400b4b:	e9 d0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b50 <__errno_location@plt>:
  400b50:	ff 25 d2 34 20 00    	jmpq   *0x2034d2(%rip)        # 604028 <__errno_location@GLIBC_2.2.5>
  400b56:	68 02 00 00 00       	pushq  $0x2
  400b5b:	e9 c0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b60 <strcpy@plt>:
  400b60:	ff 25 ca 34 20 00    	jmpq   *0x2034ca(%rip)        # 604030 <strcpy@GLIBC_2.2.5>
  400b66:	68 03 00 00 00       	pushq  $0x3
  400b6b:	e9 b0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b70 <puts@plt>:
  400b70:	ff 25 c2 34 20 00    	jmpq   *0x2034c2(%rip)        # 604038 <puts@GLIBC_2.2.5>
  400b76:	68 04 00 00 00       	pushq  $0x4
  400b7b:	e9 a0 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b80 <write@plt>:
  400b80:	ff 25 ba 34 20 00    	jmpq   *0x2034ba(%rip)        # 604040 <write@GLIBC_2.2.5>
  400b86:	68 05 00 00 00       	pushq  $0x5
  400b8b:	e9 90 ff ff ff       	jmpq   400b20 <.plt>

0000000000400b90 <printf@plt>:
  400b90:	ff 25 b2 34 20 00    	jmpq   *0x2034b2(%rip)        # 604048 <printf@GLIBC_2.2.5>
  400b96:	68 06 00 00 00       	pushq  $0x6
  400b9b:	e9 80 ff ff ff       	jmpq   400b20 <.plt>

0000000000400ba0 <alarm@plt>:
  400ba0:	ff 25 aa 34 20 00    	jmpq   *0x2034aa(%rip)        # 604050 <alarm@GLIBC_2.2.5>
  400ba6:	68 07 00 00 00       	pushq  $0x7
  400bab:	e9 70 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bb0 <close@plt>:
  400bb0:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604058 <close@GLIBC_2.2.5>
  400bb6:	68 08 00 00 00       	pushq  $0x8
  400bbb:	e9 60 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bc0 <read@plt>:
  400bc0:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604060 <read@GLIBC_2.2.5>
  400bc6:	68 09 00 00 00       	pushq  $0x9
  400bcb:	e9 50 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bd0 <fgets@plt>:
  400bd0:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604068 <fgets@GLIBC_2.2.5>
  400bd6:	68 0a 00 00 00       	pushq  $0xa
  400bdb:	e9 40 ff ff ff       	jmpq   400b20 <.plt>

0000000000400be0 <signal@plt>:
  400be0:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604070 <signal@GLIBC_2.2.5>
  400be6:	68 0b 00 00 00       	pushq  $0xb
  400beb:	e9 30 ff ff ff       	jmpq   400b20 <.plt>

0000000000400bf0 <gethostbyname@plt>:
  400bf0:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604078 <gethostbyname@GLIBC_2.2.5>
  400bf6:	68 0c 00 00 00       	pushq  $0xc
  400bfb:	e9 20 ff ff ff       	jmpq   400b20 <.plt>

0000000000400c00 <fprintf@plt>:
  400c00:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604080 <fprintf@GLIBC_2.2.5>
  400c06:	68 0d 00 00 00       	pushq  $0xd
  400c0b:	e9 10 ff ff ff       	jmpq   400b20 <.plt>

0000000000400c10 <strtol@plt>:
  400c10:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604088 <strtol@GLIBC_2.2.5>
  400c16:	68 0e 00 00 00       	pushq  $0xe
  400c1b:	e9 00 ff ff ff       	jmpq   400b20 <.plt>

0000000000400c20 <fflush@plt>:
  400c20:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604090 <fflush@GLIBC_2.2.5>
  400c26:	68 0f 00 00 00       	pushq  $0xf
  400c2b:	e9 f0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c30 <__isoc99_sscanf@plt>:
  400c30:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604098 <__isoc99_sscanf@GLIBC_2.7>
  400c36:	68 10 00 00 00       	pushq  $0x10
  400c3b:	e9 e0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c40 <memmove@plt>:
  400c40:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6040a0 <memmove@GLIBC_2.2.5>
  400c46:	68 11 00 00 00       	pushq  $0x11
  400c4b:	e9 d0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c50 <fopen@plt>:
  400c50:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6040a8 <fopen@GLIBC_2.2.5>
  400c56:	68 12 00 00 00       	pushq  $0x12
  400c5b:	e9 c0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c60 <gethostname@plt>:
  400c60:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6040b0 <gethostname@GLIBC_2.2.5>
  400c66:	68 13 00 00 00       	pushq  $0x13
  400c6b:	e9 b0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c70 <sprintf@plt>:
  400c70:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6040b8 <sprintf@GLIBC_2.2.5>
  400c76:	68 14 00 00 00       	pushq  $0x14
  400c7b:	e9 a0 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c80 <exit@plt>:
  400c80:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 6040c0 <exit@GLIBC_2.2.5>
  400c86:	68 15 00 00 00       	pushq  $0x15
  400c8b:	e9 90 fe ff ff       	jmpq   400b20 <.plt>

0000000000400c90 <connect@plt>:
  400c90:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 6040c8 <connect@GLIBC_2.2.5>
  400c96:	68 16 00 00 00       	pushq  $0x16
  400c9b:	e9 80 fe ff ff       	jmpq   400b20 <.plt>

0000000000400ca0 <sleep@plt>:
  400ca0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 6040d0 <sleep@GLIBC_2.2.5>
  400ca6:	68 17 00 00 00       	pushq  $0x17
  400cab:	e9 70 fe ff ff       	jmpq   400b20 <.plt>

0000000000400cb0 <__ctype_b_loc@plt>:
  400cb0:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 6040d8 <__ctype_b_loc@GLIBC_2.3>
  400cb6:	68 18 00 00 00       	pushq  $0x18
  400cbb:	e9 60 fe ff ff       	jmpq   400b20 <.plt>

0000000000400cc0 <socket@plt>:
  400cc0:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 6040e0 <socket@GLIBC_2.2.5>
  400cc6:	68 19 00 00 00       	pushq  $0x19
  400ccb:	e9 50 fe ff ff       	jmpq   400b20 <.plt>

Disassembly of section .text:

0000000000400cd0 <_start>:
  400cd0:	f3 0f 1e fa          	endbr64 
  400cd4:	31 ed                	xor    %ebp,%ebp
  400cd6:	49 89 d1             	mov    %rdx,%r9
  400cd9:	5e                   	pop    %rsi
  400cda:	48 89 e2             	mov    %rsp,%rdx
  400cdd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ce1:	50                   	push   %rax
  400ce2:	54                   	push   %rsp
  400ce3:	49 c7 c0 f0 22 40 00 	mov    $0x4022f0,%r8
  400cea:	48 c7 c1 80 22 40 00 	mov    $0x402280,%rcx
  400cf1:	48 c7 c7 b6 0d 40 00 	mov    $0x400db6,%rdi
  400cf8:	ff 15 ea 32 20 00    	callq  *0x2032ea(%rip)        # 603fe8 <__libc_start_main@GLIBC_2.2.5>
  400cfe:	f4                   	hlt    

0000000000400cff <.annobin_init.c>:
  400cff:	90                   	nop

0000000000400d00 <_dl_relocate_static_pie>:
  400d00:	f3 0f 1e fa          	endbr64 
  400d04:	c3                   	retq   

0000000000400d05 <.annobin__dl_relocate_static_pie.end>:
  400d05:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d0c:	00 00 00 
  400d0f:	90                   	nop

0000000000400d10 <deregister_tm_clones>:
  400d10:	48 8d 3d 89 3a 20 00 	lea    0x203a89(%rip),%rdi        # 6047a0 <stdout@@GLIBC_2.2.5>
  400d17:	48 8d 05 82 3a 20 00 	lea    0x203a82(%rip),%rax        # 6047a0 <stdout@@GLIBC_2.2.5>
  400d1e:	48 39 f8             	cmp    %rdi,%rax
  400d21:	74 15                	je     400d38 <deregister_tm_clones+0x28>
  400d23:	48 8b 05 b6 32 20 00 	mov    0x2032b6(%rip),%rax        # 603fe0 <_ITM_deregisterTMCloneTable@Base>
  400d2a:	48 85 c0             	test   %rax,%rax
  400d2d:	74 09                	je     400d38 <deregister_tm_clones+0x28>
  400d2f:	ff e0                	jmpq   *%rax
  400d31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400d38:	c3                   	retq   
  400d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d40 <register_tm_clones>:
  400d40:	48 8d 3d 59 3a 20 00 	lea    0x203a59(%rip),%rdi        # 6047a0 <stdout@@GLIBC_2.2.5>
  400d47:	48 8d 35 52 3a 20 00 	lea    0x203a52(%rip),%rsi        # 6047a0 <stdout@@GLIBC_2.2.5>
  400d4e:	48 29 fe             	sub    %rdi,%rsi
  400d51:	48 c1 fe 03          	sar    $0x3,%rsi
  400d55:	48 89 f0             	mov    %rsi,%rax
  400d58:	48 c1 e8 3f          	shr    $0x3f,%rax
  400d5c:	48 01 c6             	add    %rax,%rsi
  400d5f:	48 d1 fe             	sar    %rsi
  400d62:	74 14                	je     400d78 <register_tm_clones+0x38>
  400d64:	48 8b 05 8d 32 20 00 	mov    0x20328d(%rip),%rax        # 603ff8 <_ITM_registerTMCloneTable@Base>
  400d6b:	48 85 c0             	test   %rax,%rax
  400d6e:	74 08                	je     400d78 <register_tm_clones+0x38>
  400d70:	ff e0                	jmpq   *%rax
  400d72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400d78:	c3                   	retq   
  400d79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d80 <__do_global_dtors_aux>:
  400d80:	f3 0f 1e fa          	endbr64 
  400d84:	80 3d 3d 3a 20 00 00 	cmpb   $0x0,0x203a3d(%rip)        # 6047c8 <completed.7303>
  400d8b:	75 13                	jne    400da0 <__do_global_dtors_aux+0x20>
  400d8d:	55                   	push   %rbp
  400d8e:	48 89 e5             	mov    %rsp,%rbp
  400d91:	e8 7a ff ff ff       	callq  400d10 <deregister_tm_clones>
  400d96:	c6 05 2b 3a 20 00 01 	movb   $0x1,0x203a2b(%rip)        # 6047c8 <completed.7303>
  400d9d:	5d                   	pop    %rbp
  400d9e:	c3                   	retq   
  400d9f:	90                   	nop
  400da0:	c3                   	retq   
  400da1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400da8:	00 00 00 00 
  400dac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400db0 <frame_dummy>:
  400db0:	f3 0f 1e fa          	endbr64 
  400db4:	eb 8a                	jmp    400d40 <register_tm_clones>

0000000000400db6 <main>:
  400db6:	53                   	push   %rbx
  400db7:	83 ff 01             	cmp    $0x1,%edi
  400dba:	0f 84 e8 00 00 00    	je     400ea8 <main+0xf2>
  400dc0:	48 89 f3             	mov    %rsi,%rbx
  400dc3:	83 ff 02             	cmp    $0x2,%edi
  400dc6:	0f 85 0a 01 00 00    	jne    400ed6 <main+0x120>
  400dcc:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400dd0:	be 30 23 40 00       	mov    $0x402330,%esi
  400dd5:	e8 76 fe ff ff       	callq  400c50 <fopen@plt>
  400dda:	48 89 05 ef 39 20 00 	mov    %rax,0x2039ef(%rip)        # 6047d0 <infile>
  400de1:	48 85 c0             	test   %rax,%rax
  400de4:	0f 84 d1 00 00 00    	je     400ebb <main+0x105>
  400dea:	e8 77 05 00 00       	callq  401366 <initialize_bomb>
  400def:	bf b8 23 40 00       	mov    $0x4023b8,%edi
  400df4:	e8 77 fd ff ff       	callq  400b70 <puts@plt>
  400df9:	bf f8 23 40 00       	mov    $0x4023f8,%edi
  400dfe:	e8 6d fd ff ff       	callq  400b70 <puts@plt>
  400e03:	e8 92 07 00 00       	callq  40159a <read_line>
  400e08:	48 89 c7             	mov    %rax,%rdi
  400e0b:	e8 e2 00 00 00       	callq  400ef2 <phase1>
  400e10:	e8 b3 08 00 00       	callq  4016c8 <defuse_phase>
  400e15:	bf 28 24 40 00       	mov    $0x402428,%edi
  400e1a:	e8 51 fd ff ff       	callq  400b70 <puts@plt>
  400e1f:	e8 76 07 00 00       	callq  40159a <read_line>
  400e24:	48 89 c7             	mov    %rax,%rdi
  400e27:	e8 e4 00 00 00       	callq  400f10 <phase2>
  400e2c:	e8 97 08 00 00       	callq  4016c8 <defuse_phase>
  400e31:	bf 69 23 40 00       	mov    $0x402369,%edi
  400e36:	e8 35 fd ff ff       	callq  400b70 <puts@plt>
  400e3b:	e8 5a 07 00 00       	callq  40159a <read_line>
  400e40:	48 89 c7             	mov    %rax,%rdi
  400e43:	e8 0c 01 00 00       	callq  400f54 <phase3>
  400e48:	e8 7b 08 00 00       	callq  4016c8 <defuse_phase>
  400e4d:	bf 86 23 40 00       	mov    $0x402386,%edi
  400e52:	e8 19 fd ff ff       	callq  400b70 <puts@plt>
  400e57:	e8 3e 07 00 00       	callq  40159a <read_line>
  400e5c:	48 89 c7             	mov    %rax,%rdi
  400e5f:	e8 dd 01 00 00       	callq  401041 <phase4>
  400e64:	e8 5f 08 00 00       	callq  4016c8 <defuse_phase>
  400e69:	bf 58 24 40 00       	mov    $0x402458,%edi
  400e6e:	e8 fd fc ff ff       	callq  400b70 <puts@plt>
  400e73:	e8 22 07 00 00       	callq  40159a <read_line>
  400e78:	48 89 c7             	mov    %rax,%rdi
  400e7b:	e8 18 02 00 00       	callq  401098 <phase5>
  400e80:	e8 43 08 00 00       	callq  4016c8 <defuse_phase>
  400e85:	bf 95 23 40 00       	mov    $0x402395,%edi
  400e8a:	e8 e1 fc ff ff       	callq  400b70 <puts@plt>
  400e8f:	e8 06 07 00 00       	callq  40159a <read_line>
  400e94:	48 89 c7             	mov    %rax,%rdi
  400e97:	e8 41 02 00 00       	callq  4010dd <phase6>
  400e9c:	e8 27 08 00 00       	callq  4016c8 <defuse_phase>
  400ea1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ea6:	5b                   	pop    %rbx
  400ea7:	c3                   	retq   
  400ea8:	48 8b 05 01 39 20 00 	mov    0x203901(%rip),%rax        # 6047b0 <stdin@@GLIBC_2.2.5>
  400eaf:	48 89 05 1a 39 20 00 	mov    %rax,0x20391a(%rip)        # 6047d0 <infile>
  400eb6:	e9 2f ff ff ff       	jmpq   400dea <main+0x34>
  400ebb:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400ebf:	48 8b 33             	mov    (%rbx),%rsi
  400ec2:	bf 32 23 40 00       	mov    $0x402332,%edi
  400ec7:	e8 c4 fc ff ff       	callq  400b90 <printf@plt>
  400ecc:	bf 08 00 00 00       	mov    $0x8,%edi
  400ed1:	e8 aa fd ff ff       	callq  400c80 <exit@plt>
  400ed6:	48 8b 36             	mov    (%rsi),%rsi
  400ed9:	bf 4f 23 40 00       	mov    $0x40234f,%edi
  400ede:	b8 00 00 00 00       	mov    $0x0,%eax
  400ee3:	e8 a8 fc ff ff       	callq  400b90 <printf@plt>
  400ee8:	bf 08 00 00 00       	mov    $0x8,%edi
  400eed:	e8 8e fd ff ff       	callq  400c80 <exit@plt>

0000000000400ef2 <phase1>:
  400ef2:	48 83 ec 08          	sub    $0x8,%rsp
  400ef6:	be 7b 24 40 00       	mov    $0x40247b,%esi
  400efb:	e8 fe 03 00 00       	callq  4012fe <strings_not_equal>
  400f00:	85 c0                	test   %eax,%eax
  400f02:	75 05                	jne    400f09 <phase1+0x17>
  400f04:	48 83 c4 08          	add    $0x8,%rsp
  400f08:	c3                   	retq   
  400f09:	e8 17 06 00 00       	callq  401525 <explode_bomb>
  400f0e:	eb f4                	jmp    400f04 <phase1+0x12>

0000000000400f10 <phase2>:
  400f10:	55                   	push   %rbp
  400f11:	53                   	push   %rbx
  400f12:	48 83 ec 28          	sub    $0x28,%rsp
  400f16:	48 89 e6             	mov    %rsp,%rsi
  400f19:	e8 3d 06 00 00       	callq  40155b <read_six_numbers>
  400f1e:	83 3c 24 09          	cmpl   $0x9,(%rsp)
  400f22:	75 09                	jne    400f2d <phase2+0x1d>
  400f24:	48 89 e3             	mov    %rsp,%rbx
  400f27:	48 8d 6b 14          	lea    0x14(%rbx),%rbp
  400f2b:	eb 15                	jmp    400f42 <phase2+0x32>
  400f2d:	e8 f3 05 00 00       	callq  401525 <explode_bomb>
  400f32:	eb f0                	jmp    400f24 <phase2+0x14>
  400f34:	e8 ec 05 00 00       	callq  401525 <explode_bomb>
  400f39:	48 83 c3 04          	add    $0x4,%rbx
  400f3d:	48 39 eb             	cmp    %rbp,%rbx
  400f40:	74 0b                	je     400f4d <phase2+0x3d>
  400f42:	8b 03                	mov    (%rbx),%eax
  400f44:	01 c0                	add    %eax,%eax
  400f46:	39 43 04             	cmp    %eax,0x4(%rbx)
  400f49:	74 ee                	je     400f39 <phase2+0x29>
  400f4b:	eb e7                	jmp    400f34 <phase2+0x24>
  400f4d:	48 83 c4 28          	add    $0x28,%rsp
  400f51:	5b                   	pop    %rbx
  400f52:	5d                   	pop    %rbp
  400f53:	c3                   	retq   

0000000000400f54 <phase3>:
  400f54:	48 83 ec 18          	sub    $0x18,%rsp
  400f58:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  400f5d:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  400f62:	be 4e 2b 40 00       	mov    $0x402b4e,%esi
  400f67:	b8 00 00 00 00       	mov    $0x0,%eax
  400f6c:	e8 bf fc ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  400f71:	83 f8 01             	cmp    $0x1,%eax
  400f74:	7e 16                	jle    400f8c <phase3+0x38>
  400f76:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  400f7b:	0f 87 82 00 00 00    	ja     401003 <phase3+0xaf>
  400f81:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400f85:	ff 24 c5 a0 24 40 00 	jmpq   *0x4024a0(,%rax,8)
  400f8c:	e8 94 05 00 00       	callq  401525 <explode_bomb>
  400f91:	eb e3                	jmp    400f76 <phase3+0x22>
  400f93:	b8 63 01 00 00       	mov    $0x163,%eax
  400f98:	eb 05                	jmp    400f9f <phase3+0x4b>
  400f9a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f9f:	2d dd 03 00 00       	sub    $0x3dd,%eax
  400fa4:	05 6a 02 00 00       	add    $0x26a,%eax
  400fa9:	2d 6c 03 00 00       	sub    $0x36c,%eax
  400fae:	05 6c 03 00 00       	add    $0x36c,%eax
  400fb3:	2d 6c 03 00 00       	sub    $0x36c,%eax
  400fb8:	05 6c 03 00 00       	add    $0x36c,%eax
  400fbd:	2d 6c 03 00 00       	sub    $0x36c,%eax
  400fc2:	83 7c 24 0c 05       	cmpl   $0x5,0xc(%rsp)
  400fc7:	7f 06                	jg     400fcf <phase3+0x7b>
  400fc9:	39 44 24 08          	cmp    %eax,0x8(%rsp)
  400fcd:	74 05                	je     400fd4 <phase3+0x80>
  400fcf:	e8 51 05 00 00       	callq  401525 <explode_bomb>
  400fd4:	48 83 c4 18          	add    $0x18,%rsp
  400fd8:	c3                   	retq   
  400fd9:	b8 00 00 00 00       	mov    $0x0,%eax
  400fde:	eb c4                	jmp    400fa4 <phase3+0x50>
  400fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe5:	eb c2                	jmp    400fa9 <phase3+0x55>
  400fe7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fec:	eb c0                	jmp    400fae <phase3+0x5a>
  400fee:	b8 00 00 00 00       	mov    $0x0,%eax
  400ff3:	eb be                	jmp    400fb3 <phase3+0x5f>
  400ff5:	b8 00 00 00 00       	mov    $0x0,%eax
  400ffa:	eb bc                	jmp    400fb8 <phase3+0x64>
  400ffc:	b8 00 00 00 00       	mov    $0x0,%eax
  401001:	eb ba                	jmp    400fbd <phase3+0x69>
  401003:	e8 1d 05 00 00       	callq  401525 <explode_bomb>
  401008:	b8 00 00 00 00       	mov    $0x0,%eax
  40100d:	eb b3                	jmp    400fc2 <phase3+0x6e>

000000000040100f <func4>:
  40100f:	53                   	push   %rbx
  401010:	89 d0                	mov    %edx,%eax
  401012:	29 f0                	sub    %esi,%eax
  401014:	89 c3                	mov    %eax,%ebx
  401016:	c1 eb 1f             	shr    $0x1f,%ebx
  401019:	01 c3                	add    %eax,%ebx
  40101b:	d1 fb                	sar    %ebx
  40101d:	01 f3                	add    %esi,%ebx
  40101f:	39 fb                	cmp    %edi,%ebx
  401021:	7f 06                	jg     401029 <func4+0x1a>
  401023:	7c 10                	jl     401035 <func4+0x26>
  401025:	89 d8                	mov    %ebx,%eax
  401027:	5b                   	pop    %rbx
  401028:	c3                   	retq   
  401029:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40102c:	e8 de ff ff ff       	callq  40100f <func4>
  401031:	01 c3                	add    %eax,%ebx
  401033:	eb f0                	jmp    401025 <func4+0x16>
  401035:	8d 73 01             	lea    0x1(%rbx),%esi
  401038:	e8 d2 ff ff ff       	callq  40100f <func4>
  40103d:	01 c3                	add    %eax,%ebx
  40103f:	eb e4                	jmp    401025 <func4+0x16>

0000000000401041 <phase4>:
  401041:	48 83 ec 18          	sub    $0x18,%rsp
  401045:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  40104a:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40104f:	be 4e 2b 40 00       	mov    $0x402b4e,%esi
  401054:	b8 00 00 00 00       	mov    $0x0,%eax
  401059:	e8 d2 fb ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  40105e:	83 f8 02             	cmp    $0x2,%eax
  401061:	75 07                	jne    40106a <phase4+0x29>
  401063:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
  401068:	76 05                	jbe    40106f <phase4+0x2e>
  40106a:	e8 b6 04 00 00       	callq  401525 <explode_bomb>
  40106f:	ba 0e 00 00 00       	mov    $0xe,%edx
  401074:	be 00 00 00 00       	mov    $0x0,%esi
  401079:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  40107d:	e8 8d ff ff ff       	callq  40100f <func4>
  401082:	83 f8 07             	cmp    $0x7,%eax
  401085:	75 07                	jne    40108e <phase4+0x4d>
  401087:	83 7c 24 08 07       	cmpl   $0x7,0x8(%rsp)
  40108c:	74 05                	je     401093 <phase4+0x52>
  40108e:	e8 92 04 00 00       	callq  401525 <explode_bomb>
  401093:	48 83 c4 18          	add    $0x18,%rsp
  401097:	c3                   	retq   

0000000000401098 <phase5>:
  401098:	53                   	push   %rbx
  401099:	48 89 fb             	mov    %rdi,%rbx
  40109c:	e8 40 02 00 00       	callq  4012e1 <string_length>
  4010a1:	83 f8 06             	cmp    $0x6,%eax
  4010a4:	75 29                	jne    4010cf <phase5+0x37>
  4010a6:	48 89 d8             	mov    %rbx,%rax
  4010a9:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
  4010ad:	b9 00 00 00 00       	mov    $0x0,%ecx
  4010b2:	0f b6 10             	movzbl (%rax),%edx
  4010b5:	83 e2 0f             	and    $0xf,%edx
  4010b8:	03 0c 95 e0 24 40 00 	add    0x4024e0(,%rdx,4),%ecx
  4010bf:	48 83 c0 01          	add    $0x1,%rax
  4010c3:	48 39 f8             	cmp    %rdi,%rax
  4010c6:	75 ea                	jne    4010b2 <phase5+0x1a>
  4010c8:	83 f9 32             	cmp    $0x32,%ecx
  4010cb:	75 09                	jne    4010d6 <phase5+0x3e>
  4010cd:	5b                   	pop    %rbx
  4010ce:	c3                   	retq   
  4010cf:	e8 51 04 00 00       	callq  401525 <explode_bomb>
  4010d4:	eb d0                	jmp    4010a6 <phase5+0xe>
  4010d6:	e8 4a 04 00 00       	callq  401525 <explode_bomb>
  4010db:	eb f0                	jmp    4010cd <phase5+0x35>

00000000004010dd <phase6>:
  4010dd:	41 56                	push   %r14
  4010df:	41 55                	push   %r13
  4010e1:	41 54                	push   %r12
  4010e3:	55                   	push   %rbp
  4010e4:	53                   	push   %rbx
  4010e5:	48 83 ec 50          	sub    $0x50,%rsp
  4010e9:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4010ee:	e8 68 04 00 00       	callq  40155b <read_six_numbers>
  4010f3:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4010f8:	4d 8d 74 24 14       	lea    0x14(%r12),%r14
  4010fd:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  401103:	eb 28                	jmp    40112d <phase6+0x50>
  401105:	e8 1b 04 00 00       	callq  401525 <explode_bomb>
  40110a:	eb 30                	jmp    40113c <phase6+0x5f>
  40110c:	e8 14 04 00 00       	callq  401525 <explode_bomb>
  401111:	48 83 c3 01          	add    $0x1,%rbx
  401115:	83 fb 05             	cmp    $0x5,%ebx
  401118:	7f 0b                	jg     401125 <phase6+0x48>
  40111a:	8b 44 9c 30          	mov    0x30(%rsp,%rbx,4),%eax
  40111e:	39 45 00             	cmp    %eax,0x0(%rbp)
  401121:	75 ee                	jne    401111 <phase6+0x34>
  401123:	eb e7                	jmp    40110c <phase6+0x2f>
  401125:	49 83 c5 01          	add    $0x1,%r13
  401129:	49 83 c4 04          	add    $0x4,%r12
  40112d:	4c 89 e5             	mov    %r12,%rbp
  401130:	41 8b 04 24          	mov    (%r12),%eax
  401134:	83 e8 01             	sub    $0x1,%eax
  401137:	83 f8 05             	cmp    $0x5,%eax
  40113a:	77 c9                	ja     401105 <phase6+0x28>
  40113c:	4d 39 f4             	cmp    %r14,%r12
  40113f:	74 05                	je     401146 <phase6+0x69>
  401141:	4c 89 eb             	mov    %r13,%rbx
  401144:	eb d4                	jmp    40111a <phase6+0x3d>
  401146:	be 00 00 00 00       	mov    $0x0,%esi
  40114b:	8b 4c b4 30          	mov    0x30(%rsp,%rsi,4),%ecx
  40114f:	b8 01 00 00 00       	mov    $0x1,%eax
  401154:	ba f0 42 60 00       	mov    $0x6042f0,%edx
  401159:	83 f9 01             	cmp    $0x1,%ecx
  40115c:	7e 0b                	jle    401169 <phase6+0x8c>
  40115e:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401162:	83 c0 01             	add    $0x1,%eax
  401165:	39 c8                	cmp    %ecx,%eax
  401167:	75 f5                	jne    40115e <phase6+0x81>
  401169:	48 89 14 f4          	mov    %rdx,(%rsp,%rsi,8)
  40116d:	48 83 c6 01          	add    $0x1,%rsi
  401171:	48 83 fe 06          	cmp    $0x6,%rsi
  401175:	75 d4                	jne    40114b <phase6+0x6e>
  401177:	48 8b 1c 24          	mov    (%rsp),%rbx
  40117b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401180:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401184:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  401189:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40118d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401192:	48 89 42 08          	mov    %rax,0x8(%rdx)
  401196:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  40119b:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40119f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  4011a4:	48 89 42 08          	mov    %rax,0x8(%rdx)
  4011a8:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  4011af:	00 
  4011b0:	bd 05 00 00 00       	mov    $0x5,%ebp
  4011b5:	eb 09                	jmp    4011c0 <phase6+0xe3>
  4011b7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4011bb:	83 ed 01             	sub    $0x1,%ebp
  4011be:	74 11                	je     4011d1 <phase6+0xf4>
  4011c0:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4011c4:	8b 00                	mov    (%rax),%eax
  4011c6:	39 03                	cmp    %eax,(%rbx)
  4011c8:	7e ed                	jle    4011b7 <phase6+0xda>
  4011ca:	e8 56 03 00 00       	callq  401525 <explode_bomb>
  4011cf:	eb e6                	jmp    4011b7 <phase6+0xda>
  4011d1:	48 83 c4 50          	add    $0x50,%rsp
  4011d5:	5b                   	pop    %rbx
  4011d6:	5d                   	pop    %rbp
  4011d7:	41 5c                	pop    %r12
  4011d9:	41 5d                	pop    %r13
  4011db:	41 5e                	pop    %r14
  4011dd:	c3                   	retq   

00000000004011de <fun7>:
  4011de:	48 85 ff             	test   %rdi,%rdi
  4011e1:	74 32                	je     401215 <fun7+0x37>
  4011e3:	48 83 ec 08          	sub    $0x8,%rsp
  4011e7:	8b 17                	mov    (%rdi),%edx
  4011e9:	39 f2                	cmp    %esi,%edx
  4011eb:	7f 0c                	jg     4011f9 <fun7+0x1b>
  4011ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f2:	75 12                	jne    401206 <fun7+0x28>
  4011f4:	48 83 c4 08          	add    $0x8,%rsp
  4011f8:	c3                   	retq   
  4011f9:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4011fd:	e8 dc ff ff ff       	callq  4011de <fun7>
  401202:	01 c0                	add    %eax,%eax
  401204:	eb ee                	jmp    4011f4 <fun7+0x16>
  401206:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  40120a:	e8 cf ff ff ff       	callq  4011de <fun7>
  40120f:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401213:	eb df                	jmp    4011f4 <fun7+0x16>
  401215:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40121a:	c3                   	retq   

000000000040121b <secret_phase>:
  40121b:	53                   	push   %rbx
  40121c:	e8 79 03 00 00       	callq  40159a <read_line>
  401221:	ba 0a 00 00 00       	mov    $0xa,%edx
  401226:	be 00 00 00 00       	mov    $0x0,%esi
  40122b:	48 89 c7             	mov    %rax,%rdi
  40122e:	e8 dd f9 ff ff       	callq  400c10 <strtol@plt>
  401233:	48 89 c3             	mov    %rax,%rbx
  401236:	8d 40 ff             	lea    -0x1(%rax),%eax
  401239:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  40123e:	77 22                	ja     401262 <secret_phase+0x47>
  401240:	89 de                	mov    %ebx,%esi
  401242:	bf 10 41 60 00       	mov    $0x604110,%edi
  401247:	e8 92 ff ff ff       	callq  4011de <fun7>
  40124c:	83 f8 05             	cmp    $0x5,%eax
  40124f:	75 18                	jne    401269 <secret_phase+0x4e>
  401251:	bf 20 25 40 00       	mov    $0x402520,%edi
  401256:	e8 15 f9 ff ff       	callq  400b70 <puts@plt>
  40125b:	e8 68 04 00 00       	callq  4016c8 <defuse_phase>
  401260:	5b                   	pop    %rbx
  401261:	c3                   	retq   
  401262:	e8 be 02 00 00       	callq  401525 <explode_bomb>
  401267:	eb d7                	jmp    401240 <secret_phase+0x25>
  401269:	e8 b7 02 00 00       	callq  401525 <explode_bomb>
  40126e:	eb e1                	jmp    401251 <secret_phase+0x36>

0000000000401270 <sig_handler>:
  401270:	48 83 ec 08          	sub    $0x8,%rsp
  401274:	bf 48 25 40 00       	mov    $0x402548,%edi
  401279:	e8 f2 f8 ff ff       	callq  400b70 <puts@plt>
  40127e:	bf 03 00 00 00       	mov    $0x3,%edi
  401283:	e8 18 fa ff ff       	callq  400ca0 <sleep@plt>
  401288:	bf ca 2a 40 00       	mov    $0x402aca,%edi
  40128d:	b8 00 00 00 00       	mov    $0x0,%eax
  401292:	e8 f9 f8 ff ff       	callq  400b90 <printf@plt>
  401297:	48 8b 3d 02 35 20 00 	mov    0x203502(%rip),%rdi        # 6047a0 <stdout@@GLIBC_2.2.5>
  40129e:	e8 7d f9 ff ff       	callq  400c20 <fflush@plt>
  4012a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4012a8:	e8 f3 f9 ff ff       	callq  400ca0 <sleep@plt>
  4012ad:	bf d2 2a 40 00       	mov    $0x402ad2,%edi
  4012b2:	e8 b9 f8 ff ff       	callq  400b70 <puts@plt>
  4012b7:	bf 10 00 00 00       	mov    $0x10,%edi
  4012bc:	e8 bf f9 ff ff       	callq  400c80 <exit@plt>

00000000004012c1 <invalid_phase>:
  4012c1:	48 83 ec 08          	sub    $0x8,%rsp
  4012c5:	48 89 fe             	mov    %rdi,%rsi
  4012c8:	bf da 2a 40 00       	mov    $0x402ada,%edi
  4012cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d2:	e8 b9 f8 ff ff       	callq  400b90 <printf@plt>
  4012d7:	bf 08 00 00 00       	mov    $0x8,%edi
  4012dc:	e8 9f f9 ff ff       	callq  400c80 <exit@plt>

00000000004012e1 <string_length>:
  4012e1:	80 3f 00             	cmpb   $0x0,(%rdi)
  4012e4:	74 12                	je     4012f8 <string_length+0x17>
  4012e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4012eb:	48 83 c7 01          	add    $0x1,%rdi
  4012ef:	83 c0 01             	add    $0x1,%eax
  4012f2:	80 3f 00             	cmpb   $0x0,(%rdi)
  4012f5:	75 f4                	jne    4012eb <string_length+0xa>
  4012f7:	c3                   	retq   
  4012f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4012fd:	c3                   	retq   

00000000004012fe <strings_not_equal>:
  4012fe:	41 54                	push   %r12
  401300:	55                   	push   %rbp
  401301:	53                   	push   %rbx
  401302:	48 89 fb             	mov    %rdi,%rbx
  401305:	48 89 f5             	mov    %rsi,%rbp
  401308:	e8 d4 ff ff ff       	callq  4012e1 <string_length>
  40130d:	41 89 c4             	mov    %eax,%r12d
  401310:	48 89 ef             	mov    %rbp,%rdi
  401313:	e8 c9 ff ff ff       	callq  4012e1 <string_length>
  401318:	ba 01 00 00 00       	mov    $0x1,%edx
  40131d:	41 39 c4             	cmp    %eax,%r12d
  401320:	75 2f                	jne    401351 <strings_not_equal+0x53>
  401322:	0f b6 03             	movzbl (%rbx),%eax
  401325:	84 c0                	test   %al,%al
  401327:	74 2f                	je     401358 <strings_not_equal+0x5a>
  401329:	3a 45 00             	cmp    0x0(%rbp),%al
  40132c:	75 31                	jne    40135f <strings_not_equal+0x61>
  40132e:	b8 01 00 00 00       	mov    $0x1,%eax
  401333:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  401337:	84 d2                	test   %dl,%dl
  401339:	74 11                	je     40134c <strings_not_equal+0x4e>
  40133b:	48 83 c0 01          	add    $0x1,%rax
  40133f:	38 54 05 ff          	cmp    %dl,-0x1(%rbp,%rax,1)
  401343:	74 ee                	je     401333 <strings_not_equal+0x35>
  401345:	ba 01 00 00 00       	mov    $0x1,%edx
  40134a:	eb 05                	jmp    401351 <strings_not_equal+0x53>
  40134c:	ba 00 00 00 00       	mov    $0x0,%edx
  401351:	89 d0                	mov    %edx,%eax
  401353:	5b                   	pop    %rbx
  401354:	5d                   	pop    %rbp
  401355:	41 5c                	pop    %r12
  401357:	c3                   	retq   
  401358:	ba 00 00 00 00       	mov    $0x0,%edx
  40135d:	eb f2                	jmp    401351 <strings_not_equal+0x53>
  40135f:	ba 01 00 00 00       	mov    $0x1,%edx
  401364:	eb eb                	jmp    401351 <strings_not_equal+0x53>

0000000000401366 <initialize_bomb>:
  401366:	53                   	push   %rbx
  401367:	48 81 ec 40 20 00 00 	sub    $0x2040,%rsp
  40136e:	be 70 12 40 00       	mov    $0x401270,%esi
  401373:	bf 02 00 00 00       	mov    $0x2,%edi
  401378:	e8 63 f8 ff ff       	callq  400be0 <signal@plt>
  40137d:	be 40 00 00 00       	mov    $0x40,%esi
  401382:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401389:	00 
  40138a:	e8 d1 f8 ff ff       	callq  400c60 <gethostname@plt>
  40138f:	85 c0                	test   %eax,%eax
  401391:	75 43                	jne    4013d6 <initialize_bomb+0x70>
  401393:	48 8b 3d 06 30 20 00 	mov    0x203006(%rip),%rdi        # 6043a0 <host_table>
  40139a:	bb a8 43 60 00       	mov    $0x6043a8,%ebx
  40139f:	48 85 ff             	test   %rdi,%rdi
  4013a2:	74 1e                	je     4013c2 <initialize_bomb+0x5c>
  4013a4:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  4013ab:	00 
  4013ac:	e8 8f f7 ff ff       	callq  400b40 <strcasecmp@plt>
  4013b1:	85 c0                	test   %eax,%eax
  4013b3:	74 51                	je     401406 <initialize_bomb+0xa0>
  4013b5:	48 83 c3 08          	add    $0x8,%rbx
  4013b9:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  4013bd:	48 85 ff             	test   %rdi,%rdi
  4013c0:	75 e2                	jne    4013a4 <initialize_bomb+0x3e>
  4013c2:	bf b8 25 40 00       	mov    $0x4025b8,%edi
  4013c7:	e8 a4 f7 ff ff       	callq  400b70 <puts@plt>
  4013cc:	bf 08 00 00 00       	mov    $0x8,%edi
  4013d1:	e8 aa f8 ff ff       	callq  400c80 <exit@plt>
  4013d6:	bf 80 25 40 00       	mov    $0x402580,%edi
  4013db:	e8 90 f7 ff ff       	callq  400b70 <puts@plt>
  4013e0:	bf 08 00 00 00       	mov    $0x8,%edi
  4013e5:	e8 96 f8 ff ff       	callq  400c80 <exit@plt>
  4013ea:	48 89 e6             	mov    %rsp,%rsi
  4013ed:	bf eb 2a 40 00       	mov    $0x402aeb,%edi
  4013f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f7:	e8 94 f7 ff ff       	callq  400b90 <printf@plt>
  4013fc:	bf 08 00 00 00       	mov    $0x8,%edi
  401401:	e8 7a f8 ff ff       	callq  400c80 <exit@plt>
  401406:	48 89 e7             	mov    %rsp,%rdi
  401409:	e8 49 0c 00 00       	callq  402057 <init_driver>
  40140e:	85 c0                	test   %eax,%eax
  401410:	78 d8                	js     4013ea <initialize_bomb+0x84>
  401412:	48 81 c4 40 20 00 00 	add    $0x2040,%rsp
  401419:	5b                   	pop    %rbx
  40141a:	c3                   	retq   

000000000040141b <initialize_bomb_solve>:
  40141b:	c3                   	retq   

000000000040141c <blank_line>:
  40141c:	55                   	push   %rbp
  40141d:	53                   	push   %rbx
  40141e:	48 83 ec 08          	sub    $0x8,%rsp
  401422:	48 89 fd             	mov    %rdi,%rbp
  401425:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401429:	84 db                	test   %bl,%bl
  40142b:	74 1e                	je     40144b <blank_line+0x2f>
  40142d:	e8 7e f8 ff ff       	callq  400cb0 <__ctype_b_loc@plt>
  401432:	48 83 c5 01          	add    $0x1,%rbp
  401436:	48 0f be db          	movsbq %bl,%rbx
  40143a:	48 8b 00             	mov    (%rax),%rax
  40143d:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401442:	75 e1                	jne    401425 <blank_line+0x9>
  401444:	b8 00 00 00 00       	mov    $0x0,%eax
  401449:	eb 05                	jmp    401450 <blank_line+0x34>
  40144b:	b8 01 00 00 00       	mov    $0x1,%eax
  401450:	48 83 c4 08          	add    $0x8,%rsp
  401454:	5b                   	pop    %rbx
  401455:	5d                   	pop    %rbp
  401456:	c3                   	retq   

0000000000401457 <skip>:
  401457:	53                   	push   %rbx
  401458:	48 63 05 6d 33 20 00 	movslq 0x20336d(%rip),%rax        # 6047cc <num_input_strings>
  40145f:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401463:	48 c1 e7 04          	shl    $0x4,%rdi
  401467:	48 81 c7 e0 47 60 00 	add    $0x6047e0,%rdi
  40146e:	48 8b 15 5b 33 20 00 	mov    0x20335b(%rip),%rdx        # 6047d0 <infile>
  401475:	be 50 00 00 00       	mov    $0x50,%esi
  40147a:	e8 51 f7 ff ff       	callq  400bd0 <fgets@plt>
  40147f:	48 89 c3             	mov    %rax,%rbx
  401482:	48 85 c0             	test   %rax,%rax
  401485:	74 0c                	je     401493 <skip+0x3c>
  401487:	48 89 c7             	mov    %rax,%rdi
  40148a:	e8 8d ff ff ff       	callq  40141c <blank_line>
  40148f:	85 c0                	test   %eax,%eax
  401491:	75 c5                	jne    401458 <skip+0x1>
  401493:	48 89 d8             	mov    %rbx,%rax
  401496:	5b                   	pop    %rbx
  401497:	c3                   	retq   

0000000000401498 <send_msg>:
  401498:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  40149f:	44 8b 05 26 33 20 00 	mov    0x203326(%rip),%r8d        # 6047cc <num_input_strings>
  4014a6:	41 8d 40 ff          	lea    -0x1(%r8),%eax
  4014aa:	48 98                	cltq   
  4014ac:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4014b0:	48 c1 e0 04          	shl    $0x4,%rax
  4014b4:	85 ff                	test   %edi,%edi
  4014b6:	b9 05 2b 40 00       	mov    $0x402b05,%ecx
  4014bb:	ba 0d 2b 40 00       	mov    $0x402b0d,%edx
  4014c0:	48 0f 44 ca          	cmove  %rdx,%rcx
  4014c4:	4c 8d 88 e0 47 60 00 	lea    0x6047e0(%rax),%r9
  4014cb:	8b 15 af 2e 20 00    	mov    0x202eaf(%rip),%edx        # 604380 <bomb_id>
  4014d1:	be 16 2b 40 00       	mov    $0x402b16,%esi
  4014d6:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  4014dd:	00 
  4014de:	b8 00 00 00 00       	mov    $0x0,%eax
  4014e3:	e8 88 f7 ff ff       	callq  400c70 <sprintf@plt>
  4014e8:	49 89 e0             	mov    %rsp,%r8
  4014eb:	b9 00 00 00 00       	mov    $0x0,%ecx
  4014f0:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4014f7:	00 
  4014f8:	be 50 43 60 00       	mov    $0x604350,%esi
  4014fd:	bf 70 43 60 00       	mov    $0x604370,%edi
  401502:	e8 01 0d 00 00       	callq  402208 <driver_post>
  401507:	85 c0                	test   %eax,%eax
  401509:	78 08                	js     401513 <send_msg+0x7b>
  40150b:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401512:	c3                   	retq   
  401513:	48 89 e7             	mov    %rsp,%rdi
  401516:	e8 55 f6 ff ff       	callq  400b70 <puts@plt>
  40151b:	bf 00 00 00 00       	mov    $0x0,%edi
  401520:	e8 5b f7 ff ff       	callq  400c80 <exit@plt>

0000000000401525 <explode_bomb>:
  401525:	48 83 ec 08          	sub    $0x8,%rsp
  401529:	bf 22 2b 40 00       	mov    $0x402b22,%edi
  40152e:	e8 3d f6 ff ff       	callq  400b70 <puts@plt>
  401533:	bf 2b 2b 40 00       	mov    $0x402b2b,%edi
  401538:	e8 33 f6 ff ff       	callq  400b70 <puts@plt>
  40153d:	bf 00 00 00 00       	mov    $0x0,%edi
  401542:	e8 51 ff ff ff       	callq  401498 <send_msg>
  401547:	bf f0 25 40 00       	mov    $0x4025f0,%edi
  40154c:	e8 1f f6 ff ff       	callq  400b70 <puts@plt>
  401551:	bf 08 00 00 00       	mov    $0x8,%edi
  401556:	e8 25 f7 ff ff       	callq  400c80 <exit@plt>

000000000040155b <read_six_numbers>:
  40155b:	48 83 ec 08          	sub    $0x8,%rsp
  40155f:	48 89 f2             	mov    %rsi,%rdx
  401562:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401566:	48 8d 46 14          	lea    0x14(%rsi),%rax
  40156a:	50                   	push   %rax
  40156b:	48 8d 46 10          	lea    0x10(%rsi),%rax
  40156f:	50                   	push   %rax
  401570:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401574:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401578:	be 42 2b 40 00       	mov    $0x402b42,%esi
  40157d:	b8 00 00 00 00       	mov    $0x0,%eax
  401582:	e8 a9 f6 ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401587:	48 83 c4 10          	add    $0x10,%rsp
  40158b:	83 f8 05             	cmp    $0x5,%eax
  40158e:	7e 05                	jle    401595 <read_six_numbers+0x3a>
  401590:	48 83 c4 08          	add    $0x8,%rsp
  401594:	c3                   	retq   
  401595:	e8 8b ff ff ff       	callq  401525 <explode_bomb>

000000000040159a <read_line>:
  40159a:	48 83 ec 08          	sub    $0x8,%rsp
  40159e:	b8 00 00 00 00       	mov    $0x0,%eax
  4015a3:	e8 af fe ff ff       	callq  401457 <skip>
  4015a8:	48 85 c0             	test   %rax,%rax
  4015ab:	74 63                	je     401610 <read_line+0x76>
  4015ad:	8b 35 19 32 20 00    	mov    0x203219(%rip),%esi        # 6047cc <num_input_strings>
  4015b3:	48 63 c6             	movslq %esi,%rax
  4015b6:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4015ba:	48 c1 e2 04          	shl    $0x4,%rdx
  4015be:	48 81 c2 e0 47 60 00 	add    $0x6047e0,%rdx
  4015c5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4015cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d1:	48 89 d7             	mov    %rdx,%rdi
  4015d4:	f2 ae                	repnz scas %es:(%rdi),%al
  4015d6:	48 f7 d1             	not    %rcx
  4015d9:	48 83 e9 01          	sub    $0x1,%rcx
  4015dd:	83 f9 4e             	cmp    $0x4e,%ecx
  4015e0:	0f 8f 9c 00 00 00    	jg     401682 <read_line+0xe8>
  4015e6:	83 e9 01             	sub    $0x1,%ecx
  4015e9:	48 63 c9             	movslq %ecx,%rcx
  4015ec:	48 63 c6             	movslq %esi,%rax
  4015ef:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4015f3:	48 c1 e0 04          	shl    $0x4,%rax
  4015f7:	c6 84 01 e0 47 60 00 	movb   $0x0,0x6047e0(%rcx,%rax,1)
  4015fe:	00 
  4015ff:	8d 46 01             	lea    0x1(%rsi),%eax
  401602:	89 05 c4 31 20 00    	mov    %eax,0x2031c4(%rip)        # 6047cc <num_input_strings>
  401608:	48 89 d0             	mov    %rdx,%rax
  40160b:	48 83 c4 08          	add    $0x8,%rsp
  40160f:	c3                   	retq   
  401610:	48 8b 05 99 31 20 00 	mov    0x203199(%rip),%rax        # 6047b0 <stdin@@GLIBC_2.2.5>
  401617:	48 39 05 b2 31 20 00 	cmp    %rax,0x2031b2(%rip)        # 6047d0 <infile>
  40161e:	74 19                	je     401639 <read_line+0x9f>
  401620:	bf 72 2b 40 00       	mov    $0x402b72,%edi
  401625:	e8 06 f5 ff ff       	callq  400b30 <getenv@plt>
  40162a:	48 85 c0             	test   %rax,%rax
  40162d:	74 1e                	je     40164d <read_line+0xb3>
  40162f:	bf 00 00 00 00       	mov    $0x0,%edi
  401634:	e8 47 f6 ff ff       	callq  400c80 <exit@plt>
  401639:	bf 54 2b 40 00       	mov    $0x402b54,%edi
  40163e:	e8 2d f5 ff ff       	callq  400b70 <puts@plt>
  401643:	bf 08 00 00 00       	mov    $0x8,%edi
  401648:	e8 33 f6 ff ff       	callq  400c80 <exit@plt>
  40164d:	48 8b 05 5c 31 20 00 	mov    0x20315c(%rip),%rax        # 6047b0 <stdin@@GLIBC_2.2.5>
  401654:	48 89 05 75 31 20 00 	mov    %rax,0x203175(%rip)        # 6047d0 <infile>
  40165b:	b8 00 00 00 00       	mov    $0x0,%eax
  401660:	e8 f2 fd ff ff       	callq  401457 <skip>
  401665:	48 85 c0             	test   %rax,%rax
  401668:	0f 85 3f ff ff ff    	jne    4015ad <read_line+0x13>
  40166e:	bf 54 2b 40 00       	mov    $0x402b54,%edi
  401673:	e8 f8 f4 ff ff       	callq  400b70 <puts@plt>
  401678:	bf 00 00 00 00       	mov    $0x0,%edi
  40167d:	e8 fe f5 ff ff       	callq  400c80 <exit@plt>
  401682:	bf 7d 2b 40 00       	mov    $0x402b7d,%edi
  401687:	e8 e4 f4 ff ff       	callq  400b70 <puts@plt>
  40168c:	8b 05 3a 31 20 00    	mov    0x20313a(%rip),%eax        # 6047cc <num_input_strings>
  401692:	8d 50 01             	lea    0x1(%rax),%edx
  401695:	89 15 31 31 20 00    	mov    %edx,0x203131(%rip)        # 6047cc <num_input_strings>
  40169b:	48 98                	cltq   
  40169d:	48 6b c0 50          	imul   $0x50,%rax,%rax
  4016a1:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
  4016a8:	75 6e 63 
  4016ab:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  4016b2:	2a 2a 00 
  4016b5:	48 89 b0 e0 47 60 00 	mov    %rsi,0x6047e0(%rax)
  4016bc:	48 89 b8 e8 47 60 00 	mov    %rdi,0x6047e8(%rax)
  4016c3:	e8 5d fe ff ff       	callq  401525 <explode_bomb>

00000000004016c8 <defuse_phase>:
  4016c8:	48 83 ec 78          	sub    $0x78,%rsp
  4016cc:	bf 01 00 00 00       	mov    $0x1,%edi
  4016d1:	e8 c2 fd ff ff       	callq  401498 <send_msg>
  4016d6:	83 3d ef 30 20 00 06 	cmpl   $0x6,0x2030ef(%rip)        # 6047cc <num_input_strings>
  4016dd:	74 05                	je     4016e4 <defuse_phase+0x1c>
  4016df:	48 83 c4 78          	add    $0x78,%rsp
  4016e3:	c3                   	retq   
  4016e4:	48 83 ec 08          	sub    $0x8,%rsp
  4016e8:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
  4016ed:	50                   	push   %rax
  4016ee:	48 8d 44 24 18       	lea    0x18(%rsp),%rax
  4016f3:	50                   	push   %rax
  4016f4:	48 8d 44 24 24       	lea    0x24(%rsp),%rax
  4016f9:	50                   	push   %rax
  4016fa:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
  4016ff:	4c 8d 44 24 34       	lea    0x34(%rsp),%r8
  401704:	48 8d 4c 24 38       	lea    0x38(%rsp),%rcx
  401709:	48 8d 54 24 3c       	lea    0x3c(%rsp),%rdx
  40170e:	be 98 2b 40 00       	mov    $0x402b98,%esi
  401713:	bf 30 48 60 00       	mov    $0x604830,%edi
  401718:	b8 00 00 00 00       	mov    $0x0,%eax
  40171d:	e8 0e f5 ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401722:	48 83 c4 20          	add    $0x20,%rsp
  401726:	83 f8 07             	cmp    $0x7,%eax
  401729:	74 16                	je     401741 <defuse_phase+0x79>
  40172b:	bf 78 26 40 00       	mov    $0x402678,%edi
  401730:	e8 3b f4 ff ff       	callq  400b70 <puts@plt>
  401735:	bf a8 26 40 00       	mov    $0x4026a8,%edi
  40173a:	e8 31 f4 ff ff       	callq  400b70 <puts@plt>
  40173f:	eb 9e                	jmp    4016df <defuse_phase+0x17>
  401741:	be ad 2b 40 00       	mov    $0x402bad,%esi
  401746:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40174b:	e8 ae fb ff ff       	callq  4012fe <strings_not_equal>
  401750:	85 c0                	test   %eax,%eax
  401752:	75 d7                	jne    40172b <defuse_phase+0x63>
  401754:	bf 18 26 40 00       	mov    $0x402618,%edi
  401759:	e8 12 f4 ff ff       	callq  400b70 <puts@plt>
  40175e:	bf 40 26 40 00       	mov    $0x402640,%edi
  401763:	e8 08 f4 ff ff       	callq  400b70 <puts@plt>
  401768:	b8 00 00 00 00       	mov    $0x0,%eax
  40176d:	e8 a9 fa ff ff       	callq  40121b <secret_phase>
  401772:	eb b7                	jmp    40172b <defuse_phase+0x63>

0000000000401774 <sigalrm_handler>:
  401774:	48 83 ec 08          	sub    $0x8,%rsp
  401778:	ba 00 00 00 00       	mov    $0x0,%edx
  40177d:	be 68 33 40 00       	mov    $0x403368,%esi
  401782:	48 8b 3d 37 30 20 00 	mov    0x203037(%rip),%rdi        # 6047c0 <stderr@@GLIBC_2.2.5>
  401789:	b8 00 00 00 00       	mov    $0x0,%eax
  40178e:	e8 6d f4 ff ff       	callq  400c00 <fprintf@plt>
  401793:	bf 01 00 00 00       	mov    $0x1,%edi
  401798:	e8 e3 f4 ff ff       	callq  400c80 <exit@plt>

000000000040179d <rio_readlineb>:
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 89 f5             	mov    %rsi,%rbp
  4017a8:	48 83 fa 01          	cmp    $0x1,%rdx
  4017ac:	0f 86 9d 00 00 00    	jbe    40184f <rio_readlineb+0xb2>
  4017b2:	48 89 fb             	mov    %rdi,%rbx
  4017b5:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
  4017ba:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  4017c0:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  4017c4:	eb 17                	jmp    4017dd <rio_readlineb+0x40>
  4017c6:	e8 85 f3 ff ff       	callq  400b50 <__errno_location@plt>
  4017cb:	83 38 04             	cmpl   $0x4,(%rax)
  4017ce:	74 0d                	je     4017dd <rio_readlineb+0x40>
  4017d0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4017d7:	eb 28                	jmp    401801 <rio_readlineb+0x64>
  4017d9:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4017dd:	8b 43 04             	mov    0x4(%rbx),%eax
  4017e0:	85 c0                	test   %eax,%eax
  4017e2:	7f 2e                	jg     401812 <rio_readlineb+0x75>
  4017e4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4017e9:	4c 89 e6             	mov    %r12,%rsi
  4017ec:	8b 3b                	mov    (%rbx),%edi
  4017ee:	e8 cd f3 ff ff       	callq  400bc0 <read@plt>
  4017f3:	89 43 04             	mov    %eax,0x4(%rbx)
  4017f6:	85 c0                	test   %eax,%eax
  4017f8:	78 cc                	js     4017c6 <rio_readlineb+0x29>
  4017fa:	75 dd                	jne    4017d9 <rio_readlineb+0x3c>
  4017fc:	b8 00 00 00 00       	mov    $0x0,%eax
  401801:	85 c0                	test   %eax,%eax
  401803:	75 52                	jne    401857 <rio_readlineb+0xba>
  401805:	b8 00 00 00 00       	mov    $0x0,%eax
  40180a:	41 83 fd 01          	cmp    $0x1,%r13d
  40180e:	75 2f                	jne    40183f <rio_readlineb+0xa2>
  401810:	eb 34                	jmp    401846 <rio_readlineb+0xa9>
  401812:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  401816:	0f b6 0a             	movzbl (%rdx),%ecx
  401819:	48 83 c2 01          	add    $0x1,%rdx
  40181d:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  401821:	83 e8 01             	sub    $0x1,%eax
  401824:	89 43 04             	mov    %eax,0x4(%rbx)
  401827:	48 83 c5 01          	add    $0x1,%rbp
  40182b:	88 4d ff             	mov    %cl,-0x1(%rbp)
  40182e:	80 f9 0a             	cmp    $0xa,%cl
  401831:	74 0c                	je     40183f <rio_readlineb+0xa2>
  401833:	41 83 c5 01          	add    $0x1,%r13d
  401837:	4c 39 f5             	cmp    %r14,%rbp
  40183a:	75 a1                	jne    4017dd <rio_readlineb+0x40>
  40183c:	4c 89 f5             	mov    %r14,%rbp
  40183f:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  401843:	49 63 c5             	movslq %r13d,%rax
  401846:	5b                   	pop    %rbx
  401847:	5d                   	pop    %rbp
  401848:	41 5c                	pop    %r12
  40184a:	41 5d                	pop    %r13
  40184c:	41 5e                	pop    %r14
  40184e:	c3                   	retq   
  40184f:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  401855:	eb e8                	jmp    40183f <rio_readlineb+0xa2>
  401857:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40185e:	eb e6                	jmp    401846 <rio_readlineb+0xa9>

0000000000401860 <submitr>:
  401860:	41 57                	push   %r15
  401862:	41 56                	push   %r14
  401864:	41 55                	push   %r13
  401866:	41 54                	push   %r12
  401868:	55                   	push   %rbp
  401869:	53                   	push   %rbx
  40186a:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  401871:	48 89 fd             	mov    %rdi,%rbp
  401874:	41 89 f5             	mov    %esi,%r13d
  401877:	48 89 14 24          	mov    %rdx,(%rsp)
  40187b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  401880:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  401885:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  40188a:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  401891:	00 
  401892:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
  401899:	00 
  40189a:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
  4018a1:	00 00 00 00 
  4018a5:	ba 00 00 00 00       	mov    $0x0,%edx
  4018aa:	be 01 00 00 00       	mov    $0x1,%esi
  4018af:	bf 02 00 00 00       	mov    $0x2,%edi
  4018b4:	e8 07 f4 ff ff       	callq  400cc0 <socket@plt>
  4018b9:	85 c0                	test   %eax,%eax
  4018bb:	0f 88 35 01 00 00    	js     4019f6 <submitr+0x196>
  4018c1:	41 89 c4             	mov    %eax,%r12d
  4018c4:	48 89 ef             	mov    %rbp,%rdi
  4018c7:	e8 24 f3 ff ff       	callq  400bf0 <gethostbyname@plt>
  4018cc:	48 85 c0             	test   %rax,%rax
  4018cf:	0f 84 71 01 00 00    	je     401a46 <submitr+0x1e6>
  4018d5:	48 8d b4 24 50 a0 00 	lea    0xa050(%rsp),%rsi
  4018dc:	00 
  4018dd:	48 c7 84 24 52 a0 00 	movq   $0x0,0xa052(%rsp)
  4018e4:	00 00 00 00 00 
  4018e9:	c7 84 24 5a a0 00 00 	movl   $0x0,0xa05a(%rsp)
  4018f0:	00 00 00 00 
  4018f4:	66 c7 84 24 5e a0 00 	movw   $0x0,0xa05e(%rsp)
  4018fb:	00 00 00 
  4018fe:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
  401905:	00 02 00 
  401908:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40190c:	48 8b 40 18          	mov    0x18(%rax),%rax
  401910:	48 8d 7e 04          	lea    0x4(%rsi),%rdi
  401914:	48 8b 30             	mov    (%rax),%rsi
  401917:	e8 24 f3 ff ff       	callq  400c40 <memmove@plt>
  40191c:	66 41 c1 c5 08       	rol    $0x8,%r13w
  401921:	66 44 89 ac 24 52 a0 	mov    %r13w,0xa052(%rsp)
  401928:	00 00 
  40192a:	ba 10 00 00 00       	mov    $0x10,%edx
  40192f:	48 8d b4 24 50 a0 00 	lea    0xa050(%rsp),%rsi
  401936:	00 
  401937:	44 89 e7             	mov    %r12d,%edi
  40193a:	e8 51 f3 ff ff       	callq  400c90 <connect@plt>
  40193f:	85 c0                	test   %eax,%eax
  401941:	0f 88 6a 01 00 00    	js     401ab1 <submitr+0x251>
  401947:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  40194e:	b8 00 00 00 00       	mov    $0x0,%eax
  401953:	4c 89 c9             	mov    %r9,%rcx
  401956:	48 89 df             	mov    %rbx,%rdi
  401959:	f2 ae                	repnz scas %es:(%rdi),%al
  40195b:	48 89 ce             	mov    %rcx,%rsi
  40195e:	48 f7 d6             	not    %rsi
  401961:	4c 89 c9             	mov    %r9,%rcx
  401964:	48 8b 3c 24          	mov    (%rsp),%rdi
  401968:	f2 ae                	repnz scas %es:(%rdi),%al
  40196a:	49 89 c8             	mov    %rcx,%r8
  40196d:	4c 89 c9             	mov    %r9,%rcx
  401970:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401975:	f2 ae                	repnz scas %es:(%rdi),%al
  401977:	48 f7 d1             	not    %rcx
  40197a:	48 89 ca             	mov    %rcx,%rdx
  40197d:	4c 89 c9             	mov    %r9,%rcx
  401980:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401985:	f2 ae                	repnz scas %es:(%rdi),%al
  401987:	4c 29 c2             	sub    %r8,%rdx
  40198a:	48 29 ca             	sub    %rcx,%rdx
  40198d:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401992:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
  401997:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40199d:	0f 87 6b 01 00 00    	ja     401b0e <submitr+0x2ae>
  4019a3:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
  4019aa:	00 
  4019ab:	b9 00 04 00 00       	mov    $0x400,%ecx
  4019b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4019b5:	48 89 d7             	mov    %rdx,%rdi
  4019b8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4019bb:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4019c2:	48 89 df             	mov    %rbx,%rdi
  4019c5:	f2 ae                	repnz scas %es:(%rdi),%al
  4019c7:	48 89 ce             	mov    %rcx,%rsi
  4019ca:	48 f7 d6             	not    %rsi
  4019cd:	48 89 f1             	mov    %rsi,%rcx
  4019d0:	48 83 e9 01          	sub    $0x1,%rcx
  4019d4:	85 c9                	test   %ecx,%ecx
  4019d6:	0f 84 b8 04 00 00    	je     401e94 <submitr+0x634>
  4019dc:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4019df:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  4019e4:	48 89 d5             	mov    %rdx,%rbp
  4019e7:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
  4019ee:	00 20 00 
  4019f1:	e9 a5 01 00 00       	jmpq   401b9b <submitr+0x33b>
  4019f6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4019fd:	3a 20 43 
  401a00:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  401a07:	20 75 6e 
  401a0a:	49 89 07             	mov    %rax,(%r15)
  401a0d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401a11:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401a18:	74 6f 20 
  401a1b:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  401a22:	65 20 73 
  401a25:	49 89 47 10          	mov    %rax,0x10(%r15)
  401a29:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401a2d:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401a34:	65 
  401a35:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401a3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a41:	e9 dd 02 00 00       	jmpq   401d23 <submitr+0x4c3>
  401a46:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401a4d:	3a 20 44 
  401a50:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  401a57:	20 75 6e 
  401a5a:	49 89 07             	mov    %rax,(%r15)
  401a5d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401a61:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401a68:	74 6f 20 
  401a6b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  401a72:	76 65 20 
  401a75:	49 89 47 10          	mov    %rax,0x10(%r15)
  401a79:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401a7d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401a84:	72 20 61 
  401a87:	49 89 47 20          	mov    %rax,0x20(%r15)
  401a8b:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401a92:	65 
  401a93:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401a9a:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401a9f:	44 89 e7             	mov    %r12d,%edi
  401aa2:	e8 09 f1 ff ff       	callq  400bb0 <close@plt>
  401aa7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401aac:	e9 72 02 00 00       	jmpq   401d23 <submitr+0x4c3>
  401ab1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401ab8:	3a 20 55 
  401abb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  401ac2:	20 74 6f 
  401ac5:	49 89 07             	mov    %rax,(%r15)
  401ac8:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401acc:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401ad3:	65 63 74 
  401ad6:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  401add:	68 65 20 
  401ae0:	49 89 47 10          	mov    %rax,0x10(%r15)
  401ae4:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401ae8:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401aef:	76 
  401af0:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401af7:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401afc:	44 89 e7             	mov    %r12d,%edi
  401aff:	e8 ac f0 ff ff       	callq  400bb0 <close@plt>
  401b04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b09:	e9 15 02 00 00       	jmpq   401d23 <submitr+0x4c3>
  401b0e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401b15:	3a 20 52 
  401b18:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  401b1f:	20 73 74 
  401b22:	49 89 07             	mov    %rax,(%r15)
  401b25:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401b29:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401b30:	74 6f 6f 
  401b33:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  401b3a:	65 2e 20 
  401b3d:	49 89 47 10          	mov    %rax,0x10(%r15)
  401b41:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401b45:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401b4c:	61 73 65 
  401b4f:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  401b56:	49 54 52 
  401b59:	49 89 47 20          	mov    %rax,0x20(%r15)
  401b5d:	49 89 57 28          	mov    %rdx,0x28(%r15)
  401b61:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401b68:	55 46 00 
  401b6b:	49 89 47 30          	mov    %rax,0x30(%r15)
  401b6f:	44 89 e7             	mov    %r12d,%edi
  401b72:	e8 39 f0 ff ff       	callq  400bb0 <close@plt>
  401b77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b7c:	e9 a2 01 00 00       	jmpq   401d23 <submitr+0x4c3>
  401b81:	49 0f a3 c5          	bt     %rax,%r13
  401b85:	73 1e                	jae    401ba5 <submitr+0x345>
  401b87:	88 55 00             	mov    %dl,0x0(%rbp)
  401b8a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401b8e:	48 83 c3 01          	add    $0x1,%rbx
  401b92:	4c 39 f3             	cmp    %r14,%rbx
  401b95:	0f 84 f9 02 00 00    	je     401e94 <submitr+0x634>
  401b9b:	0f b6 13             	movzbl (%rbx),%edx
  401b9e:	8d 42 d6             	lea    -0x2a(%rdx),%eax
  401ba1:	3c 35                	cmp    $0x35,%al
  401ba3:	76 dc                	jbe    401b81 <submitr+0x321>
  401ba5:	89 d0                	mov    %edx,%eax
  401ba7:	83 e0 df             	and    $0xffffffdf,%eax
  401baa:	83 e8 41             	sub    $0x41,%eax
  401bad:	3c 19                	cmp    $0x19,%al
  401baf:	76 d6                	jbe    401b87 <submitr+0x327>
  401bb1:	80 fa 20             	cmp    $0x20,%dl
  401bb4:	74 45                	je     401bfb <submitr+0x39b>
  401bb6:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401bb9:	3c 5f                	cmp    $0x5f,%al
  401bbb:	76 09                	jbe    401bc6 <submitr+0x366>
  401bbd:	80 fa 09             	cmp    $0x9,%dl
  401bc0:	0f 85 41 02 00 00    	jne    401e07 <submitr+0x5a7>
  401bc6:	0f b6 d2             	movzbl %dl,%edx
  401bc9:	be 40 34 40 00       	mov    $0x403440,%esi
  401bce:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
  401bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd8:	e8 93 f0 ff ff       	callq  400c70 <sprintf@plt>
  401bdd:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
  401be2:	88 45 00             	mov    %al,0x0(%rbp)
  401be5:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
  401bea:	88 45 01             	mov    %al,0x1(%rbp)
  401bed:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
  401bf2:	88 45 02             	mov    %al,0x2(%rbp)
  401bf5:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401bf9:	eb 93                	jmp    401b8e <submitr+0x32e>
  401bfb:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401bff:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401c03:	eb 89                	jmp    401b8e <submitr+0x32e>
  401c05:	48 01 c5             	add    %rax,%rbp
  401c08:	48 29 c3             	sub    %rax,%rbx
  401c0b:	0f 84 f1 02 00 00    	je     401f02 <submitr+0x6a2>
  401c11:	48 89 da             	mov    %rbx,%rdx
  401c14:	48 89 ee             	mov    %rbp,%rsi
  401c17:	44 89 e7             	mov    %r12d,%edi
  401c1a:	e8 61 ef ff ff       	callq  400b80 <write@plt>
  401c1f:	48 85 c0             	test   %rax,%rax
  401c22:	7f e1                	jg     401c05 <submitr+0x3a5>
  401c24:	e8 27 ef ff ff       	callq  400b50 <__errno_location@plt>
  401c29:	83 38 04             	cmpl   $0x4,(%rax)
  401c2c:	0f 85 76 01 00 00    	jne    401da8 <submitr+0x548>
  401c32:	4c 89 e8             	mov    %r13,%rax
  401c35:	eb ce                	jmp    401c05 <submitr+0x3a5>
  401c37:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401c3e:	3a 20 43 
  401c41:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  401c48:	20 75 6e 
  401c4b:	49 89 07             	mov    %rax,(%r15)
  401c4e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401c52:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401c59:	74 6f 20 
  401c5c:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  401c63:	66 69 72 
  401c66:	49 89 47 10          	mov    %rax,0x10(%r15)
  401c6a:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401c6e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401c75:	61 64 65 
  401c78:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
  401c7f:	6d 20 73 
  401c82:	49 89 47 20          	mov    %rax,0x20(%r15)
  401c86:	49 89 57 28          	mov    %rdx,0x28(%r15)
  401c8a:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  401c91:	65 
  401c92:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  401c99:	44 89 e7             	mov    %r12d,%edi
  401c9c:	e8 0f ef ff ff       	callq  400bb0 <close@plt>
  401ca1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ca6:	eb 7b                	jmp    401d23 <submitr+0x4c3>
  401ca8:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
  401cad:	be 90 33 40 00       	mov    $0x403390,%esi
  401cb2:	4c 89 ff             	mov    %r15,%rdi
  401cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cba:	e8 b1 ef ff ff       	callq  400c70 <sprintf@plt>
  401cbf:	44 89 e7             	mov    %r12d,%edi
  401cc2:	e8 e9 ee ff ff       	callq  400bb0 <close@plt>
  401cc7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ccc:	eb 55                	jmp    401d23 <submitr+0x4c3>
  401cce:	ba 00 20 00 00       	mov    $0x2000,%edx
  401cd3:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  401cda:	00 
  401cdb:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  401ce2:	00 
  401ce3:	e8 b5 fa ff ff       	callq  40179d <rio_readlineb>
  401ce8:	48 85 c0             	test   %rax,%rax
  401ceb:	7e 48                	jle    401d35 <submitr+0x4d5>
  401ced:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  401cf4:	00 
  401cf5:	4c 89 ff             	mov    %r15,%rdi
  401cf8:	e8 63 ee ff ff       	callq  400b60 <strcpy@plt>
  401cfd:	44 89 e7             	mov    %r12d,%edi
  401d00:	e8 ab ee ff ff       	callq  400bb0 <close@plt>
  401d05:	bf 5b 34 40 00       	mov    $0x40345b,%edi
  401d0a:	b9 03 00 00 00       	mov    $0x3,%ecx
  401d0f:	4c 89 fe             	mov    %r15,%rsi
  401d12:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  401d14:	0f 97 c0             	seta   %al
  401d17:	1c 00                	sbb    $0x0,%al
  401d19:	84 c0                	test   %al,%al
  401d1b:	0f 95 c0             	setne  %al
  401d1e:	0f b6 c0             	movzbl %al,%eax
  401d21:	f7 d8                	neg    %eax
  401d23:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  401d2a:	5b                   	pop    %rbx
  401d2b:	5d                   	pop    %rbp
  401d2c:	41 5c                	pop    %r12
  401d2e:	41 5d                	pop    %r13
  401d30:	41 5e                	pop    %r14
  401d32:	41 5f                	pop    %r15
  401d34:	c3                   	retq   
  401d35:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401d3c:	3a 20 43 
  401d3f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  401d46:	20 75 6e 
  401d49:	49 89 07             	mov    %rax,(%r15)
  401d4c:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401d50:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401d57:	74 6f 20 
  401d5a:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  401d61:	73 74 61 
  401d64:	49 89 47 10          	mov    %rax,0x10(%r15)
  401d68:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401d6c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  401d73:	65 73 73 
  401d76:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  401d7d:	72 6f 6d 
  401d80:	49 89 47 20          	mov    %rax,0x20(%r15)
  401d84:	49 89 57 28          	mov    %rdx,0x28(%r15)
  401d88:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  401d8f:	65 72 00 
  401d92:	49 89 47 30          	mov    %rax,0x30(%r15)
  401d96:	44 89 e7             	mov    %r12d,%edi
  401d99:	e8 12 ee ff ff       	callq  400bb0 <close@plt>
  401d9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401da3:	e9 7b ff ff ff       	jmpq   401d23 <submitr+0x4c3>
  401da8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401daf:	3a 20 43 
  401db2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  401db9:	20 75 6e 
  401dbc:	49 89 07             	mov    %rax,(%r15)
  401dbf:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401dc3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401dca:	74 6f 20 
  401dcd:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  401dd4:	20 74 6f 
  401dd7:	49 89 47 10          	mov    %rax,0x10(%r15)
  401ddb:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401ddf:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401de6:	73 65 72 
  401de9:	49 89 47 20          	mov    %rax,0x20(%r15)
  401ded:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  401df4:	00 
  401df5:	44 89 e7             	mov    %r12d,%edi
  401df8:	e8 b3 ed ff ff       	callq  400bb0 <close@plt>
  401dfd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e02:	e9 1c ff ff ff       	jmpq   401d23 <submitr+0x4c3>
  401e07:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401e0e:	3a 20 52 
  401e11:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  401e18:	20 73 74 
  401e1b:	49 89 07             	mov    %rax,(%r15)
  401e1e:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401e22:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  401e29:	63 6f 6e 
  401e2c:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  401e33:	20 61 6e 
  401e36:	49 89 47 10          	mov    %rax,0x10(%r15)
  401e3a:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401e3e:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  401e45:	67 61 6c 
  401e48:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  401e4f:	6e 70 72 
  401e52:	49 89 47 20          	mov    %rax,0x20(%r15)
  401e56:	49 89 57 28          	mov    %rdx,0x28(%r15)
  401e5a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  401e61:	6c 65 20 
  401e64:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  401e6b:	63 74 65 
  401e6e:	49 89 47 30          	mov    %rax,0x30(%r15)
  401e72:	49 89 57 38          	mov    %rdx,0x38(%r15)
  401e76:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  401e7d:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  401e82:	44 89 e7             	mov    %r12d,%edi
  401e85:	e8 26 ed ff ff       	callq  400bb0 <close@plt>
  401e8a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e8f:	e9 8f fe ff ff       	jmpq   401d23 <submitr+0x4c3>
  401e94:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
  401e9b:	00 
  401e9c:	48 83 ec 08          	sub    $0x8,%rsp
  401ea0:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  401ea7:	00 
  401ea8:	50                   	push   %rax
  401ea9:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
  401eae:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  401eb3:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  401eb8:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  401ebd:	be c0 33 40 00       	mov    $0x4033c0,%esi
  401ec2:	48 89 df             	mov    %rbx,%rdi
  401ec5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eca:	e8 a1 ed ff ff       	callq  400c70 <sprintf@plt>
  401ecf:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401ed6:	b8 00 00 00 00       	mov    $0x0,%eax
  401edb:	48 89 df             	mov    %rbx,%rdi
  401ede:	f2 ae                	repnz scas %es:(%rdi),%al
  401ee0:	48 f7 d1             	not    %rcx
  401ee3:	48 83 c4 10          	add    $0x10,%rsp
  401ee7:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
  401eee:	00 
  401eef:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401ef5:	48 83 e9 01          	sub    $0x1,%rcx
  401ef9:	48 89 cb             	mov    %rcx,%rbx
  401efc:	0f 85 0f fd ff ff    	jne    401c11 <submitr+0x3b1>
  401f02:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
  401f09:	00 
  401f0a:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
  401f11:	00 00 00 00 
  401f15:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
  401f1c:	00 
  401f1d:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
  401f24:	00 
  401f25:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f2a:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  401f31:	00 
  401f32:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  401f39:	00 
  401f3a:	e8 5e f8 ff ff       	callq  40179d <rio_readlineb>
  401f3f:	48 85 c0             	test   %rax,%rax
  401f42:	0f 8e ef fc ff ff    	jle    401c37 <submitr+0x3d7>
  401f48:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  401f4d:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
  401f54:	00 
  401f55:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
  401f5c:	00 
  401f5d:	be 47 34 40 00       	mov    $0x403447,%esi
  401f62:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
  401f69:	00 
  401f6a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6f:	e8 bc ec ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401f74:	8b 94 24 3c 20 00 00 	mov    0x203c(%rsp),%edx
  401f7b:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  401f81:	0f 85 21 fd ff ff    	jne    401ca8 <submitr+0x448>
  401f87:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
  401f8e:	00 
  401f8f:	bf 58 34 40 00       	mov    $0x403458,%edi
  401f94:	b9 03 00 00 00       	mov    $0x3,%ecx
  401f99:	48 89 de             	mov    %rbx,%rsi
  401f9c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  401f9e:	0f 97 c0             	seta   %al
  401fa1:	1c 00                	sbb    $0x0,%al
  401fa3:	84 c0                	test   %al,%al
  401fa5:	0f 84 23 fd ff ff    	je     401cce <submitr+0x46e>
  401fab:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fb0:	48 89 de             	mov    %rbx,%rsi
  401fb3:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  401fba:	00 
  401fbb:	e8 dd f7 ff ff       	callq  40179d <rio_readlineb>
  401fc0:	48 85 c0             	test   %rax,%rax
  401fc3:	7f ca                	jg     401f8f <submitr+0x72f>
  401fc5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401fcc:	3a 20 43 
  401fcf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  401fd6:	20 75 6e 
  401fd9:	49 89 07             	mov    %rax,(%r15)
  401fdc:	49 89 57 08          	mov    %rdx,0x8(%r15)
  401fe0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401fe7:	74 6f 20 
  401fea:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  401ff1:	68 65 61 
  401ff4:	49 89 47 10          	mov    %rax,0x10(%r15)
  401ff8:	49 89 57 18          	mov    %rdx,0x18(%r15)
  401ffc:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402003:	66 72 6f 
  402006:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
  40200d:	76 65 72 
  402010:	49 89 47 20          	mov    %rax,0x20(%r15)
  402014:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402018:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  40201d:	44 89 e7             	mov    %r12d,%edi
  402020:	e8 8b eb ff ff       	callq  400bb0 <close@plt>
  402025:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40202a:	e9 f4 fc ff ff       	jmpq   401d23 <submitr+0x4c3>

000000000040202f <init_timeout>:
  40202f:	85 ff                	test   %edi,%edi
  402031:	74 23                	je     402056 <init_timeout+0x27>
  402033:	53                   	push   %rbx
  402034:	89 fb                	mov    %edi,%ebx
  402036:	be 74 17 40 00       	mov    $0x401774,%esi
  40203b:	bf 0e 00 00 00       	mov    $0xe,%edi
  402040:	e8 9b eb ff ff       	callq  400be0 <signal@plt>
  402045:	85 db                	test   %ebx,%ebx
  402047:	bf 00 00 00 00       	mov    $0x0,%edi
  40204c:	0f 49 fb             	cmovns %ebx,%edi
  40204f:	e8 4c eb ff ff       	callq  400ba0 <alarm@plt>
  402054:	5b                   	pop    %rbx
  402055:	c3                   	retq   
  402056:	c3                   	retq   

0000000000402057 <init_driver>:
  402057:	55                   	push   %rbp
  402058:	53                   	push   %rbx
  402059:	48 83 ec 18          	sub    $0x18,%rsp
  40205d:	48 89 fd             	mov    %rdi,%rbp
  402060:	be 01 00 00 00       	mov    $0x1,%esi
  402065:	bf 0d 00 00 00       	mov    $0xd,%edi
  40206a:	e8 71 eb ff ff       	callq  400be0 <signal@plt>
  40206f:	be 01 00 00 00       	mov    $0x1,%esi
  402074:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402079:	e8 62 eb ff ff       	callq  400be0 <signal@plt>
  40207e:	be 01 00 00 00       	mov    $0x1,%esi
  402083:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402088:	e8 53 eb ff ff       	callq  400be0 <signal@plt>
  40208d:	ba 00 00 00 00       	mov    $0x0,%edx
  402092:	be 01 00 00 00       	mov    $0x1,%esi
  402097:	bf 02 00 00 00       	mov    $0x2,%edi
  40209c:	e8 1f ec ff ff       	callq  400cc0 <socket@plt>
  4020a1:	85 c0                	test   %eax,%eax
  4020a3:	0f 88 83 00 00 00    	js     40212c <init_driver+0xd5>
  4020a9:	89 c3                	mov    %eax,%ebx
  4020ab:	bf 50 29 40 00       	mov    $0x402950,%edi
  4020b0:	e8 3b eb ff ff       	callq  400bf0 <gethostbyname@plt>
  4020b5:	48 85 c0             	test   %rax,%rax
  4020b8:	0f 84 ba 00 00 00    	je     402178 <init_driver+0x121>
  4020be:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  4020c5:	00 00 
  4020c7:	c7 44 24 0a 00 00 00 	movl   $0x0,0xa(%rsp)
  4020ce:	00 
  4020cf:	66 c7 44 24 0e 00 00 	movw   $0x0,0xe(%rsp)
  4020d6:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4020dc:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4020e0:	48 8b 40 18          	mov    0x18(%rax),%rax
  4020e4:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4020e9:	48 8b 30             	mov    (%rax),%rsi
  4020ec:	e8 4f eb ff ff       	callq  400c40 <memmove@plt>
  4020f1:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
  4020f8:	ba 10 00 00 00       	mov    $0x10,%edx
  4020fd:	48 89 e6             	mov    %rsp,%rsi
  402100:	89 df                	mov    %ebx,%edi
  402102:	e8 89 eb ff ff       	callq  400c90 <connect@plt>
  402107:	85 c0                	test   %eax,%eax
  402109:	0f 88 d1 00 00 00    	js     4021e0 <init_driver+0x189>
  40210f:	89 df                	mov    %ebx,%edi
  402111:	e8 9a ea ff ff       	callq  400bb0 <close@plt>
  402116:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40211c:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402120:	b8 00 00 00 00       	mov    $0x0,%eax
  402125:	48 83 c4 18          	add    $0x18,%rsp
  402129:	5b                   	pop    %rbx
  40212a:	5d                   	pop    %rbp
  40212b:	c3                   	retq   
  40212c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402133:	3a 20 43 
  402136:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40213d:	20 75 6e 
  402140:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402144:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402148:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40214f:	74 6f 20 
  402152:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402159:	65 20 73 
  40215c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402160:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402164:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40216b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402171:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402176:	eb ad                	jmp    402125 <init_driver+0xce>
  402178:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40217f:	3a 20 44 
  402182:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402189:	20 75 6e 
  40218c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402190:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402194:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40219b:	74 6f 20 
  40219e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4021a5:	76 65 20 
  4021a8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4021ac:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4021b0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4021b7:	72 20 61 
  4021ba:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4021be:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4021c5:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4021cb:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4021cf:	89 df                	mov    %ebx,%edi
  4021d1:	e8 da e9 ff ff       	callq  400bb0 <close@plt>
  4021d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021db:	e9 45 ff ff ff       	jmpq   402125 <init_driver+0xce>
  4021e0:	ba 50 29 40 00       	mov    $0x402950,%edx
  4021e5:	be 18 34 40 00       	mov    $0x403418,%esi
  4021ea:	48 89 ef             	mov    %rbp,%rdi
  4021ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f2:	e8 79 ea ff ff       	callq  400c70 <sprintf@plt>
  4021f7:	89 df                	mov    %ebx,%edi
  4021f9:	e8 b2 e9 ff ff       	callq  400bb0 <close@plt>
  4021fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402203:	e9 1d ff ff ff       	jmpq   402125 <init_driver+0xce>

0000000000402208 <driver_post>:
  402208:	53                   	push   %rbx
  402209:	4c 89 c3             	mov    %r8,%rbx
  40220c:	85 c9                	test   %ecx,%ecx
  40220e:	75 17                	jne    402227 <driver_post+0x1f>
  402210:	48 85 ff             	test   %rdi,%rdi
  402213:	74 05                	je     40221a <driver_post+0x12>
  402215:	80 3f 00             	cmpb   $0x0,(%rdi)
  402218:	75 2f                	jne    402249 <driver_post+0x41>
  40221a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40221f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402223:	89 c8                	mov    %ecx,%eax
  402225:	5b                   	pop    %rbx
  402226:	c3                   	retq   
  402227:	48 89 d6             	mov    %rdx,%rsi
  40222a:	bf 5e 34 40 00       	mov    $0x40345e,%edi
  40222f:	b8 00 00 00 00       	mov    $0x0,%eax
  402234:	e8 57 e9 ff ff       	callq  400b90 <printf@plt>
  402239:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40223e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402242:	b8 00 00 00 00       	mov    $0x0,%eax
  402247:	eb dc                	jmp    402225 <driver_post+0x1d>
  402249:	41 50                	push   %r8
  40224b:	52                   	push   %rdx
  40224c:	41 b9 75 34 40 00    	mov    $0x403475,%r9d
  402252:	49 89 f0             	mov    %rsi,%r8
  402255:	48 89 f9             	mov    %rdi,%rcx
  402258:	ba 79 34 40 00       	mov    $0x403479,%edx
  40225d:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  402262:	bf 50 29 40 00       	mov    $0x402950,%edi
  402267:	e8 f4 f5 ff ff       	callq  401860 <submitr>
  40226c:	48 83 c4 10          	add    $0x10,%rsp
  402270:	eb b3                	jmp    402225 <driver_post+0x1d>
  402272:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402279:	00 00 00 
  40227c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402280 <__libc_csu_init>:
  402280:	f3 0f 1e fa          	endbr64 
  402284:	41 57                	push   %r15
  402286:	49 89 d7             	mov    %rdx,%r15
  402289:	41 56                	push   %r14
  40228b:	49 89 f6             	mov    %rsi,%r14
  40228e:	41 55                	push   %r13
  402290:	41 89 fd             	mov    %edi,%r13d
  402293:	41 54                	push   %r12
  402295:	4c 8d 25 64 1b 20 00 	lea    0x201b64(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  40229c:	55                   	push   %rbp
  40229d:	48 8d 2d 64 1b 20 00 	lea    0x201b64(%rip),%rbp        # 603e08 <__init_array_end>
  4022a4:	53                   	push   %rbx
  4022a5:	4c 29 e5             	sub    %r12,%rbp
  4022a8:	48 83 ec 08          	sub    $0x8,%rsp
  4022ac:	e8 4f e8 ff ff       	callq  400b00 <_init>
  4022b1:	48 c1 fd 03          	sar    $0x3,%rbp
  4022b5:	74 1f                	je     4022d6 <__libc_csu_init+0x56>
  4022b7:	31 db                	xor    %ebx,%ebx
  4022b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4022c0:	4c 89 fa             	mov    %r15,%rdx
  4022c3:	4c 89 f6             	mov    %r14,%rsi
  4022c6:	44 89 ef             	mov    %r13d,%edi
  4022c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4022cd:	48 83 c3 01          	add    $0x1,%rbx
  4022d1:	48 39 dd             	cmp    %rbx,%rbp
  4022d4:	75 ea                	jne    4022c0 <__libc_csu_init+0x40>
  4022d6:	48 83 c4 08          	add    $0x8,%rsp
  4022da:	5b                   	pop    %rbx
  4022db:	5d                   	pop    %rbp
  4022dc:	41 5c                	pop    %r12
  4022de:	41 5d                	pop    %r13
  4022e0:	41 5e                	pop    %r14
  4022e2:	41 5f                	pop    %r15
  4022e4:	c3                   	retq   

00000000004022e5 <.annobin___libc_csu_fini.start>:
  4022e5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4022ec:	00 00 00 00 

00000000004022f0 <__libc_csu_fini>:
  4022f0:	f3 0f 1e fa          	endbr64 
  4022f4:	c3                   	retq   

Disassembly of section .fini:

00000000004022f8 <_fini>:
  4022f8:	f3 0f 1e fa          	endbr64 
  4022fc:	48 83 ec 08          	sub    $0x8,%rsp
  402300:	48 83 c4 08          	add    $0x8,%rsp
  402304:	c3                   	retq   
