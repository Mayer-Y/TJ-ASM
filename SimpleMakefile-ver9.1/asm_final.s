
final:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 9a 2f 00 00    	push   QWORD PTR [rip+0x2f9a]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 9c 2f 00 00    	jmp    QWORD PTR [rip+0x2f9c]        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <puts@plt>:
    1030:	ff 25 9a 2f 00 00    	jmp    QWORD PTR [rip+0x2f9a]        # 3fd0 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 b2 2f 00 00    	jmp    QWORD PTR [rip+0x2fb2]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	31 ed                	xor    ebp,ebp
    1056:	49 89 d1             	mov    r9,rdx
    1059:	5e                   	pop    rsi
    105a:	48 89 e2             	mov    rdx,rsp
    105d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1061:	50                   	push   rax
    1062:	54                   	push   rsp
    1063:	45 31 c0             	xor    r8d,r8d
    1066:	31 c9                	xor    ecx,ecx
    1068:	48 8d 3d ca 00 00 00 	lea    rdi,[rip+0xca]        # 1139 <main>
    106f:	ff 15 63 2f 00 00    	call   QWORD PTR [rip+0x2f63]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1075:	f4                   	hlt    
    1076:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    107d:	00 00 00 

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d 89 2f 00 00 	lea    rdi,[rip+0x2f89]        # 4010 <__TMC_END__>
    1087:	48 8d 05 82 2f 00 00 	lea    rax,[rip+0x2f82]        # 4010 <__TMC_END__>
    108e:	48 39 f8             	cmp    rax,rdi
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 46 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f46]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   rax,rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    rax
    10a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    rdi,[rip+0x2f59]        # 4010 <__TMC_END__>
    10b7:	48 8d 35 52 2f 00 00 	lea    rsi,[rip+0x2f52]        # 4010 <__TMC_END__>
    10be:	48 29 fe             	sub    rsi,rdi
    10c1:	48 89 f0             	mov    rax,rsi
    10c4:	48 c1 ee 3f          	shr    rsi,0x3f
    10c8:	48 c1 f8 03          	sar    rax,0x3
    10cc:	48 01 c6             	add    rsi,rax
    10cf:	48 d1 fe             	sar    rsi,1
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 15 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f15]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   rax,rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    rax
    10e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	80 3d 15 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f15],0x0        # 4010 <__TMC_END__>
    10fb:	75 2b                	jne    1128 <__do_global_dtors_aux+0x38>
    10fd:	55                   	push   rbp
    10fe:	48 83 3d f2 2e 00 00 	cmp    QWORD PTR [rip+0x2ef2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    rbp,rsp
    1109:	74 0c                	je     1117 <__do_global_dtors_aux+0x27>
    110b:	48 8b 3d f6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ef6]        # 4008 <__dso_handle>
    1112:	e8 29 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1117:	e8 64 ff ff ff       	call   1080 <deregister_tm_clones>
    111c:	c6 05 ed 2e 00 00 01 	mov    BYTE PTR [rip+0x2eed],0x1        # 4010 <__TMC_END__>
    1123:	5d                   	pop    rbp
    1124:	c3                   	ret    
    1125:	0f 1f 00             	nop    DWORD PTR [rax]
    1128:	c3                   	ret    
    1129:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001130 <frame_dummy>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	e9 77 ff ff ff       	jmp    10b0 <register_tm_clones>

0000000000001139 <main>:
    1139:	f3 0f 1e fa          	endbr64 
    113d:	55                   	push   rbp
    113e:	48 89 e5             	mov    rbp,rsp
    1141:	48 83 ec 50          	sub    rsp,0x50
    1145:	89 7d bc             	mov    DWORD PTR [rbp-0x44],edi
    1148:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
    114c:	b8 00 00 00 00       	mov    eax,0x0
    1151:	e8 29 01 00 00       	call   127f <call_function>
    1156:	48 8d 05 b3 0e 00 00 	lea    rax,[rip+0xeb3]        # 2010 <_IO_stdin_used+0x10>
    115d:	48 89 c7             	mov    rdi,rax
    1160:	e8 13 02 00 00       	call   1378 <hello_world>
    1165:	6a 08                	push   0x8
    1167:	6a 07                	push   0x7
    1169:	41 b9 06 00 00 00    	mov    r9d,0x6
    116f:	41 b8 05 00 00 00    	mov    r8d,0x5
    1175:	b9 04 00 00 00       	mov    ecx,0x4
    117a:	ba 03 00 00 00       	mov    edx,0x3
    117f:	be 02 00 00 00       	mov    esi,0x2
    1184:	bf 01 00 00 00       	mov    edi,0x1
    1189:	e8 0b 01 00 00       	call   1299 <func1>
    118e:	48 83 c4 10          	add    rsp,0x10
    1192:	f2 0f 10 0d 86 0e 00 	movsd  xmm1,QWORD PTR [rip+0xe86]        # 2020 <_IO_stdin_used+0x20>
    1199:	00 
    119a:	f2 0f 10 05 86 0e 00 	movsd  xmm0,QWORD PTR [rip+0xe86]        # 2028 <_IO_stdin_used+0x28>
    11a1:	00 
    11a2:	f3 0f 10 2d 86 0e 00 	movss  xmm5,DWORD PTR [rip+0xe86]        # 2030 <_IO_stdin_used+0x30>
    11a9:	00 
    11aa:	f3 0f 10 25 82 0e 00 	movss  xmm4,DWORD PTR [rip+0xe82]        # 2034 <_IO_stdin_used+0x34>
    11b1:	00 
    11b2:	66 0f 28 d9          	movapd xmm3,xmm1
    11b6:	f3 0f 10 15 7a 0e 00 	movss  xmm2,DWORD PTR [rip+0xe7a]        # 2038 <_IO_stdin_used+0x38>
    11bd:	00 
    11be:	66 0f 28 c8          	movapd xmm1,xmm0
    11c2:	8b 05 74 0e 00 00    	mov    eax,DWORD PTR [rip+0xe74]        # 203c <_IO_stdin_used+0x3c>
    11c8:	66 0f 6e c0          	movd   xmm0,eax
    11cc:	e8 fa 00 00 00       	call   12cb <func2>
    11d1:	48 8b 05 50 0e 00 00 	mov    rax,QWORD PTR [rip+0xe50]        # 2028 <_IO_stdin_used+0x28>
    11d8:	f3 0f 10 15 50 0e 00 	movss  xmm2,DWORD PTR [rip+0xe50]        # 2030 <_IO_stdin_used+0x30>
    11df:	00 
    11e0:	ba 05 00 00 00       	mov    edx,0x5
    11e5:	f3 0f 10 0d 53 0e 00 	movss  xmm1,DWORD PTR [rip+0xe53]        # 2040 <_IO_stdin_used+0x40>
    11ec:	00 
    11ed:	be 03 00 00 00       	mov    esi,0x3
    11f2:	66 48 0f 6e c0       	movq   xmm0,rax
    11f7:	bf 01 00 00 00       	mov    edi,0x1
    11fc:	e8 06 01 00 00       	call   1307 <func3>
    1201:	c7 45 c0 01 00 00 00 	mov    DWORD PTR [rbp-0x40],0x1
    1208:	c7 45 c4 02 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x2
    120f:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
    1212:	8b 55 c4             	mov    edx,DWORD PTR [rbp-0x3c]
    1215:	66 0f 6e c2          	movd   xmm0,edx
    1219:	66 0f 6e f0          	movd   xmm6,eax
    121d:	66 0f 62 c6          	punpckldq xmm0,xmm6
    1221:	90                   	nop
    1222:	66 0f d6 45 c8       	movq   QWORD PTR [rbp-0x38],xmm0
    1227:	0f 28 05 22 0e 00 00 	movaps xmm0,XMMWORD PTR [rip+0xe22]        # 2050 <_IO_stdin_used+0x50>
    122e:	0f 29 45 d0          	movaps XMMWORD PTR [rbp-0x30],xmm0
    1232:	0f 28 05 27 0e 00 00 	movaps xmm0,XMMWORD PTR [rip+0xe27]        # 2060 <_IO_stdin_used+0x60>
    1239:	0f 29 45 e0          	movaps XMMWORD PTR [rbp-0x20],xmm0
    123d:	0f 28 05 2c 0e 00 00 	movaps xmm0,XMMWORD PTR [rip+0xe2c]        # 2070 <_IO_stdin_used+0x70>
    1244:	0f 29 45 f0          	movaps XMMWORD PTR [rbp-0x10],xmm0
    1248:	0f 28 55 f0          	movaps xmm2,XMMWORD PTR [rbp-0x10]
    124c:	0f 28 4d e0          	movaps xmm1,XMMWORD PTR [rbp-0x20]
    1250:	0f 28 45 d0          	movaps xmm0,XMMWORD PTR [rbp-0x30]
    1254:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    1258:	0f 28 e2             	movaps xmm4,xmm2
    125b:	0f 28 d9             	movaps xmm3,xmm1
    125e:	f3 0f 10 15 da 0d 00 	movss  xmm2,DWORD PTR [rip+0xdda]        # 2040 <_IO_stdin_used+0x40>
    1265:	00 
    1266:	bf 03 00 00 00       	mov    edi,0x3
    126b:	0f 28 c8             	movaps xmm1,xmm0
    126e:	66 48 0f 6e c0       	movq   xmm0,rax
    1273:	e8 c5 00 00 00       	call   133d <func4>
    1278:	b8 00 00 00 00       	mov    eax,0x0
    127d:	c9                   	leave  
    127e:	c3                   	ret    

000000000000127f <call_function>:
    127f:	f3 0f 1e fa          	endbr64 
    1283:	55                   	push   rbp
    1284:	48 89 e5             	mov    rbp,rsp
    1287:	48 8d 05 f2 0d 00 00 	lea    rax,[rip+0xdf2]        # 2080 <_IO_stdin_used+0x80>
    128e:	48 89 c7             	mov    rdi,rax
    1291:	e8 9a fd ff ff       	call   1030 <puts@plt>
    1296:	90                   	nop
    1297:	5d                   	pop    rbp
    1298:	c3                   	ret    

0000000000001299 <func1>:
    1299:	f3 0f 1e fa          	endbr64 
    129d:	55                   	push   rbp
    129e:	48 89 e5             	mov    rbp,rsp
    12a1:	48 83 ec 20          	sub    rsp,0x20
    12a5:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    12a8:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    12ab:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
    12ae:	89 4d f0             	mov    DWORD PTR [rbp-0x10],ecx
    12b1:	44 89 45 ec          	mov    DWORD PTR [rbp-0x14],r8d
    12b5:	44 89 4d e8          	mov    DWORD PTR [rbp-0x18],r9d
    12b9:	48 8d 05 cd 0d 00 00 	lea    rax,[rip+0xdcd]        # 208d <_IO_stdin_used+0x8d>
    12c0:	48 89 c7             	mov    rdi,rax
    12c3:	e8 68 fd ff ff       	call   1030 <puts@plt>
    12c8:	90                   	nop
    12c9:	c9                   	leave  
    12ca:	c3                   	ret    

00000000000012cb <func2>:
    12cb:	f3 0f 1e fa          	endbr64 
    12cf:	55                   	push   rbp
    12d0:	48 89 e5             	mov    rbp,rsp
    12d3:	48 83 ec 20          	sub    rsp,0x20
    12d7:	f3 0f 11 45 fc       	movss  DWORD PTR [rbp-0x4],xmm0
    12dc:	f2 0f 11 4d f0       	movsd  QWORD PTR [rbp-0x10],xmm1
    12e1:	f3 0f 11 55 f8       	movss  DWORD PTR [rbp-0x8],xmm2
    12e6:	f2 0f 11 5d e8       	movsd  QWORD PTR [rbp-0x18],xmm3
    12eb:	f3 0f 11 65 e4       	movss  DWORD PTR [rbp-0x1c],xmm4
    12f0:	f3 0f 11 6d e0       	movss  DWORD PTR [rbp-0x20],xmm5
    12f5:	48 8d 05 98 0d 00 00 	lea    rax,[rip+0xd98]        # 2094 <_IO_stdin_used+0x94>
    12fc:	48 89 c7             	mov    rdi,rax
    12ff:	e8 2c fd ff ff       	call   1030 <puts@plt>
    1304:	90                   	nop
    1305:	c9                   	leave  
    1306:	c3                   	ret    

0000000000001307 <func3>:
    1307:	f3 0f 1e fa          	endbr64 
    130b:	55                   	push   rbp
    130c:	48 89 e5             	mov    rbp,rsp
    130f:	48 83 ec 20          	sub    rsp,0x20
    1313:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1316:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
    131b:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    131e:	f3 0f 11 4d ec       	movss  DWORD PTR [rbp-0x14],xmm1
    1323:	89 55 e8             	mov    DWORD PTR [rbp-0x18],edx
    1326:	f3 0f 11 55 e4       	movss  DWORD PTR [rbp-0x1c],xmm2
    132b:	48 8d 05 69 0d 00 00 	lea    rax,[rip+0xd69]        # 209b <_IO_stdin_used+0x9b>
    1332:	48 89 c7             	mov    rdi,rax
    1335:	e8 f6 fc ff ff       	call   1030 <puts@plt>
    133a:	90                   	nop
    133b:	c9                   	leave  
    133c:	c3                   	ret    

000000000000133d <func4>:
    133d:	f3 0f 1e fa          	endbr64 
    1341:	55                   	push   rbp
    1342:	48 89 e5             	mov    rbp,rsp
    1345:	48 83 ec 40          	sub    rsp,0x40
    1349:	66 0f d6 45 f8       	movq   QWORD PTR [rbp-0x8],xmm0
    134e:	0f 29 4d e0          	movaps XMMWORD PTR [rbp-0x20],xmm1
    1352:	89 7d f4             	mov    DWORD PTR [rbp-0xc],edi
    1355:	f3 0f 11 55 f0       	movss  DWORD PTR [rbp-0x10],xmm2
    135a:	0f 29 5d d0          	movaps XMMWORD PTR [rbp-0x30],xmm3
    135e:	0f 29 65 c0          	movaps XMMWORD PTR [rbp-0x40],xmm4
    1362:	48 8d 05 39 0d 00 00 	lea    rax,[rip+0xd39]        # 20a2 <_IO_stdin_used+0xa2>
    1369:	48 89 c7             	mov    rdi,rax
    136c:	e8 bf fc ff ff       	call   1030 <puts@plt>
    1371:	90                   	nop
    1372:	c9                   	leave  
    1373:	c3                   	ret    
    1374:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001378 <hello_world>:
    1378:	f3 0f 1e fa          	endbr64 
    137c:	55                   	push   rbp
    137d:	48 89 e5             	mov    rbp,rsp
    1380:	48 89 fe             	mov    rsi,rdi
    1383:	48 c7 c0 01 00 00 00 	mov    rax,0x1
    138a:	48 c7 c7 01 00 00 00 	mov    rdi,0x1
    1391:	48 c7 c2 0d 00 00 00 	mov    rdx,0xd
    1398:	0f 05                	syscall 
    139a:	48 c7 c0 01 00 00 00 	mov    rax,0x1
    13a1:	48 c7 c7 01 00 00 00 	mov    rdi,0x1
    13a8:	48 c7 c2 0f 00 00 00 	mov    rdx,0xf
    13af:	48 8d 35 f3 0c 00 00 	lea    rsi,[rip+0xcf3]        # 20a9 <msg1>
    13b6:	0f 05                	syscall 
    13b8:	48 c7 c0 01 00 00 00 	mov    rax,0x1
    13bf:	48 c7 c7 01 00 00 00 	mov    rdi,0x1
    13c6:	48 c7 c2 10 00 00 00 	mov    rdx,0x10
    13cd:	48 8d 35 e5 0c 00 00 	lea    rsi,[rip+0xce5]        # 20b9 <msg2>
    13d4:	0f 05                	syscall 
    13d6:	5d                   	pop    rbp
    13d7:	c3                   	ret    

Disassembly of section .fini:

00000000000013d8 <_fini>:
    13d8:	f3 0f 1e fa          	endbr64 
    13dc:	48 83 ec 08          	sub    rsp,0x8
    13e0:	48 83 c4 08          	add    rsp,0x8
    13e4:	c3                   	ret    
