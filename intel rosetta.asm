
rosetta:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 92 2f 00 00    	push   0x2f92(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 93 2f 00 00 	bnd jmp *0x2f93(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 9d 2f 00 00 	bnd jmp *0x2f9d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <__stack_chk_fail@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3fc8 <__stack_chk_fail@GLIBC_2.4>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001070 <syscall@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 55 2f 00 00 	bnd jmp *0x2f55(%rip)        # 3fd0 <syscall@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	45 31 c0             	xor    %r8d,%r8d
    1096:	31 c9                	xor    %ecx,%ecx
    1098:	48 8d 3d f0 00 00 00 	lea    0xf0(%rip),%rdi        # 118f <main>
    109f:	ff 15 33 2f 00 00    	call   *0x2f33(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt    
    10a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    0x2f52(%rip),%rax        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 2f 00 00 	mov    0x2f16(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    0x2f22(%rip),%rsi        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d e5 2e 00 00 00 	cmpb   $0x0,0x2ee5(%rip)        # 4010 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 2e 00 00 	mov    0x2ec6(%rip),%rdi        # 4008 <__dso_handle>
    1142:	e8 09 ff ff ff       	call   1050 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 bd 2e 00 00 01 	movb   $0x1,0x2ebd(%rip)        # 4010 <__TMC_END__>
    1153:	5d                   	pop    %rbp
    1154:	c3                   	ret    
    1155:	0f 1f 00             	nopl   (%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001169 <returny_func>:
    1169:	f3 0f 1e fa          	endbr64 
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1175:	89 d0                	mov    %edx,%eax
    1177:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    117a:	89 f2                	mov    %esi,%edx
    117c:	88 55 f4             	mov    %dl,-0xc(%rbp)
    117f:	66 89 45 f0          	mov    %ax,-0x10(%rbp)
    1183:	0f be 55 f4          	movsbl -0xc(%rbp),%edx
    1187:	0f bf 45 f0          	movswl -0x10(%rbp),%eax
    118b:	01 d0                	add    %edx,%eax
    118d:	5d                   	pop    %rbp
    118e:	c3                   	ret    

000000000000118f <main>:
    118f:	f3 0f 1e fa          	endbr64 
    1193:	55                   	push   %rbp
    1194:	48 89 e5             	mov    %rsp,%rbp
    1197:	48 83 ec 40          	sub    $0x40,%rsp
    119b:	89 7d cc             	mov    %edi,-0x34(%rbp)
    119e:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    11a2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11a9:	00 00 
    11ab:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11af:	31 c0                	xor    %eax,%eax
    11b1:	48 b8 ce fa 0d f0 fe 	movabs $0xbabecafef00dface,%rax
    11b8:	ca be ba 
    11bb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    11bf:	c7 45 e0 0d f0 ad de 	movl   $0xdeadf00d,-0x20(%rbp)
    11c6:	c7 45 f2 6d 79 73 74 	movl   $0x7473796d,-0xe(%rbp)
    11cd:	66 c7 45 f6 72 00    	movw   $0x72,-0xa(%rbp)
    11d3:	c7 45 dc 39 05 00 00 	movl   $0x539,-0x24(%rbp)
    11da:	eb 09                	jmp    11e5 <main+0x56>
    11dc:	8b 45 dc             	mov    -0x24(%rbp),%eax
    11df:	83 e8 01             	sub    $0x1,%eax
    11e2:	89 45 dc             	mov    %eax,-0x24(%rbp)
    11e5:	8b 45 dc             	mov    -0x24(%rbp),%eax
    11e8:	85 c0                	test   %eax,%eax
    11ea:	75 f0                	jne    11dc <main+0x4d>
    11ec:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    11f0:	b9 37 13 03 00       	mov    $0x31337,%ecx
    11f5:	ba 69 00 00 00       	mov    $0x69,%edx
    11fa:	be 42 00 00 00       	mov    $0x42,%esi
    11ff:	48 89 c7             	mov    %rax,%rdi
    1202:	e8 62 ff ff ff       	call   1169 <returny_func>
    1207:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    120a:	b9 07 00 00 00       	mov    $0x7,%ecx
    120f:	48 8d 05 ee 0d 00 00 	lea    0xdee(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1216:	48 89 c2             	mov    %rax,%rdx
    1219:	be 01 00 00 00       	mov    $0x1,%esi
    121e:	bf 01 00 00 00       	mov    $0x1,%edi
    1223:	b8 00 00 00 00       	mov    $0x0,%eax
    1228:	e8 43 fe ff ff       	call   1070 <syscall@plt>
    122d:	b8 20 00 00 00       	mov    $0x20,%eax
    1232:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1236:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    123d:	00 00 
    123f:	74 05                	je     1246 <main+0xb7>
    1241:	e8 1a fe ff ff       	call   1060 <__stack_chk_fail@plt>
    1246:	c9                   	leave  
    1247:	c3                   	ret    

Disassembly of section .fini:

0000000000001248 <_fini>:
    1248:	f3 0f 1e fa          	endbr64 
    124c:	48 83 ec 08          	sub    $0x8,%rsp
    1250:	48 83 c4 08          	add    $0x8,%rsp
    1254:	c3                   	ret    
