Total: 838.71MB
ROUTINE ======================== main.(*Graph).buildAdjList
  393.66MB   393.66MB (flat, cum) 46.94% of Total
         .          .    10ca590: MOVQ GS:0x30, CX                        ;graph.go:102
         .          .    10ca599: LEAQ -0x60(SP), AX
         .          .    10ca59e: CMPQ 0x10(CX), AX
         .          .    10ca5a2: JBE 0x10caa4e
         .          .    10ca5a8: SUBQ $0xe0, SP
         .          .    10ca5af: MOVQ BP, 0xd8(SP)
         .          .    10ca5b7: LEAQ 0xd8(SP), BP
         .          .    10ca5bf: XORL AX, AX
         .          .    10ca5c1: XORL CX, CX
         .          .    10ca5c3: JMP 0x10ca86f                           ;graph.go:104
         .          .    10ca5c8: MOVQ 0x88(SP), R10                      ;graph.go:110
         .          .    10ca5d0: LEAQ 0x1(R10), R9
         .          .    10ca5d4: MOVQ 0x78(SP), R10
         .          .    10ca5d9: MOVQ 0x70(SP), R11
         .          .    10ca5de: MOVQ 0x98(SP), R12
         .          .    10ca5e6: MOVQ 0x68(SP), R13
         .          .    10ca5eb: MOVQ 0xc0(SP), R14
         .          .    10ca5f3: MOVQ R10, AX
         .          .    10ca5f6: MOVQ 0x50(SP), CX                       ;graph.go:107
         .          .    10ca5fb: MOVQ R11, DX                            ;graph.go:111
         .          .    10ca5fe: MOVQ 0xe8(SP), BX
         .          .    10ca606: MOVQ R12, SI
         .          .    10ca609: MOVQ R13, DI
         .          .    10ca60c: MOVQ R14, R8                            ;graph.go:110
         .          .    10ca60f: CMPQ AX, R9
         .          .    10ca612: JGE 0x10ca866
         .          .    10ca618: MOVQ 0(R8)(R9*8), R10
         .          .    10ca61c: MOVQ 0x8(BX), R11                       ;graph.go:111
         .          .    10ca620: MOVQ 0(BX), R12
         .          .    10ca623: CMPQ R11, R10
         .          .    10ca626: JAE 0x10caa42
         .          .    10ca62c: MOVQ R9, 0x88(SP)                       ;graph.go:110
         .          .    10ca634: MOVQ R10, 0x58(SP)
         .          .    10ca639: LEAQ 0(R10)(R10*2), AX                  ;graph.go:111
         .          .    10ca63d: MOVQ AX, 0x80(SP)
         .          .    10ca645: MOVQ 0(R12)(AX*8), CX
         .          .    10ca649: MOVQ 0x10(R12)(AX*8), BX
         .          .    10ca64e: MOVQ 0x8(R12)(AX*8), R8
         .          .    10ca653: MOVQ SI, 0(SP)
         .          .    10ca657: MOVQ DI, 0x8(SP)
         .          .    10ca65c: MOVQ DX, 0x10(SP)
         .          .    10ca661: MOVQ CX, 0x18(SP)
         .          .    10ca666: MOVQ R8, 0x20(SP)
         .          .    10ca66b: MOVQ BX, 0x28(SP)
         .          .    10ca670: CALL main.distance(SB)
         .          .    10ca675: CMPQ $0x1, 0x30(SP)
         .          .    10ca67b: JNE 0x10ca84c
         .          .    10ca681: MOVQ 0xe8(SP), DX                       ;graph.go:112
         .          .    10ca689: MOVQ 0x18(DX), BX
         .          .    10ca68d: MOVQ 0x20(DX), CX
         .          .    10ca691: MOVQ 0x60(SP), AX
         .          .    10ca696: CMPQ CX, AX
         .          .    10ca699: JAE 0x10caa3d
         .          .    10ca69f: MOVQ 0x90(SP), SI
         .          .    10ca6a7: MOVQ 0x10(BX)(SI*8), DI
         .          .    10ca6ac: MOVQ 0x8(BX)(SI*8), R8
         .          .    10ca6b1: MOVQ 0(BX)(SI*8), R9
         .          .    10ca6b5: LEAQ 0x1(R8), R10
         .          .    10ca6b9: LEAQ 0(BX)(SI*8), R11
         .          .    10ca6bd: CMPQ DI, R10
         .          .    10ca6c0: JA 0x10ca7b5
         .          .    10ca6c6: LEAQ 0x1(R8), DI
         .          .    10ca6ca: MOVQ DI, 0x8(BX)(SI*8)
         .          .    10ca6cf: MOVQ 0x58(SP), BX
         .          .    10ca6d4: MOVQ BX, 0(R9)(R8*8)
         .          .    10ca6d8: MOVQ 0x20(DX), CX                       ;graph.go:113
         .          .    10ca6dc: MOVQ 0x18(DX), DI
         .          .    10ca6e0: CMPQ CX, BX
         .          .    10ca6e3: JAE 0x10caa35
         .          .    10ca6e9: MOVQ 0x80(SP), BX
         .          .    10ca6f1: MOVQ 0(DI)(BX*8), R8
         .          .    10ca6f5: MOVQ 0x10(DI)(BX*8), R9
         .          .    10ca6fa: MOVQ 0x8(DI)(BX*8), R10
         .          .    10ca6ff: LEAQ 0x1(R10), R11
         .          .    10ca703: LEAQ 0(DI)(BX*8), R12
         .          .    10ca707: CMPQ R9, R11
         .          .    10ca70a: JA 0x10ca71e
         .          .    10ca70c: LEAQ 0x1(R10), R9
         .          .    10ca710: MOVQ R9, 0x8(DI)(BX*8)
         .          .    10ca715: MOVQ AX, 0(R8)(R10*8)
         .          .    10ca719: JMP 0x10ca5c8
         .          .    10ca71e: MOVQ R12, 0xb8(SP)
         .          .    10ca726: MOVQ DI, 0xb0(SP)
         .          .    10ca72e: LEAQ runtime.types+86144(SB), AX
         .          .    10ca735: MOVQ AX, 0(SP)
         .          .    10ca739: MOVQ R8, 0x8(SP)
         .          .    10ca73e: MOVQ R10, 0x10(SP)
         .          .    10ca743: MOVQ R9, 0x18(SP)
         .          .    10ca748: MOVQ R11, 0x20(SP)
   59.02MB    59.02MB    10ca74d: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca752: MOVQ 0x28(SP), AX                       ;graph.go:113
         .          .    10ca757: MOVQ 0x30(SP), CX
         .          .    10ca75c: MOVQ 0x38(SP), DX
         .          .    10ca761: MOVQ 0x80(SP), BX
         .          .    10ca769: MOVQ 0xb0(SP), SI
         .          .    10ca771: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca776: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca77d: JNE 0x10ca7a6
         .          .    10ca77f: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca783: MOVQ 0xe8(SP), DX                       ;graph.go:111
         .          .    10ca78b: MOVQ SI, DI                             ;graph.go:113
         .          .    10ca78e: MOVQ CX, R10
         .          .    10ca791: MOVQ AX, R8
         .          .    10ca794: MOVQ 0x60(SP), AX
         .          .    10ca799: MOVQ 0x90(SP), SI                       ;graph.go:112
         .          .    10ca7a1: JMP 0x10ca70c                           ;graph.go:113
         .          .    10ca7a6: MOVQ 0xb8(SP), DI
         .          .    10ca7ae: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca7b3: JMP 0x10ca783
         .          .    10ca7b5: MOVQ BX, 0xa8(SP)                       ;graph.go:112
         .          .    10ca7bd: MOVQ R11, 0xa0(SP)
         .          .    10ca7c5: LEAQ runtime.types+86144(SB), AX
         .          .    10ca7cc: MOVQ AX, 0(SP)
         .          .    10ca7d0: MOVQ R9, 0x8(SP)
         .          .    10ca7d5: MOVQ R8, 0x10(SP)
         .          .    10ca7da: MOVQ DI, 0x18(SP)
         .          .    10ca7df: MOVQ R10, 0x20(SP)
   63.51MB    63.51MB    10ca7e4: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca7e9: MOVQ 0x28(SP), AX                       ;graph.go:112
         .          .    10ca7ee: MOVQ 0x30(SP), CX
         .          .    10ca7f3: MOVQ 0x38(SP), DX
         .          .    10ca7f8: MOVQ 0x90(SP), BX
         .          .    10ca800: MOVQ 0xa8(SP), SI
         .          .    10ca808: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca80d: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca814: JNE 0x10ca83d
         .          .    10ca816: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca81a: MOVQ 0xe8(SP), DX                       ;graph.go:113
         .          .    10ca822: MOVQ SI, BX                             ;graph.go:112
         .          .    10ca825: MOVQ 0x90(SP), SI
         .          .    10ca82d: MOVQ CX, R8
         .          .    10ca830: MOVQ AX, R9
         .          .    10ca833: MOVQ 0x60(SP), AX                       ;graph.go:113
         .          .    10ca838: JMP 0x10ca6c6                           ;graph.go:112
         .          .    10ca83d: MOVQ 0xa0(SP), DI
         .          .    10ca845: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca84a: JMP 0x10ca81a
         .          .    10ca84c: MOVQ 0x60(SP), AX                       ;graph.go:104
         .          .    10ca851: MOVQ 0xe8(SP), DX                       ;graph.go:111
         .          .    10ca859: MOVQ 0x90(SP), SI                       ;graph.go:112
         .          .    10ca861: JMP 0x10ca5c8                           ;graph.go:110
         .          .    10ca866: MOVQ 0x60(SP), DX                       ;graph.go:104
         .          .    10ca86b: LEAQ 0x1(DX), AX
         .          .    10ca86f: MOVQ 0xe8(SP), DX
         .          .    10ca877: MOVQ 0x8(DX), BX
         .          .    10ca87b: MOVQ 0(DX), SI
         .          .    10ca87e: CMPQ BX, AX
         .          .    10ca881: JGE 0x10ca990
         .          .    10ca887: MOVQ AX, 0x60(SP)
         .          .    10ca88c: MOVQ CX, 0x50(SP)                       ;graph.go:107
         .          .    10ca891: LEAQ 0(AX)(AX*2), CX                    ;graph.go:105
         .          .    10ca895: MOVQ CX, 0x90(SP)
         .          .    10ca89d: MOVQ 0x10(SI)(CX*8), DX
         .          .    10ca8a2: MOVQ DX, 0x70(SP)
         .          .    10ca8a7: MOVQ 0x8(SI)(CX*8), BX
         .          .    10ca8ac: MOVQ BX, 0x68(SP)
         .          .    10ca8b1: MOVQ 0(SI)(CX*8), SI
         .          .    10ca8b5: MOVQ SI, 0x98(SP)
         .          .    10ca8bd: MOVQ 0xf0(SP), DI                       ;graph.go:106
         .          .    10ca8c5: MOVQ DI, 0(SP)
         .          .    10ca8c9: MOVQ SI, 0x8(SP)
         .          .    10ca8ce: MOVQ BX, 0x10(SP)
         .          .    10ca8d3: MOVQ DX, 0x18(SP)
         .          .    10ca8d8: CALL main.(*index).nearCount(SB)
         .          .    10ca8dd: MOVQ 0x20(SP), AX
         .          .    10ca8e2: MOVQ AX, 0x78(SP)
         .          .    10ca8e7: LEAQ runtime.types+86144(SB), CX        ;graph.go:108
         .          .    10ca8ee: MOVQ CX, 0(SP)
         .          .    10ca8f2: MOVQ AX, 0x8(SP)
         .          .    10ca8f7: MOVQ AX, 0x10(SP)
  271.13MB   271.13MB    10ca8fc: CALL runtime.makeslice(SB)              ;main.(*Graph).buildAdjList graph.go:108
         .          .    10ca901: MOVQ 0x18(SP), AX                       ;graph.go:108
         .          .    10ca906: MOVQ AX, 0xc0(SP)
         .          .    10ca90e: MOVQ 0xf0(SP), CX                       ;graph.go:109
         .          .    10ca916: MOVQ CX, 0(SP)
         .          .    10ca91a: MOVQ 0x98(SP), DX
         .          .    10ca922: MOVQ DX, 0x8(SP)
         .          .    10ca927: MOVQ 0x68(SP), BX
         .          .    10ca92c: MOVQ BX, 0x10(SP)
         .          .    10ca931: MOVQ 0x70(SP), SI
         .          .    10ca936: MOVQ SI, 0x18(SP)
         .          .    10ca93b: MOVQ AX, 0x20(SP)
         .          .    10ca940: MOVQ 0x78(SP), DI
         .          .    10ca945: MOVQ DI, 0x28(SP)
         .          .    10ca94a: MOVQ DI, 0x30(SP)
         .          .    10ca94f: CALL main.(*index).near(SB)
         .          .    10ca954: MOVQ 0x78(SP), AX                       ;graph.go:107
         .          .    10ca959: MOVQ 0x50(SP), CX
         .          .    10ca95e: ADDQ AX, CX
         .          .    10ca961: MOVQ CX, 0x50(SP)
         .          .    10ca966: MOVQ 0x70(SP), DX                       ;graph.go:110
         .          .    10ca96b: MOVQ 0xe8(SP), BX
         .          .    10ca973: MOVQ 0x98(SP), SI
         .          .    10ca97b: MOVQ 0x68(SP), DI
         .          .    10ca980: MOVQ 0xc0(SP), R8
         .          .    10ca988: XORL R9, R9
         .          .    10ca98b: JMP 0x10ca60f
         .          .    10ca990: XORPS X0, X0                            ;graph.go:117
         .          .    10ca993: CVTSI2SDQ CX, X0
         .          .    10ca998: XORPS X1, X1
         .          .    10ca99b: CVTSI2SDQ BX, X1
         .          .    10ca9a0: DIVSD X1, X0
         .          .    10ca9a4: MOVSD_XMM X0, 0(SP)
         .          .    10ca9a9: CALL runtime.convT64(SB)
         .          .    10ca9ae: MOVQ 0x8(SP), AX
         .          .    10ca9b3: XORPS X0, X0
         .          .    10ca9b6: MOVUPS X0, 0xc8(SP)
         .          .    10ca9be: LEAQ runtime.types+84416(SB), CX
         .          .    10ca9c5: MOVQ CX, 0xc8(SP)
         .          .    10ca9cd: MOVQ AX, 0xd0(SP)
         .          .    10ca9d5: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ca9dc: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10ca9e3: MOVQ CX, 0(SP)
         .          .    10ca9e7: MOVQ AX, 0x8(SP)
         .          .    10ca9ec: LEAQ go.string.*+3300(SB), AX
         .          .    10ca9f3: MOVQ AX, 0x10(SP)
         .          .    10ca9f8: MOVQ $0xa, 0x18(SP)
         .          .    10caa01: LEAQ 0xc8(SP), AX
         .          .    10caa09: MOVQ AX, 0x20(SP)
         .          .    10caa0e: MOVQ $0x1, 0x28(SP)
         .          .    10caa17: MOVQ $0x1, 0x30(SP)
         .          .    10caa20: CALL fmt.Fprintf(SB)
         .          .    10caa25: MOVQ 0xd8(SP), BP
         .          .    10caa2d: ADDQ $0xe0, SP
         .          .    10caa34: RET
         .          .    10caa35: MOVQ BX, AX                             ;graph.go:113
         .          .    10caa38: CALL runtime.panicIndex(SB)
         .          .    10caa3d: CALL runtime.panicIndex(SB)             ;graph.go:112
         .          .    10caa42: MOVQ R10, AX                            ;graph.go:111
         .          .    10caa45: MOVQ R11, CX
         .          .    10caa48: CALL runtime.panicIndex(SB)
         .          .    10caa4d: NOPL
         .          .    10caa4e: CALL runtime.morestack_noctxt(SB)       ;graph.go:102
         .          .    10caa53: JMP main.(*Graph).buildAdjList(SB)
         .          .    10caa58: INT $0x3
         .          .    10caa59: INT $0x3
         .          .    10caa5a: INT $0x3
         .          .    10caa5b: INT $0x3
         .          .    10caa5c: INT $0x3
         .          .    10caa5d: INT $0x3
         .          .    10caa5e: INT $0x3
ROUTINE ======================== main.(*index).add
   96.50MB    96.50MB (flat, cum) 11.51% of Total
         .          .    10cc150: MOVQ GS:0x30, CX                        ;index.go:31
         .          .    10cc159: LEAQ -0x18(SP), AX
         .          .    10cc15e: CMPQ 0x10(CX), AX
         .          .    10cc162: JBE 0x10cc456
         .          .    10cc168: SUBQ $0x98, SP
         .          .    10cc16f: MOVQ BP, 0x90(SP)
         .          .    10cc177: LEAQ 0x90(SP), BP
         .          .    10cc17f: MOVQ 0xa0(SP), BX                       ;index.go:34
         .          .    10cc187: MOVQ 0x38(BX), DX
         .          .    10cc18b: MOVQ 0x28(BX), SI
         .          .    10cc18f: MOVQ 0xb8(SP), DI
         .          .    10cc197: LEAQ -0x1(DI), CX
         .          .    10cc19b: CMPQ DX, CX
         .          .    10cc19e: JA 0x10cc450
         .          .    10cc1a4: MOVQ CX, 0x58(SP)
         .          .    10cc1a9: MOVQ DX, 0x50(SP)
         .          .    10cc1ae: MOVQ SI, 0x78(SP)
         .          .    10cc1b3: MOVQ 0xb0(SP), R8                       ;index.go:35
         .          .    10cc1bb: XORL AX, AX
         .          .    10cc1bd: JMP 0x10cc212
         .          .    10cc1bf: LEAQ 0x1(R8), R10                       ;index.go:41
         .          .    10cc1c3: MOVQ R10, 0x8(BX)(SI*8)
         .          .    10cc1c8: MOVQ 0xa8(SP), R10
         .          .    10cc1d0: MOVQ R10, 0(R9)(R8*8)
         .          .    10cc1d4: MOVQ 0x78(SP), R9                       ;index.go:35
         .          .    10cc1d9: MOVQ 0x50(SP), R11
         .          .    10cc1de: MOVQ 0x58(SP), R12
         .          .    10cc1e3: MOVQ 0xb8(SP), R13
         .          .    10cc1eb: MOVQ 0xb0(SP), R14
         .          .    10cc1f3: MOVQ 0x68(SP), R15
         .          .    10cc1f8: MOVQ R12, CX                            ;index.go:125
         .          .    10cc1fb: MOVQ R11, DX                            ;index.go:124
         .          .    10cc1fe: MOVQ 0xa0(SP), BX                       ;index.go:38
         .          .    10cc206: MOVQ R9, SI                             ;index.go:125
         .          .    10cc209: MOVQ R13, DI                            ;index.go:35
         .          .    10cc20c: MOVQ R14, R8                            ;index.go:126
         .          .    10cc20f: MOVQ R15, AX                            ;index.go:35
         .          .    10cc212: CMPQ DI, AX
         .          .    10cc215: JGE 0x10cc423
         .          .    10cc21b: NOPL                                    ;index.go:36
         .          .    10cc21c: CMPQ DX, AX                             ;index.go:124
         .          .    10cc21f: JA 0x10cc448
         .          .    10cc225: CMPQ CX, AX                             ;index.go:125
         .          .    10cc228: JA 0x10cc443
         .          .    10cc22e: MOVQ AX, 0x48(SP)                       ;index.go:35
         .          .    10cc233: SUBQ AX, CX                             ;index.go:125
         .          .    10cc236: MOVQ CX, 0x40(SP)
         .          .    10cc23b: SUBQ AX, DX
         .          .    10cc23e: NEGQ DX
         .          .    10cc241: SARQ $0x3f, DX
         .          .    10cc245: ANDQ AX, DX
         .          .    10cc248: ADDQ SI, DX
         .          .    10cc24b: MOVQ DX, 0x70(SP)
         .          .    10cc250: CMPQ R8, SI                             ;index.go:126
         .          .    10cc253: JE 0x10cc268
         .          .    10cc255: MOVQ SI, 0(SP)
         .          .    10cc259: MOVQ R8, 0x8(SP)
         .          .    10cc25e: MOVQ AX, 0x10(SP)
         .          .    10cc263: CALL runtime.memmove(SB)
         .          .    10cc268: MOVQ 0x48(SP), AX                       ;index.go:127
         .          .    10cc26d: INCQ AX
         .          .    10cc270: MOVQ AX, 0x68(SP)
         .          .    10cc275: MOVQ 0xb8(SP), CX
         .          .    10cc27d: SUBQ AX, CX
         .          .    10cc280: MOVQ 0x40(SP), BX
         .          .    10cc285: CMPQ CX, BX
         .          .    10cc288: CMOVG CX, BX
         .          .    10cc28c: MOVQ 0xc0(SP), CX
         .          .    10cc294: SUBQ AX, CX
         .          .    10cc297: NEGQ CX
         .          .    10cc29a: SARQ $0x3f, CX
         .          .    10cc29e: ANDQ AX, CX
         .          .    10cc2a1: MOVQ 0xb0(SP), DI
         .          .    10cc2a9: ADDQ DI, CX
         .          .    10cc2ac: MOVQ 0x70(SP), R8
         .          .    10cc2b1: CMPQ R8, CX
         .          .    10cc2b4: JNE 0x10cc40b
         .          .    10cc2ba: MOVQ 0xa0(SP), AX                       ;index.go:38
         .          .    10cc2c2: MOVQ 0(AX), CX
         .          .    10cc2c5: MOVQ 0x8(AX), DX
         .          .    10cc2c9: MOVQ 0x20(CX), CX
         .          .    10cc2cd: MOVQ DX, 0(SP)
         .          .    10cc2d1: CALL CX
         .          .    10cc2d3: MOVQ 0xa0(SP), AX                       ;index.go:39
         .          .    10cc2db: MOVQ 0(AX), CX
         .          .    10cc2de: MOVQ 0x8(AX), DX
         .          .    10cc2e2: MOVQ 0x40(CX), CX
         .          .    10cc2e6: MOVQ DX, 0(SP)
         .          .    10cc2ea: MOVQ 0x78(SP), DX
         .          .    10cc2ef: MOVQ DX, 0x8(SP)
         .          .    10cc2f4: MOVQ 0x58(SP), BX
         .          .    10cc2f9: MOVQ BX, 0x10(SP)
         .          .    10cc2fe: MOVQ 0x50(SP), SI
         .          .    10cc303: MOVQ SI, 0x18(SP)
         .          .    10cc308: CALL CX
         .          .    10cc30a: MOVQ 0xa0(SP), AX                       ;index.go:40
         .          .    10cc312: MOVQ 0(AX), CX
         .          .    10cc315: MOVQ 0x8(AX), DX
         .          .    10cc319: MOVQ 0x38(CX), CX
         .          .    10cc31d: MOVQ DX, 0(SP)
         .          .    10cc321: CALL CX
         .          .    10cc323: MOVQ 0x8(SP), AX
         .          .    10cc328: MOVQ 0xa0(SP), CX
         .          .    10cc330: MOVQ 0x40(CX), DX
         .          .    10cc334: TESTQ DX, DX
         .          .    10cc337: JE 0x10cc43e
         .          .    10cc33d: MOVQ DX, BX
         .          .    10cc340: XORL DX, DX
         .          .    10cc342: DIVQ BX
         .          .    10cc345: MOVQ 0x10(CX), BX                       ;index.go:41
         .          .    10cc349: MOVQ 0x18(CX), SI
         .          .    10cc34d: CMPQ SI, DX
         .          .    10cc350: JAE 0x10cc433
         .          .    10cc356: LEAQ 0(DX)(DX*2), SI
         .          .    10cc35a: MOVQ 0x10(BX)(SI*8), DI
         .          .    10cc35f: MOVQ 0x8(BX)(SI*8), R8
         .          .    10cc364: MOVQ 0(BX)(SI*8), R9
         .          .    10cc368: LEAQ 0x1(R8), R10
         .          .    10cc36c: LEAQ 0(BX)(SI*8), R11
         .          .    10cc370: CMPQ DI, R10
         .          .    10cc373: JBE 0x10cc1bf
         .          .    10cc379: MOVQ BX, 0x88(SP)
         .          .    10cc381: MOVQ SI, 0x60(SP)
         .          .    10cc386: MOVQ R11, 0x80(SP)
         .          .    10cc38e: LEAQ runtime.types+86144(SB), AX
         .          .    10cc395: MOVQ AX, 0(SP)
         .          .    10cc399: MOVQ R9, 0x8(SP)
         .          .    10cc39e: MOVQ R8, 0x10(SP)
         .          .    10cc3a3: MOVQ DI, 0x18(SP)
         .          .    10cc3a8: MOVQ R10, 0x20(SP)
   96.50MB    96.50MB    10cc3ad: CALL runtime.growslice(SB)              ;main.(*index).add index.go:41
         .          .    10cc3b2: MOVQ 0x28(SP), AX                       ;index.go:41
         .          .    10cc3b7: MOVQ 0x30(SP), CX
         .          .    10cc3bc: MOVQ 0x38(SP), DX
         .          .    10cc3c1: MOVQ 0x60(SP), BX
         .          .    10cc3c6: MOVQ 0x88(SP), SI
         .          .    10cc3ce: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10cc3d3: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc3da: JNE 0x10cc3fc
         .          .    10cc3dc: MOVQ AX, 0(SI)(BX*8)
         .          .    10cc3e0: MOVQ CX, R8
         .          .    10cc3e3: MOVQ AX, R9
         .          .    10cc3e6: MOVQ 0xa0(SP), CX                       ;index.go:38
         .          .    10cc3ee: MOVQ BX, DX                             ;index.go:41
         .          .    10cc3f1: MOVQ SI, BX
         .          .    10cc3f4: MOVQ DX, SI
         .          .    10cc3f7: JMP 0x10cc1bf
         .          .    10cc3fc: MOVQ 0x80(SP), DI
         .          .    10cc404: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc409: JMP 0x10cc3e0
         .          .    10cc40b: MOVQ R8, 0(SP)                          ;index.go:127
         .          .    10cc40f: MOVQ CX, 0x8(SP)
         .          .    10cc414: MOVQ BX, 0x10(SP)
         .          .    10cc419: CALL runtime.memmove(SB)
         .          .    10cc41e: JMP 0x10cc2ba
         .          .    10cc423: MOVQ 0x90(SP), BP
         .          .    10cc42b: ADDQ $0x98, SP
         .          .    10cc432: RET
         .          .    10cc433: MOVQ DX, AX                             ;index.go:41
         .          .    10cc436: MOVQ SI, CX
         .          .    10cc439: CALL runtime.panicIndexU(SB)
         .          .    10cc43e: CALL runtime.panicdivide(SB)            ;index.go:40
         .          .    10cc443: CALL runtime.panicSliceB(SB)            ;index.go:125
         .          .    10cc448: MOVQ AX, CX                             ;index.go:124
         .          .    10cc44b: CALL runtime.panicSliceAcap(SB)
         .          .    10cc450: CALL runtime.panicSliceAcap(SB)         ;index.go:34
         .          .    10cc455: NOPL
         .          .    10cc456: CALL runtime.morestack_noctxt(SB)       ;index.go:31
         .          .    10cc45b: ?
         .          .    10cc45c: LOCK CLD
         .          .    10cc45e: ?
ROUTINE ======================== main.LoadDictionary
  156.55MB   838.71MB (flat, cum)   100% of Total
         .          .    10c9e10: MOVQ GS:0x30, CX                        ;graph.go:39
         .          .    10c9e19: LEAQ 0xfffffec0(SP), AX
         .          .    10c9e21: CMPQ 0x10(CX), AX
         .          .    10c9e25: JBE 0x10ca583
         .          .    10c9e2b: SUBQ $0x1c0, SP
         .          .    10c9e32: MOVQ BP, 0x1b8(SP)
         .          .    10c9e3a: LEAQ 0x1b8(SP), BP
         .          .    10c9e42: MOVQ $0x0, 0x1f8(SP)
         .          .    10c9e4e: LEAQ go.string.*+6080(SB), AX           ;graph.go:40
         .          .    10c9e55: MOVQ AX, 0(SP)
         .          .    10c9e59: MOVQ $0xe, 0x8(SP)
         .          .    10c9e62: CALL main.newTimer(SB)
         .          .    10c9e67: MOVQ 0x10(SP), AX
         .          .    10c9e6c: MOVL $0x0, 0x68(SP)
         .          .    10c9e74: MOVQ AX, 0x80(SP)
         .          .    10c9e7c: LEAQ 0x68(SP), AX
         .          .    10c9e81: MOVQ AX, 0(SP)
         .          .    10c9e85: CALL runtime.deferprocStack(SB)
         .          .    10c9e8a: TESTL AX, AX
         .          .    10c9e8c: JNE 0x10ca564
         .          .    10c9e92: NOPL                                    ;graph.go:41
         .          .    10c9e93: MOVQ 0x1c8(SP), AX                      ;file.go:280
         .          .    10c9e9b: MOVQ AX, 0(SP)
         .          .    10c9e9f: MOVQ 0x1d0(SP), AX
         .          .    10c9ea7: MOVQ AX, 0x8(SP)
         .          .    10c9eac: MOVQ $0x0, 0x10(SP)
         .          .    10c9eb5: MOVL $0x0, 0x18(SP)
         .          .    10c9ebd: CALL os.OpenFile(SB)
         .          .    10c9ec2: MOVQ 0x20(SP), AX
         .          .    10c9ec7: MOVQ AX, 0x118(SP)
         .          .    10c9ecf: MOVQ 0x30(SP), CX
         .          .    10c9ed4: MOVQ 0x28(SP), DX
         .          .    10c9ed9: TESTQ DX, DX                            ;graph.go:42
         .          .    10c9edc: JE 0x10c9f22
         .          .    10c9ede: JE 0x10c9ee4                            ;graph.go:43
         .          .    10c9ee0: MOVQ 0x8(DX), DX
         .          .    10c9ee4: XORPS X0, X0
         .          .    10c9ee7: MOVUPS X0, 0x128(SP)
         .          .    10c9eef: MOVQ DX, 0x128(SP)
         .          .    10c9ef7: MOVQ CX, 0x130(SP)
         .          .    10c9eff: LEAQ 0x128(SP), AX
         .          .    10c9f07: MOVQ AX, 0(SP)
         .          .    10c9f0b: MOVQ $0x1, 0x8(SP)
         .          .    10c9f14: MOVQ $0x1, 0x10(SP)
         .          .    10c9f1d: CALL log.Fatal(SB)
         .          .    10c9f22: MOVL $0x18, 0xa0(SP)                    ;graph.go:45
         .          .    10c9f2d: LEAQ go.func.*+293(SB), AX
         .          .    10c9f34: MOVQ AX, 0xb8(SP)
         .          .    10c9f3c: MOVQ 0x118(SP), AX
         .          .    10c9f44: MOVQ AX, 0xd0(SP)
         .          .    10c9f4c: LEAQ 0xa0(SP), CX
         .          .    10c9f54: MOVQ CX, 0(SP)
         .          .    10c9f58: CALL runtime.deferprocStack(SB)
         .          .    10c9f5d: TESTL AX, AX
         .          .    10c9f5f: JNE 0x10ca54e
         .          .    10c9f65: LEAQ runtime.types+157824(SB), AX       ;graph.go:47
         .          .    10c9f6c: MOVQ AX, 0(SP)
         .          .    10c9f70: CALL runtime.newobject(SB)
         .          .    10c9f75: MOVQ 0x8(SP), AX
         .          .    10c9f7a: MOVQ AX, 0x120(SP)
         .          .    10c9f82: LEAQ runtime.types+141824(SB), CX       ;graph.go:48
         .          .    10c9f89: MOVQ CX, 0(SP)
         .          .    10c9f8d: XORPS X0, X0
         .          .    10c9f90: MOVUPS X0, 0x8(SP)
         .          .    10c9f95: CALL runtime.makeslice(SB)
         .          .    10c9f9a: MOVQ 0x18(SP), AX
         .          .    10c9f9f: CMPL $0x0, runtime.writeBarrier(SB)     ;graph.go:47
         .          .    10c9fa6: JNE 0x10ca509
         .          .    10c9fac: XORPS X0, X0
         .          .    10c9faf: MOVQ 0x120(SP), CX
         .          .    10c9fb7: MOVUPS X0, 0(CX)
         .          .    10c9fba: MOVUPS X0, 0x10(CX)
         .          .    10c9fbe: MOVUPS X0, 0x20(CX)
         .          .    10c9fc2: MOVQ AX, 0(CX)
         .          .    10c9fc5: NOPL                                    ;graph.go:53
         .          .    10c9fc6: LEAQ 0x138(SP), DI                      ;scan.go:87
         .          .    10c9fce: MOVQ BP, -0x10(SP)
         .          .    10c9fd3: LEAQ -0x10(SP), BP
         .          .    10c9fd8: CALL 0x10586ba
         .          .    10c9fdd: MOVQ 0(BP), BP
         .          .    10c9fe1: LEAQ 0x138(SP), DI
         .          .    10c9fe9: MOVQ BP, -0x10(SP)
         .          .    10c9fee: LEAQ -0x10(SP), BP
         .          .    10c9ff3: CALL 0x10586ba
         .          .    10c9ff8: MOVQ 0(BP), BP
         .          .    10c9ffc: LEAQ go.itab.*os.File,io.Reader(SB), AX
         .          .    10ca003: MOVQ AX, 0x138(SP)
         .          .    10ca00b: MOVQ 0x118(SP), AX
         .          .    10ca013: MOVQ AX, 0x140(SP)
         .          .    10ca01b: LEAQ go.func.*+5(SB), AX
         .          .    10ca022: MOVQ AX, 0x148(SP)
         .          .    10ca02a: MOVQ $0x10000, 0x150(SP)
         .          .    10ca036: XORL AX, AX
         .          .    10ca038: JMP 0x10ca03d                           ;graph.go:54
         .          .    10ca03a: MOVQ SI, AX                             ;graph.go:74
         .          .    10ca03d: MOVQ AX, 0x48(SP)
         .          .    10ca042: LEAQ 0x138(SP), CX                      ;graph.go:54
         .          .    10ca04a: MOVQ CX, 0(SP)
         .          .    10ca04e: CALL bufio.(*Scanner).Scan(SB)
         .          .    10ca053: CMPB $0x0, 0x8(SP)
         .          .    10ca058: JE 0x10ca19b
         .          .    10ca05e: NOPL                                    ;graph.go:55
         .          .    10ca05f: MOVQ 0x160(SP), AX                      ;scan.go:106
         .          .    10ca067: MOVQ AX, 0x40(SP)
         .          .    10ca06c: MOVQ 0x158(SP), CX
         .          .    10ca074: MOVQ CX, 0x100(SP)
         .          .    10ca07c: LEAQ runtime.types+89152(SB), DX        ;graph.go:56
         .          .    10ca083: MOVQ DX, 0(SP)
         .          .    10ca087: MOVQ AX, 0x8(SP)
         .          .    10ca08c: MOVQ AX, 0x10(SP)
    8.50MB     8.50MB    10ca091: CALL runtime.makeslice(SB)              ;main.LoadDictionary graph.go:56
         .          .    10ca096: MOVQ 0x18(SP), AX                       ;graph.go:56
         .          .    10ca09b: MOVQ AX, 0x110(SP)
         .          .    10ca0a3: MOVQ 0x100(SP), CX                      ;graph.go:57
         .          .    10ca0ab: CMPQ CX, AX
         .          .    10ca0ae: JE 0x10ca0c8
         .          .    10ca0b0: MOVQ AX, 0(SP)
         .          .    10ca0b4: MOVQ CX, 0x8(SP)
         .          .    10ca0b9: MOVQ 0x40(SP), CX
         .          .    10ca0be: MOVQ CX, 0x10(SP)
         .          .    10ca0c3: CALL runtime.memmove(SB)
         .          .    10ca0c8: MOVQ 0x120(SP), CX                      ;graph.go:58
         .          .    10ca0d0: MOVQ 0x10(CX), DX
         .          .    10ca0d4: MOVQ 0x8(CX), BX
         .          .    10ca0d8: LEAQ 0x1(BX), SI
         .          .    10ca0dc: MOVQ 0(CX), R8
         .          .    10ca0df: CMPQ DX, SI
         .          .    10ca0e2: JA 0x10ca13b
         .          .    10ca0e4: LEAQ 0x1(BX), DX
         .          .    10ca0e8: MOVQ DX, 0x8(CX)
         .          .    10ca0ec: LEAQ 0(BX)(BX*2), DX
         .          .    10ca0f0: MOVQ 0x40(SP), BX
         .          .    10ca0f5: MOVQ BX, 0x8(R8)(DX*8)
         .          .    10ca0fa: MOVQ BX, 0x10(R8)(DX*8)
         .          .    10ca0ff: MOVQ 0x48(SP), SI                       ;graph.go:59
         .          .    10ca104: CMPQ SI, BX
         .          .    10ca107: CMOVG BX, SI                            ;graph.go:74
         .          .    10ca10b: LEAQ 0(R8)(DX*8), DI                    ;graph.go:58
         .          .    10ca10f: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca116: JNE 0x10ca129
         .          .    10ca118: MOVQ 0x110(SP), AX
         .          .    10ca120: MOVQ AX, 0(R8)(DX*8)
         .          .    10ca124: JMP 0x10ca03a
         .          .    10ca129: MOVQ 0x110(SP), AX
         .          .    10ca131: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca136: JMP 0x10ca03a
         .          .    10ca13b: LEAQ runtime.types+141824(SB), AX
         .          .    10ca142: MOVQ AX, 0(SP)
         .          .    10ca146: MOVQ R8, 0x8(SP)
         .          .    10ca14b: MOVQ BX, 0x10(SP)
         .          .    10ca150: MOVQ DX, 0x18(SP)
         .          .    10ca155: MOVQ SI, 0x20(SP)
  125.16MB   125.16MB    10ca15a: CALL runtime.growslice(SB)              ;main.LoadDictionary graph.go:58
         .          .    10ca15f: MOVQ 0x28(SP), AX                       ;graph.go:58
         .          .    10ca164: MOVQ 0x30(SP), CX
         .          .    10ca169: MOVQ 0x38(SP), DX
         .          .    10ca16e: MOVQ 0x120(SP), DI
         .          .    10ca176: MOVQ DX, 0x10(DI)
         .          .    10ca17a: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca181: JNE 0x10ca194
         .          .    10ca183: MOVQ AX, 0(DI)
         .          .    10ca186: MOVQ CX, BX
         .          .    10ca189: MOVQ AX, R8
         .          .    10ca18c: MOVQ DI, CX
         .          .    10ca18f: JMP 0x10ca0e4
         .          .    10ca194: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca199: JMP 0x10ca186
         .          .    10ca19b: MOVQ 0x1f0(SP), AX                      ;graph.go:64
         .          .    10ca1a3: TESTQ AX, AX
         .          .    10ca1a6: JNE 0x10ca4ab
         .          .    10ca1ac: MOVQ 0x120(SP), AX                      ;graph.go:68
         .          .    10ca1b4: MOVQ 0x8(AX), CX
         .          .    10ca1b8: MOVQ CX, 0x60(SP)
         .          .    10ca1bd: LEAQ runtime.types+77440(SB), DX
         .          .    10ca1c4: MOVQ DX, 0(SP)
         .          .    10ca1c8: MOVQ CX, 0x8(SP)
         .          .    10ca1cd: MOVQ CX, 0x10(SP)
   22.89MB    22.89MB    10ca1d2: CALL runtime.makeslice(SB)              ;main.LoadDictionary graph.go:68
         .          .    10ca1d7: MOVQ 0x18(SP), AX                       ;graph.go:68
         .          .    10ca1dc: MOVQ 0x60(SP), CX
         .          .    10ca1e1: MOVQ 0x120(SP), DX
         .          .    10ca1e9: MOVQ CX, 0x20(DX)
         .          .    10ca1ed: MOVQ CX, 0x28(DX)
         .          .    10ca1f1: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca1f8: JNE 0x10ca49d
         .          .    10ca1fe: MOVQ AX, 0x18(DX)
         .          .    10ca202: XORL AX, AX
         .          .    10ca204: JMP 0x10ca215                           ;graph.go:69
         .          .    10ca206: LEAQ 0x1(SI), BX
         .          .    10ca20a: MOVQ 0x60(SP), CX
         .          .    10ca20f: MOVQ AX, DX                             ;graph.go:70
         .          .    10ca212: MOVQ BX, AX                             ;graph.go:69
         .          .    10ca215: CMPQ CX, AX
         .          .    10ca218: JGE 0x10ca296
         .          .    10ca21a: MOVQ AX, 0x50(SP)
         .          .    10ca21f: LEAQ runtime.types+86144(SB), AX        ;graph.go:70
         .          .    10ca226: MOVQ AX, 0(SP)
         .          .    10ca22a: XORPS X0, X0
         .          .    10ca22d: MOVUPS X0, 0x8(SP)
         .          .    10ca232: CALL runtime.makeslice(SB)
         .          .    10ca237: MOVQ 0x120(SP), AX
         .          .    10ca23f: MOVQ 0x20(AX), CX
         .          .    10ca243: MOVQ 0x18(AX), DX
         .          .    10ca247: MOVQ 0x18(SP), BX
         .          .    10ca24c: MOVQ 0x50(SP), SI
         .          .    10ca251: CMPQ CX, SI
         .          .    10ca254: JAE 0x10ca57a
         .          .    10ca25a: LEAQ 0(SI)(SI*2), CX
         .          .    10ca25e: MOVQ $0x0, 0x8(DX)(CX*8)
         .          .    10ca267: MOVQ $0x0, 0x10(DX)(CX*8)
         .          .    10ca270: LEAQ 0(DX)(CX*8), DI
         .          .    10ca274: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca27b: JNE 0x10ca283
         .          .    10ca27d: MOVQ BX, 0(DX)(CX*8)
         .          .    10ca281: JMP 0x10ca206
         .          .    10ca283: MOVQ AX, CX                             ;graph.go:47
         .          .    10ca286: MOVQ BX, AX                             ;graph.go:70
         .          .    10ca289: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca28e: MOVQ CX, AX
         .          .    10ca291: JMP 0x10ca206
         .          .    10ca296: LEAQ go.string.*+3460(SB), AX           ;graph.go:73
         .          .    10ca29d: MOVQ AX, 0(SP)
         .          .    10ca2a1: MOVQ $0xa, 0x8(SP)
         .          .    10ca2aa: CALL main.newTimer(SB)
         .          .    10ca2af: MOVQ 0x10(SP), AX
         .          .    10ca2b4: MOVQ AX, 0xe8(SP)
         .          .    10ca2bc: MOVQ 0x1d8(SP), CX                      ;graph.go:74
         .          .    10ca2c4: MOVQ CX, 0(SP)
         .          .    10ca2c8: MOVQ 0x48(SP), CX
         .          .    10ca2cd: MOVQ CX, 0x8(SP)
         .      192MB    10ca2d2: CALL main.newIndex(SB)                  ;main.LoadDictionary graph.go:74
         .          .    10ca2d7: MOVQ 0x10(SP), AX                       ;graph.go:74
         .          .    10ca2dc: MOVQ AX, 0xf8(SP)
         .          .    10ca2e4: MOVQ 0x120(SP), CX                      ;graph.go:75
         .          .    10ca2ec: MOVQ 0x8(CX), DX
         .          .    10ca2f0: MOVQ 0(CX), BX
         .          .    10ca2f3: TESTQ DX, DX
         .          .    10ca2f6: JLE 0x10ca35f
         .          .    10ca2f8: MOVQ DX, 0x60(SP)
         .          .    10ca2fd: XORL SI, SI
         .          .    10ca2ff: JMP 0x10ca318
         .          .    10ca301: MOVQ 0x108(SP), DX
         .          .    10ca309: LEAQ 0x18(DX), BX
         .          .    10ca30d: MOVQ AX, SI
         .          .    10ca310: MOVQ 0xf8(SP), AX                       ;graph.go:76
         .          .    10ca318: MOVQ BX, 0x108(SP)                      ;graph.go:75
         .          .    10ca320: MOVQ SI, 0x58(SP)
         .          .    10ca325: MOVQ 0(BX), CX
         .          .    10ca328: MOVQ 0x10(BX), DX
         .          .    10ca32c: MOVQ 0x8(BX), DI
         .          .    10ca330: MOVQ AX, 0(SP)                          ;graph.go:76
         .          .    10ca334: MOVQ SI, 0x8(SP)
         .          .    10ca339: MOVQ CX, 0x10(SP)
         .          .    10ca33e: MOVQ DI, 0x18(SP)
         .          .    10ca343: MOVQ DX, 0x20(SP)
         .    96.50MB    10ca348: CALL main.(*index).add(SB)              ;main.LoadDictionary graph.go:76
         .          .    10ca34d: MOVQ 0x58(SP), AX                       ;graph.go:75
         .          .    10ca352: INCQ AX
         .          .    10ca355: MOVQ 0x60(SP), CX
         .          .    10ca35a: CMPQ CX, AX
         .          .    10ca35d: JL 0x10ca301
         .          .    10ca35f: MOVQ 0xe8(SP), DX                       ;graph.go:78
         .          .    10ca367: MOVQ 0(DX), AX
         .          .    10ca36a: CALL AX
         .          .    10ca36c: MOVZX 0x1e0(SP), AX                     ;graph.go:39
         .          .    10ca374: TESTL AL, AL
         .          .    10ca376: JNE 0x10ca487                           ;graph.go:80
         .          .    10ca37c: LEAQ go.string.*+4788(SB), AX           ;graph.go:87
         .          .    10ca383: MOVQ AX, 0(SP)
         .          .    10ca387: MOVQ $0xc, 0x8(SP)
         .          .    10ca390: CALL main.newTimer(SB)
         .          .    10ca395: MOVQ 0x10(SP), AX
         .          .    10ca39a: MOVQ AX, 0xf0(SP)
         .          .    10ca3a2: MOVQ 0x120(SP), CX                      ;graph.go:88
         .          .    10ca3aa: MOVQ CX, 0(SP)
         .          .    10ca3ae: MOVQ 0xf8(SP), DX
         .          .    10ca3b6: MOVQ DX, 0x8(SP)
         .   393.66MB    10ca3bb: CALL main.(*Graph).buildAdjList(SB)     ;main.LoadDictionary graph.go:88
         .          .    10ca3c0: MOVQ 0xf0(SP), DX                       ;graph.go:89
         .          .    10ca3c8: MOVQ 0(DX), AX
         .          .    10ca3cb: CALL AX
         .          .    10ca3cd: MOVQ 0x1f0(SP), AX                      ;graph.go:64
         .          .    10ca3d5: TESTQ AX, AX
         .          .    10ca3d8: JNE 0x10ca41f                           ;graph.go:91
         .          .    10ca3da: MOVZX 0x1e0(SP), AX                     ;graph.go:39
         .          .    10ca3e2: TESTL AL, AL
         .          .    10ca3e4: JNE 0x10ca40c                           ;graph.go:95
         .          .    10ca3e6: MOVQ 0x120(SP), AX                      ;graph.go:99
         .          .    10ca3ee: MOVQ AX, 0x1f8(SP)
         .          .    10ca3f6: NOPL
         .          .    10ca3f7: CALL runtime.deferreturn(SB)
         .          .    10ca3fc: MOVQ 0x1b8(SP), BP
         .          .    10ca404: ADDQ $0x1c0, SP
         .          .    10ca40b: RET
         .          .    10ca40c: MOVQ 0x120(SP), AX                      ;graph.go:96
         .          .    10ca414: MOVQ AX, 0(SP)
         .          .    10ca418: CALL main.adjListStats(SB)
         .          .    10ca41d: JMP 0x10ca3e6
         .          .    10ca41f: MOVQ $0x0, 0(SP)                        ;graph.go:92
         .          .    10ca427: MOVQ 0x1e8(SP), CX
         .          .    10ca42f: MOVQ CX, 0x8(SP)
         .          .    10ca434: MOVQ AX, 0x10(SP)
         .          .    10ca439: LEAQ go.string.*+2074(SB), AX
         .          .    10ca440: MOVQ AX, 0x18(SP)
         .          .    10ca445: MOVQ $0x8, 0x20(SP)
         .          .    10ca44e: CALL runtime.concatstring2(SB)
         .          .    10ca453: MOVQ 0x30(SP), AX
         .          .    10ca458: MOVQ 0x28(SP), CX
         .          .    10ca45d: MOVQ 0x120(SP), DX
         .          .    10ca465: MOVQ DX, 0(SP)
         .          .    10ca469: MOVQ CX, 0x8(SP)
         .          .    10ca46e: MOVQ AX, 0x10(SP)
         .          .    10ca473: CALL main.(*Graph).dumpAdjList(SB)
         .          .    10ca478: MOVZX 0x1e0(SP), AX                     ;graph.go:39
         .          .    10ca480: TESTL AL, AL
         .          .    10ca482: JMP 0x10ca3e4                           ;graph.go:92
         .          .    10ca487: MOVQ 0xf8(SP), AX                       ;graph.go:81
         .          .    10ca48f: MOVQ AX, 0(SP)
         .          .    10ca493: CALL main.(*index).printStats(SB)
         .          .    10ca498: JMP 0x10ca37c                           ;graph.go:87
         .          .    10ca49d: LEAQ 0x18(DX), DI                       ;graph.go:68
         .          .    10ca4a1: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca4a6: JMP 0x10ca202
         .          .    10ca4ab: MOVQ $0x0, 0(SP)                        ;graph.go:65
         .          .    10ca4b3: MOVQ 0x1e8(SP), CX
         .          .    10ca4bb: MOVQ CX, 0x8(SP)
         .          .    10ca4c0: MOVQ AX, 0x10(SP)
         .          .    10ca4c5: LEAQ go.string.*+5441(SB), DX
         .          .    10ca4cc: MOVQ DX, 0x18(SP)
         .          .    10ca4d1: MOVQ $0xd, 0x20(SP)
         .          .    10ca4da: CALL runtime.concatstring2(SB)
         .          .    10ca4df: MOVQ 0x30(SP), AX
         .          .    10ca4e4: MOVQ 0x28(SP), CX
         .          .    10ca4e9: MOVQ 0x120(SP), DX
         .          .    10ca4f1: MOVQ DX, 0(SP)
         .          .    10ca4f5: MOVQ CX, 0x8(SP)
         .          .    10ca4fa: MOVQ AX, 0x10(SP)
         .          .    10ca4ff: CALL main.(*Graph).dumpVertices(SB)
         .          .    10ca504: JMP 0x10ca1ac
         .          .    10ca509: MOVQ AX, 0x110(SP)                      ;graph.go:48
         .          .    10ca511: LEAQ runtime.types+157824(SB), AX       ;graph.go:47
         .          .    10ca518: MOVQ AX, 0(SP)
         .          .    10ca51c: MOVQ 0x120(SP), AX
         .          .    10ca524: MOVQ AX, 0x8(SP)
         .          .    10ca529: CALL runtime.typedmemclr(SB)
         .          .    10ca52e: MOVQ 0x120(SP), DI
         .          .    10ca536: MOVQ 0x110(SP), AX
         .          .    10ca53e: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca543: MOVQ DI, CX                             ;graph.go:68
         .          .    10ca546: XORPS X0, X0                            ;graph.go:48
         .          .    10ca549: JMP 0x10c9fc5                           ;graph.go:47
         .          .    10ca54e: NOPL                                    ;graph.go:45
         .          .    10ca54f: CALL runtime.deferreturn(SB)
         .          .    10ca554: MOVQ 0x1b8(SP), BP
         .          .    10ca55c: ADDQ $0x1c0, SP
         .          .    10ca563: RET
         .          .    10ca564: NOPL                                    ;graph.go:40
         .          .    10ca565: CALL runtime.deferreturn(SB)
         .          .    10ca56a: MOVQ 0x1b8(SP), BP
         .          .    10ca572: ADDQ $0x1c0, SP
         .          .    10ca579: RET
         .          .    10ca57a: MOVQ SI, AX                             ;graph.go:70
         .          .    10ca57d: CALL runtime.panicIndex(SB)
         .          .    10ca582: NOPL
         .          .    10ca583: CALL runtime.morestack_noctxt(SB)       ;graph.go:39
         .          .    10ca588: JMP main.LoadDictionary(SB)
         .          .    10ca58d: INT $0x3
         .          .    10ca58e: INT $0x3
ROUTINE ======================== main.main
         0   838.71MB (flat, cum)   100% of Total
         .          .    10cd4b0: MOVQ GS:0x30, CX                        ;main.go:25
         .          .    10cd4b9: LEAQ 0xfffffd98(SP), AX
         .          .    10cd4c1: CMPQ 0x10(CX), AX
         .          .    10cd4c5: JBE 0x10ce1d3
         .          .    10cd4cb: SUBQ $0x2e8, SP
         .          .    10cd4d2: MOVQ BP, 0x2e0(SP)
         .          .    10cd4da: LEAQ 0x2e0(SP), BP
         .          .    10cd4e2: MOVQ os.Args+8(SB), CX                  ;main.go:26
         .          .    10cd4e9: MOVQ os.Args(SB), DX                    ;flag.go:996
         .          .    10cd4f0: MOVQ os.Args+16(SB), BX
         .          .    10cd4f7: CMPQ $0x1, CX
         .          .    10cd4fb: JB 0x10ce1c8
         .          .    10cd501: MOVQ flag.CommandLine(SB), AX
         .          .    10cd508: MOVQ AX, 0(SP)
         .          .    10cd50c: LEAQ -0x1(BX), AX
         .          .    10cd510: MOVQ AX, BX
         .          .    10cd513: NEGQ AX
         .          .    10cd516: SARQ $0x3f, AX
         .          .    10cd51a: ANDQ $0x10, AX
         .          .    10cd51e: ADDQ DX, AX
         .          .    10cd521: MOVQ AX, 0x8(SP)
         .          .    10cd526: LEAQ -0x1(CX), AX
         .          .    10cd52a: MOVQ AX, 0x10(SP)
         .          .    10cd52f: MOVQ BX, 0x18(SP)
         .          .    10cd534: CALL flag.(*FlagSet).Parse(SB)
         .          .    10cd539: MOVQ main.cpuprofile(SB), AX            ;main.go:28
         .          .    10cd540: MOVQ 0(AX), CX
         .          .    10cd543: MOVQ 0x8(AX), AX
         .          .    10cd547: TESTQ AX, AX
         .          .    10cd54a: JNE 0x10ce06b
         .          .    10cd550: MOVQ main.traceprofile(SB), AX          ;main.go:38
         .          .    10cd557: MOVQ 0(AX), CX
         .          .    10cd55a: MOVQ 0x8(AX), AX
         .          .    10cd55e: TESTQ AX, AX
         .          .    10cd561: JNE 0x10cdf09
         .          .    10cd567: MOVQ main.dump(SB), AX                  ;main.go:48
         .          .    10cd56e: MOVQ 0x8(AX), CX
         .          .    10cd572: MOVQ 0(AX), AX
         .          .    10cd575: TESTQ CX, CX
         .          .    10cd578: JNE 0x10cdef6
         .          .    10cd57e: XORPS X0, X0                            ;main.go:52
         .          .    10cd581: MOVUPS X0, 0x250(SP)
         .          .    10cd589: LEAQ runtime.types+88832(SB), AX
         .          .    10cd590: MOVQ AX, 0x250(SP)
         .          .    10cd598: LEAQ internal/bytealg.IndexString.args_stackmap+640(SB), CX
         .          .    10cd59f: MOVQ CX, 0x258(SP)
         .          .    10cd5a7: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cd5ae: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd5b5: MOVQ DX, 0(SP)
         .          .    10cd5b9: MOVQ CX, 0x8(SP)
         .          .    10cd5be: LEAQ 0x250(SP), CX
         .          .    10cd5c6: MOVQ CX, 0x10(SP)
         .          .    10cd5cb: MOVQ $0x1, 0x18(SP)
         .          .    10cd5d4: MOVQ $0x1, 0x20(SP)
         .          .    10cd5dd: CALL fmt.Fprintln(SB)
         .          .    10cd5e2: MOVQ main.dict(SB), AX                  ;main.go:53
         .          .    10cd5e9: MOVQ main.numBuckets(SB), CX
         .          .    10cd5f0: MOVQ main.dictStats(SB), DX
         .          .    10cd5f7: MOVQ main.dump(SB), BX
         .          .    10cd5fe: MOVQ 0x8(AX), SI
         .          .    10cd602: MOVQ 0(AX), AX
         .          .    10cd605: MOVQ 0(CX), CX
         .          .    10cd608: MOVZX 0(DX), DX
         .          .    10cd60b: MOVQ 0(BX), DI
         .          .    10cd60e: MOVQ 0x8(BX), BX
         .          .    10cd612: MOVQ AX, 0(SP)
         .          .    10cd616: MOVQ SI, 0x8(SP)
         .          .    10cd61b: MOVQ CX, 0x10(SP)
         .          .    10cd620: MOVB DL, 0x18(SP)
         .          .    10cd624: MOVQ DI, 0x20(SP)
         .          .    10cd629: MOVQ BX, 0x28(SP)
         .   838.71MB    10cd62e: CALL main.LoadDictionary(SB)            ;main.main main.go:53
         .          .    10cd633: MOVQ 0x30(SP), AX                       ;main.go:53
         .          .    10cd638: MOVQ AX, 0x1d0(SP)
         .          .    10cd640: MOVQ 0x8(AX), CX                        ;graph.go:304
         .          .    10cd644: MOVQ CX, 0x78(SP)
         .          .    10cd649: MOVQ AX, 0(SP)                          ;main.go:54
         .          .    10cd64d: CALL main.(*Graph).EdgeCount(SB)
         .          .    10cd652: MOVQ 0x8(SP), AX
         .          .    10cd657: MOVQ AX, 0x70(SP)
         .          .    10cd65c: MOVQ 0x78(SP), CX
         .          .    10cd661: MOVQ CX, 0(SP)
         .          .    10cd665: CALL runtime.convT64(SB)
         .          .    10cd66a: MOVQ 0x8(SP), AX
         .          .    10cd66f: MOVQ AX, 0x1f8(SP)
         .          .    10cd677: MOVQ 0x70(SP), CX
         .          .    10cd67c: MOVQ CX, 0(SP)
         .          .    10cd680: CALL runtime.convT64(SB)
         .          .    10cd685: MOVQ 0x8(SP), AX
         .          .    10cd68a: XORPS X0, X0
         .          .    10cd68d: MOVUPS X0, 0x2c0(SP)
         .          .    10cd695: MOVUPS X0, 0x2d0(SP)
         .          .    10cd69d: LEAQ runtime.types+86144(SB), CX
         .          .    10cd6a4: MOVQ CX, 0x2c0(SP)
         .          .    10cd6ac: MOVQ 0x1f8(SP), DX
         .          .    10cd6b4: MOVQ DX, 0x2c8(SP)
         .          .    10cd6bc: MOVQ CX, 0x2d0(SP)
         .          .    10cd6c4: MOVQ AX, 0x2d8(SP)
         .          .    10cd6cc: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd6d3: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cd6da: MOVQ CX, 0(SP)
         .          .    10cd6de: MOVQ AX, 0x8(SP)
         .          .    10cd6e3: LEAQ go.string.*+11032(SB), AX
         .          .    10cd6ea: MOVQ AX, 0x10(SP)
         .          .    10cd6ef: MOVQ $0x14, 0x18(SP)
         .          .    10cd6f8: LEAQ 0x2c0(SP), AX
         .          .    10cd700: MOVQ AX, 0x20(SP)
         .          .    10cd705: MOVQ $0x2, 0x28(SP)
         .          .    10cd70e: MOVQ $0x2, 0x30(SP)
         .          .    10cd717: CALL fmt.Fprintf(SB)
         .          .    10cd71c: MOVQ main.dictStats(SB), AX             ;main.go:56
         .          .    10cd723: CMPB $0x0, 0(AX)
         .          .    10cd726: JNE 0x10cded5
         .          .    10cd72c: MOVQ main.src(SB), AX                   ;main.go:60
         .          .    10cd733: MOVQ 0(AX), CX
         .          .    10cd736: MOVQ 0x8(AX), AX
         .          .    10cd73a: TESTQ AX, AX
         .          .    10cd73d: JE 0x10cd751
         .          .    10cd73f: MOVQ main.dest(SB), DX
         .          .    10cd746: CMPQ $0x0, 0x8(DX)
         .          .    10cd74b: JNE 0x10cd977
         .          .    10cd751: MOVQ main.printGraph(SB), AX            ;main.go:84
         .          .    10cd758: CMPB $0x0, 0(AX)
         .          .    10cd75b: JNE 0x10cd961
         .          .    10cd761: MOVQ main.perfStats(SB), AX             ;main.go:88
         .          .    10cd768: CMPB $0x0, 0(AX)
         .          .    10cd76b: JNE 0x10cd957
         .          .    10cd771: MOVQ main.memprofile(SB), AX            ;main.go:92
         .          .    10cd778: CMPQ $0x0, 0x8(AX)
         .          .    10cd77d: JNE 0x10cd795
         .          .    10cd77f: NOPL                                    ;main.go:103
         .          .    10cd780: CALL runtime.deferreturn(SB)
         .          .    10cd785: MOVQ 0x2e0(SP), BP
         .          .    10cd78d: ADDQ $0x2e8, SP
         .          .    10cd794: RET
         .          .    10cd795: CALL runtime.GC(SB)                     ;main.go:93
         .          .    10cd79a: MOVQ main.memprofile(SB), AX            ;main.go:94
         .          .    10cd7a1: MOVQ 0(AX), CX
         .          .    10cd7a4: MOVQ 0x8(AX), AX
         .          .    10cd7a8: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd7ac: MOVQ AX, 0x8(SP)
         .          .    10cd7b1: MOVQ $0x602, 0x10(SP)
         .          .    10cd7ba: MOVL $0x1b6, 0x18(SP)
         .          .    10cd7c2: CALL os.OpenFile(SB)
         .          .    10cd7c7: MOVQ 0x20(SP), AX
         .          .    10cd7cc: MOVQ AX, 0x1f0(SP)
         .          .    10cd7d4: MOVQ 0x28(SP), CX
         .          .    10cd7d9: MOVQ 0x30(SP), DX
         .          .    10cd7de: TESTQ CX, CX                            ;main.go:95
         .          .    10cd7e1: JE 0x10cd84d
         .          .    10cd7e3: JE 0x10cd7e9                            ;main.go:96
         .          .    10cd7e5: MOVQ 0x8(CX), CX
         .          .    10cd7e9: XORPS X0, X0
         .          .    10cd7ec: MOVUPS X0, 0x260(SP)
         .          .    10cd7f4: MOVUPS X0, 0x270(SP)
         .          .    10cd7fc: LEAQ runtime.types+88832(SB), AX
         .          .    10cd803: MOVQ AX, 0x260(SP)
         .          .    10cd80b: LEAQ internal/bytealg.IndexString.args_stackmap+672(SB), BX
         .          .    10cd812: MOVQ BX, 0x268(SP)
         .          .    10cd81a: MOVQ CX, 0x270(SP)
         .          .    10cd822: MOVQ DX, 0x278(SP)
         .          .    10cd82a: LEAQ 0x260(SP), CX
         .          .    10cd832: MOVQ CX, 0(SP)
         .          .    10cd836: MOVQ $0x2, 0x8(SP)
         .          .    10cd83f: MOVQ $0x2, 0x10(SP)
         .          .    10cd848: CALL log.Fatal(SB)
         .          .    10cd84d: MOVL $0x18, 0xf0(SP)                    ;main.go:98
         .          .    10cd858: LEAQ go.func.*+293(SB), AX
         .          .    10cd85f: MOVQ AX, 0x108(SP)
         .          .    10cd867: MOVQ 0x1f0(SP), AX
         .          .    10cd86f: MOVQ AX, 0x120(SP)
         .          .    10cd877: LEAQ 0xf0(SP), CX
         .          .    10cd87f: MOVQ CX, 0(SP)
         .          .    10cd883: CALL runtime.deferprocStack(SB)
         .          .    10cd888: TESTL AX, AX
         .          .    10cd88a: JNE 0x10cd941
         .          .    10cd890: NOPL                                    ;pprof.go:522
         .          .    10cd891: LEAQ go.itab.*os.File,io.Writer(SB), AX ;pprof.go:533
         .          .    10cd898: MOVQ AX, 0(SP)
         .          .    10cd89c: MOVQ 0x1f0(SP), AX
         .          .    10cd8a4: MOVQ AX, 0x8(SP)
         .          .    10cd8a9: MOVQ $0x0, 0x10(SP)
         .          .    10cd8b2: XORPS X0, X0
         .          .    10cd8b5: MOVUPS X0, 0x18(SP)
         .          .    10cd8ba: CALL runtime/pprof.writeHeapInternal(SB)
         .          .    10cd8bf: MOVQ 0x28(SP), AX
         .          .    10cd8c4: MOVQ 0x30(SP), CX
         .          .    10cd8c9: TESTQ AX, AX                            ;main.go:99
         .          .    10cd8cc: JE 0x10cd77f
         .          .    10cd8d2: JE 0x10cd8d8                            ;main.go:100
         .          .    10cd8d4: MOVQ 0x8(AX), AX
         .          .    10cd8d8: XORPS X0, X0
         .          .    10cd8db: MOVUPS X0, 0x260(SP)
         .          .    10cd8e3: MOVUPS X0, 0x270(SP)
         .          .    10cd8eb: LEAQ runtime.types+88832(SB), DX
         .          .    10cd8f2: MOVQ DX, 0x260(SP)
         .          .    10cd8fa: LEAQ internal/bytealg.IndexString.args_stackmap+688(SB), DX
         .          .    10cd901: MOVQ DX, 0x268(SP)
         .          .    10cd909: MOVQ AX, 0x270(SP)
         .          .    10cd911: MOVQ CX, 0x278(SP)
         .          .    10cd919: LEAQ 0x260(SP), AX
         .          .    10cd921: MOVQ AX, 0(SP)
         .          .    10cd925: MOVQ $0x2, 0x8(SP)
         .          .    10cd92e: MOVQ $0x2, 0x10(SP)
         .          .    10cd937: CALL log.Fatal(SB)
         .          .    10cd93c: JMP 0x10cd77f
         .          .    10cd941: NOPL                                    ;main.go:98
         .          .    10cd942: CALL runtime.deferreturn(SB)
         .          .    10cd947: MOVQ 0x2e0(SP), BP
         .          .    10cd94f: ADDQ $0x2e8, SP
         .          .    10cd956: RET
         .          .    10cd957: CALL main.PrintStats(SB)                ;main.go:89
         .          .    10cd95c: JMP 0x10cd771
         .          .    10cd961: MOVQ 0x1d0(SP), AX                      ;main.go:85
         .          .    10cd969: MOVQ AX, 0(SP)
         .          .    10cd96d: CALL main.(*Graph).PrintAdjList(SB)
         .          .    10cd972: JMP 0x10cd761
         .          .    10cd977: MOVQ CX, 0(SP)                          ;main.go:61
         .          .    10cd97b: MOVQ AX, 0x8(SP)
         .          .    10cd980: CALL runtime.convTstring(SB)
         .          .    10cd985: MOVQ main.dest(SB), AX
         .          .    10cd98c: MOVQ 0x10(SP), CX
         .          .    10cd991: MOVQ CX, 0x1f8(SP)
         .          .    10cd999: MOVQ 0x8(AX), DX
         .          .    10cd99d: MOVQ 0(AX), AX
         .          .    10cd9a0: MOVQ AX, 0(SP)
         .          .    10cd9a4: MOVQ DX, 0x8(SP)
         .          .    10cd9a9: CALL runtime.convTstring(SB)
         .          .    10cd9ae: MOVQ 0x10(SP), AX
         .          .    10cd9b3: XORPS X0, X0
         .          .    10cd9b6: MOVUPS X0, 0x2a0(SP)
         .          .    10cd9be: MOVUPS X0, 0x2b0(SP)
         .          .    10cd9c6: LEAQ runtime.types+88832(SB), CX
         .          .    10cd9cd: MOVQ CX, 0x2a0(SP)
         .          .    10cd9d5: MOVQ 0x1f8(SP), DX
         .          .    10cd9dd: MOVQ DX, 0x2a8(SP)
         .          .    10cd9e5: MOVQ CX, 0x2b0(SP)
         .          .    10cd9ed: MOVQ AX, 0x2b8(SP)
         .          .    10cd9f5: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd9fc: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cda03: MOVQ DX, 0(SP)
         .          .    10cda07: MOVQ AX, 0x8(SP)
         .          .    10cda0c: LEAQ go.string.*+16301(SB), AX
         .          .    10cda13: MOVQ AX, 0x10(SP)
         .          .    10cda18: MOVQ $0x1b, 0x18(SP)
         .          .    10cda21: LEAQ 0x2a0(SP), AX
         .          .    10cda29: MOVQ AX, 0x20(SP)
         .          .    10cda2e: MOVQ $0x2, 0x28(SP)
         .          .    10cda37: MOVQ $0x2, 0x30(SP)
         .          .    10cda40: CALL fmt.Fprintf(SB)
         .          .    10cda45: MOVQ main.src(SB), AX                   ;main.go:62
         .          .    10cda4c: MOVQ 0x8(AX), CX
         .          .    10cda50: MOVQ 0(AX), AX
         .          .    10cda53: MOVQ 0x1d0(SP), DX
         .          .    10cda5b: MOVQ DX, 0(SP)
         .          .    10cda5f: MOVQ AX, 0x8(SP)
         .          .    10cda64: MOVQ CX, 0x10(SP)
         .          .    10cda69: CALL main.(*Graph).Find(SB)
         .          .    10cda6e: MOVQ main.dest(SB), AX                  ;main.go:63
         .          .    10cda75: MOVQ 0x18(SP), CX                       ;main.go:62
         .          .    10cda7a: MOVQ CX, 0x58(SP)
         .          .    10cda7f: MOVQ 0x8(AX), DX                        ;main.go:63
         .          .    10cda83: MOVQ 0(AX), AX
         .          .    10cda86: MOVQ 0x1d0(SP), BX
         .          .    10cda8e: MOVQ BX, 0(SP)
         .          .    10cda92: MOVQ AX, 0x8(SP)
         .          .    10cda97: MOVQ DX, 0x10(SP)
         .          .    10cda9c: CALL main.(*Graph).Find(SB)
         .          .    10cdaa1: MOVQ 0x18(SP), AX
         .          .    10cdaa6: MOVQ 0x58(SP), CX                       ;main.go:65
         .          .    10cdaab: TESTQ CX, CX
         .          .    10cdaae: JL 0x10cdd7a
         .          .    10cdab4: TESTQ AX, AX
         .          .    10cdab7: JL 0x10cdd77
         .          .    10cdabd: XORPS X0, X0                            ;main.go:75
         .          .    10cdac0: MOVUPS X0, 0x220(SP)
         .          .    10cdac8: LEAQ runtime.types+88832(SB), AX
         .          .    10cdacf: MOVQ AX, 0x220(SP)
         .          .    10cdad7: LEAQ internal/bytealg.IndexString.args_stackmap+656(SB), CX
         .          .    10cdade: MOVQ CX, 0x228(SP)
         .          .    10cdae6: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cdaed: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdaf4: MOVQ DX, 0(SP)
         .          .    10cdaf8: MOVQ CX, 0x8(SP)
         .          .    10cdafd: LEAQ 0x220(SP), CX
         .          .    10cdb05: MOVQ CX, 0x10(SP)
         .          .    10cdb0a: MOVQ $0x1, 0x18(SP)
         .          .    10cdb13: MOVQ $0x1, 0x20(SP)
         .          .    10cdb1c: CALL fmt.Fprintln(SB)
         .          .    10cdb21: MOVQ 0x1d0(SP), AX                      ;main.go:76
         .          .    10cdb29: MOVQ AX, 0(SP)
         .          .    10cdb2d: MOVQ 0x58(SP), CX
         .          .    10cdb32: MOVQ CX, 0x8(SP)
         .          .    10cdb37: CALL main.(*Graph).AllPaths(SB)
         .          .    10cdb3c: MOVQ main.dest(SB), AX                  ;main.go:77
         .          .    10cdb43: MOVQ 0x10(SP), CX                       ;main.go:76
         .          .    10cdb48: MOVQ 0x8(AX), DX                        ;main.go:77
         .          .    10cdb4c: MOVQ 0(AX), AX
         .          .    10cdb4f: MOVQ CX, 0(SP)
         .          .    10cdb53: MOVQ AX, 0x8(SP)
         .          .    10cdb58: MOVQ DX, 0x10(SP)
         .          .    10cdb5d: CALL main.(*Paths).To(SB)
         .          .    10cdb62: MOVQ 0x20(SP), AX
         .          .    10cdb67: MOVQ AX, 0x60(SP)
         .          .    10cdb6c: MOVQ 0x18(SP), CX
         .          .    10cdb71: MOVQ CX, 0x1c8(SP)
         .          .    10cdb79: TESTQ AX, AX                            ;main.go:78
         .          .    10cdb7c: JE 0x10cdc89
         .          .    10cdb82: MOVQ 0x1d0(SP), DX                      ;main.go:81
         .          .    10cdb8a: XORL BX, BX
         .          .    10cdb8c: JMP 0x10cdc67
         .          .    10cdb91: MOVQ BX, 0x78(SP)
         .          .    10cdb96: LEAQ 0(SI)(SI*2), AX                    ;main.go:82
         .          .    10cdb9a: MOVQ 0x10(R8)(AX*8), CX
         .          .    10cdb9f: MOVQ 0x8(R8)(AX*8), DX
         .          .    10cdba4: MOVQ 0(R8)(AX*8), AX
         .          .    10cdba8: MOVQ $0x0, 0(SP)
         .          .    10cdbb0: MOVQ AX, 0x8(SP)
         .          .    10cdbb5: MOVQ DX, 0x10(SP)
         .          .    10cdbba: MOVQ CX, 0x18(SP)
         .          .    10cdbbf: CALL runtime.slicebytetostring(SB)
         .          .    10cdbc4: MOVQ 0x28(SP), AX
         .          .    10cdbc9: MOVQ 0x20(SP), CX
         .          .    10cdbce: MOVQ CX, 0(SP)
         .          .    10cdbd2: MOVQ AX, 0x8(SP)
         .          .    10cdbd7: CALL runtime.convTstring(SB)
         .          .    10cdbdc: MOVQ 0x10(SP), AX
         .          .    10cdbe1: XORPS X0, X0
         .          .    10cdbe4: MOVUPS X0, 0x210(SP)
         .          .    10cdbec: LEAQ runtime.types+88832(SB), CX
         .          .    10cdbf3: MOVQ CX, 0x210(SP)
         .          .    10cdbfb: MOVQ AX, 0x218(SP)
         .          .    10cdc03: MOVQ os.Stdout(SB), AX                  ;print.go:274
         .          .    10cdc0a: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdc11: MOVQ DX, 0(SP)
         .          .    10cdc15: MOVQ AX, 0x8(SP)
         .          .    10cdc1a: LEAQ 0x210(SP), AX
         .          .    10cdc22: MOVQ AX, 0x10(SP)
         .          .    10cdc27: MOVQ $0x1, 0x18(SP)
         .          .    10cdc30: MOVQ $0x1, 0x20(SP)
         .          .    10cdc39: CALL fmt.Fprintln(SB)
         .          .    10cdc3e: MOVQ 0x78(SP), AX                       ;main.go:81
         .          .    10cdc43: LEAQ 0x1(AX), BX
         .          .    10cdc47: MOVQ 0x60(SP), AX
         .          .    10cdc4c: MOVQ 0x1d0(SP), CX
         .          .    10cdc54: MOVQ 0x1c8(SP), DX
         .          .    10cdc5c: MOVQ DX, CX
         .          .    10cdc5f: MOVQ 0x1d0(SP), DX                      ;main.go:82
         .          .    10cdc67: CMPQ AX, BX                             ;main.go:81
         .          .    10cdc6a: JGE 0x10cd761
         .          .    10cdc70: MOVQ 0(CX)(BX*8), SI
         .          .    10cdc74: MOVQ 0x8(DX), DI                        ;main.go:82
         .          .    10cdc78: MOVQ 0(DX), R8
         .          .    10cdc7b: CMPQ DI, SI
         .          .    10cdc7e: JB 0x10cdb91
         .          .    10cdc84: JMP 0x10ce1bd
         .          .    10cdc89: MOVQ main.src(SB), AX                   ;main.go:79
         .          .    10cdc90: MOVQ 0x8(AX), CX
         .          .    10cdc94: MOVQ 0(AX), AX
         .          .    10cdc97: MOVQ AX, 0(SP)
         .          .    10cdc9b: MOVQ CX, 0x8(SP)
         .          .    10cdca0: CALL runtime.convTstring(SB)
         .          .    10cdca5: MOVQ main.dest(SB), AX
         .          .    10cdcac: MOVQ 0x10(SP), CX
         .          .    10cdcb1: MOVQ CX, 0x1f8(SP)
         .          .    10cdcb9: MOVQ 0x8(AX), DX
         .          .    10cdcbd: MOVQ 0(AX), AX
         .          .    10cdcc0: MOVQ AX, 0(SP)
         .          .    10cdcc4: MOVQ DX, 0x8(SP)
         .          .    10cdcc9: CALL runtime.convTstring(SB)
         .          .    10cdcce: MOVQ 0x10(SP), AX
         .          .    10cdcd3: XORPS X0, X0
         .          .    10cdcd6: MOVUPS X0, 0x280(SP)
         .          .    10cdcde: MOVUPS X0, 0x290(SP)
         .          .    10cdce6: LEAQ runtime.types+88832(SB), CX
         .          .    10cdced: MOVQ CX, 0x280(SP)
         .          .    10cdcf5: MOVQ 0x1f8(SP), DX
         .          .    10cdcfd: MOVQ DX, 0x288(SP)
         .          .    10cdd05: MOVQ CX, 0x290(SP)
         .          .    10cdd0d: MOVQ AX, 0x298(SP)
         .          .    10cdd15: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdd1c: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdd23: MOVQ DX, 0(SP)
         .          .    10cdd27: MOVQ AX, 0x8(SP)
         .          .    10cdd2c: LEAQ go.string.*+20067(SB), AX
         .          .    10cdd33: MOVQ AX, 0x10(SP)
         .          .    10cdd38: MOVQ $0x1f, 0x18(SP)
         .          .    10cdd41: LEAQ 0x280(SP), AX
         .          .    10cdd49: MOVQ AX, 0x20(SP)
         .          .    10cdd4e: MOVQ $0x2, 0x28(SP)
         .          .    10cdd57: MOVQ $0x2, 0x30(SP)
         .          .    10cdd60: CALL fmt.Fprintf(SB)
         .          .    10cdd65: MOVQ 0x60(SP), AX                       ;main.go:81
         .          .    10cdd6a: MOVQ 0x1c8(SP), CX
         .          .    10cdd72: JMP 0x10cdb82
         .          .    10cdd77: TESTQ CX, CX                            ;main.go:65
         .          .    10cdd7a: JL 0x10cde33                            ;main.go:66
         .          .    10cdd80: TESTQ AX, AX                            ;main.go:69
         .          .    10cdd83: JL 0x10cdd9b
         .          .    10cdd85: NOPL                                    ;main.go:72
         .          .    10cdd86: CALL runtime.deferreturn(SB)
         .          .    10cdd8b: MOVQ 0x2e0(SP), BP
         .          .    10cdd93: ADDQ $0x2e8, SP
         .          .    10cdd9a: RET
         .          .    10cdd9b: MOVQ main.dest(SB), AX                  ;main.go:70
         .          .    10cdda2: MOVQ 0x8(AX), CX
         .          .    10cdda6: MOVQ 0(AX), AX
         .          .    10cdda9: MOVQ AX, 0(SP)
         .          .    10cddad: MOVQ CX, 0x8(SP)
         .          .    10cddb2: CALL runtime.convTstring(SB)
         .          .    10cddb7: MOVQ 0x10(SP), AX
         .          .    10cddbc: XORPS X0, X0
         .          .    10cddbf: MOVUPS X0, 0x230(SP)
         .          .    10cddc7: LEAQ runtime.types+88832(SB), CX
         .          .    10cddce: MOVQ CX, 0x230(SP)
         .          .    10cddd6: MOVQ AX, 0x238(SP)
         .          .    10cddde: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdde5: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cddec: MOVQ CX, 0(SP)
         .          .    10cddf0: MOVQ AX, 0x8(SP)
         .          .    10cddf5: LEAQ go.string.*+7947(SB), AX
         .          .    10cddfc: MOVQ AX, 0x10(SP)
         .          .    10cde01: MOVQ $0x11, 0x18(SP)
         .          .    10cde0a: LEAQ 0x230(SP), AX
         .          .    10cde12: MOVQ AX, 0x20(SP)
         .          .    10cde17: MOVQ $0x1, 0x28(SP)
         .          .    10cde20: MOVQ $0x1, 0x30(SP)
         .          .    10cde29: CALL fmt.Fprintf(SB)
         .          .    10cde2e: JMP 0x10cdd85                           ;main.go:72
         .          .    10cde33: MOVQ AX, 0x50(SP)                       ;main.go:63
         .          .    10cde38: MOVQ main.src(SB), AX                   ;main.go:67
         .          .    10cde3f: MOVQ 0x8(AX), CX
         .          .    10cde43: MOVQ 0(AX), AX
         .          .    10cde46: MOVQ AX, 0(SP)
         .          .    10cde4a: MOVQ CX, 0x8(SP)
         .          .    10cde4f: CALL runtime.convTstring(SB)
         .          .    10cde54: MOVQ 0x10(SP), AX
         .          .    10cde59: XORPS X0, X0
         .          .    10cde5c: MOVUPS X0, 0x240(SP)
         .          .    10cde64: LEAQ runtime.types+88832(SB), CX
         .          .    10cde6b: MOVQ CX, 0x240(SP)
         .          .    10cde73: MOVQ AX, 0x248(SP)
         .          .    10cde7b: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cde82: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cde89: MOVQ DX, 0(SP)
         .          .    10cde8d: MOVQ AX, 0x8(SP)
         .          .    10cde92: LEAQ go.string.*+7947(SB), AX
         .          .    10cde99: MOVQ AX, 0x10(SP)
         .          .    10cde9e: MOVQ $0x11, 0x18(SP)
         .          .    10cdea7: LEAQ 0x240(SP), BX
         .          .    10cdeaf: MOVQ BX, 0x20(SP)
         .          .    10cdeb4: MOVQ $0x1, 0x28(SP)
         .          .    10cdebd: MOVQ $0x1, 0x30(SP)
         .          .    10cdec6: CALL fmt.Fprintf(SB)
         .          .    10cdecb: MOVQ 0x50(SP), AX                       ;main.go:69
         .          .    10cded0: JMP 0x10cdd80
         .          .    10cded5: MOVQ main.dict(SB), AX                  ;main.go:57
         .          .    10cdedc: MOVQ 0x8(AX), CX
         .          .    10cdee0: MOVQ 0(AX), AX
         .          .    10cdee3: MOVQ AX, 0(SP)
         .          .    10cdee7: MOVQ CX, 0x8(SP)
         .          .    10cdeec: CALL main.dictionaryStats(SB)
         .          .    10cdef1: JMP 0x10cd72c
         .          .    10cdef6: MOVQ AX, 0(SP)                          ;main.go:49
         .          .    10cdefa: MOVQ CX, 0x8(SP)
         .          .    10cdeff: CALL main.createPathIfNotExists(SB)
         .          .    10cdf04: JMP 0x10cd57e
         .          .    10cdf09: NOPL                                    ;main.go:39
         .          .    10cdf0a: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cdf0e: MOVQ AX, 0x8(SP)
         .          .    10cdf13: MOVQ $0x602, 0x10(SP)
         .          .    10cdf1c: MOVL $0x1b6, 0x18(SP)
         .          .    10cdf24: CALL os.OpenFile(SB)
         .          .    10cdf29: MOVQ 0x20(SP), AX
         .          .    10cdf2e: MOVQ AX, 0x1d8(SP)
         .          .    10cdf36: MOVQ 0x28(SP), CX
         .          .    10cdf3b: MOVQ 0x30(SP), DX
         .          .    10cdf40: TESTQ CX, CX                            ;main.go:40
         .          .    10cdf43: JE 0x10cdfaf
         .          .    10cdf45: JE 0x10cdf4b                            ;main.go:41
         .          .    10cdf47: MOVQ 0x8(CX), CX
         .          .    10cdf4b: XORPS X0, X0
         .          .    10cdf4e: MOVUPS X0, 0x260(SP)
         .          .    10cdf56: MOVUPS X0, 0x270(SP)
         .          .    10cdf5e: LEAQ runtime.types+88832(SB), AX
         .          .    10cdf65: MOVQ AX, 0x260(SP)
         .          .    10cdf6d: LEAQ internal/bytealg.IndexString.args_stackmap+624(SB), BX
         .          .    10cdf74: MOVQ BX, 0x268(SP)
         .          .    10cdf7c: MOVQ CX, 0x270(SP)
         .          .    10cdf84: MOVQ DX, 0x278(SP)
         .          .    10cdf8c: LEAQ 0x260(SP), CX
         .          .    10cdf94: MOVQ CX, 0(SP)
         .          .    10cdf98: MOVQ $0x2, 0x8(SP)
         .          .    10cdfa1: MOVQ $0x2, 0x10(SP)
         .          .    10cdfaa: CALL log.Fatal(SB)
         .          .    10cdfaf: MOVL $0x18, 0x138(SP)                   ;main.go:43
         .          .    10cdfba: LEAQ go.func.*+293(SB), AX
         .          .    10cdfc1: MOVQ AX, 0x150(SP)
         .          .    10cdfc9: MOVQ 0x1d8(SP), CX
         .          .    10cdfd1: MOVQ CX, 0x168(SP)
         .          .    10cdfd9: LEAQ 0x138(SP), DX
         .          .    10cdfe1: MOVQ DX, 0(SP)
         .          .    10cdfe5: CALL runtime.deferprocStack(SB)
         .          .    10cdfea: TESTL AX, AX
         .          .    10cdfec: JNE 0x10ce055
         .          .    10cdfee: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:44
         .          .    10cdff5: MOVQ AX, 0(SP)
         .          .    10cdff9: MOVQ 0x1d8(SP), CX
         .          .    10ce001: MOVQ CX, 0x8(SP)
         .          .    10ce006: CALL runtime/trace.Start(SB)
         .          .    10ce00b: MOVL $0x0, 0x80(SP)                     ;main.go:45
         .          .    10ce016: LEAQ go.func.*+1597(SB), AX
         .          .    10ce01d: MOVQ AX, 0x98(SP)
         .          .    10ce025: LEAQ 0x80(SP), AX
         .          .    10ce02d: MOVQ AX, 0(SP)
         .          .    10ce031: CALL runtime.deferprocStack(SB)
         .          .    10ce036: TESTL AX, AX
         .          .    10ce038: JNE 0x10ce03f
         .          .    10ce03a: JMP 0x10cd567
         .          .    10ce03f: NOPL
         .          .    10ce040: CALL runtime.deferreturn(SB)
         .          .    10ce045: MOVQ 0x2e0(SP), BP
         .          .    10ce04d: ADDQ $0x2e8, SP
         .          .    10ce054: RET
         .          .    10ce055: NOPL                                    ;main.go:43
         .          .    10ce056: CALL runtime.deferreturn(SB)
         .          .    10ce05b: MOVQ 0x2e0(SP), BP
         .          .    10ce063: ADDQ $0x2e8, SP
         .          .    10ce06a: RET
         .          .    10ce06b: NOPL                                    ;main.go:29
         .          .    10ce06c: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10ce070: MOVQ AX, 0x8(SP)
         .          .    10ce075: MOVQ $0x602, 0x10(SP)
         .          .    10ce07e: MOVL $0x1b6, 0x18(SP)
         .          .    10ce086: CALL os.OpenFile(SB)
         .          .    10ce08b: MOVQ 0x20(SP), AX
         .          .    10ce090: MOVQ AX, 0x1e0(SP)
         .          .    10ce098: MOVQ 0x28(SP), CX
         .          .    10ce09d: MOVQ CX, 0x68(SP)
         .          .    10ce0a2: MOVQ 0x30(SP), DX
         .          .    10ce0a7: MOVQ DX, 0x1e8(SP)
         .          .    10ce0af: MOVL $0x18, 0x180(SP)                   ;main.go:30
         .          .    10ce0ba: LEAQ go.func.*+293(SB), BX
         .          .    10ce0c1: MOVQ BX, 0x198(SP)
         .          .    10ce0c9: MOVQ AX, 0x1b0(SP)
         .          .    10ce0d1: LEAQ 0x180(SP), SI
         .          .    10ce0d9: MOVQ SI, 0(SP)
         .          .    10ce0dd: CALL runtime.deferprocStack(SB)
         .          .    10ce0e2: TESTL AX, AX
         .          .    10ce0e4: JNE 0x10ce1a7
         .          .    10ce0ea: MOVQ 0x68(SP), AX                       ;main.go:31
         .          .    10ce0ef: TESTQ AX, AX
         .          .    10ce0f2: JE 0x10ce140
         .          .    10ce0f4: JE 0x10ce0fa                            ;main.go:32
         .          .    10ce0f6: MOVQ 0x8(AX), AX
         .          .    10ce0fa: XORPS X0, X0
         .          .    10ce0fd: MOVUPS X0, 0x200(SP)
         .          .    10ce105: MOVQ AX, 0x200(SP)
         .          .    10ce10d: MOVQ 0x1e8(SP), AX
         .          .    10ce115: MOVQ AX, 0x208(SP)
         .          .    10ce11d: LEAQ 0x200(SP), AX
         .          .    10ce125: MOVQ AX, 0(SP)
         .          .    10ce129: MOVQ $0x1, 0x8(SP)
         .          .    10ce132: MOVQ $0x1, 0x10(SP)
         .          .    10ce13b: CALL log.Fatal(SB)
         .          .    10ce140: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:34
         .          .    10ce147: MOVQ AX, 0(SP)
         .          .    10ce14b: MOVQ 0x1e0(SP), CX
         .          .    10ce153: MOVQ CX, 0x8(SP)
         .          .    10ce158: CALL runtime/pprof.StartCPUProfile(SB)
         .          .    10ce15d: MOVL $0x0, 0xb8(SP)                     ;main.go:35
         .          .    10ce168: LEAQ go.func.*+1565(SB), AX
         .          .    10ce16f: MOVQ AX, 0xd0(SP)
         .          .    10ce177: LEAQ 0xb8(SP), AX
         .          .    10ce17f: MOVQ AX, 0(SP)
         .          .    10ce183: CALL runtime.deferprocStack(SB)
         .          .    10ce188: TESTL AX, AX
         .          .    10ce18a: JNE 0x10ce191
         .          .    10ce18c: JMP 0x10cd550
         .          .    10ce191: NOPL
         .          .    10ce192: CALL runtime.deferreturn(SB)
         .          .    10ce197: MOVQ 0x2e0(SP), BP
         .          .    10ce19f: ADDQ $0x2e8, SP
         .          .    10ce1a6: RET
         .          .    10ce1a7: NOPL                                    ;main.go:30
         .          .    10ce1a8: CALL runtime.deferreturn(SB)
         .          .    10ce1ad: MOVQ 0x2e0(SP), BP
         .          .    10ce1b5: ADDQ $0x2e8, SP
         .          .    10ce1bc: RET
         .          .    10ce1bd: MOVQ SI, AX                             ;main.go:82
         .          .    10ce1c0: MOVQ DI, CX
         .          .    10ce1c3: CALL runtime.panicIndex(SB)
         .          .    10ce1c8: MOVL $0x1, AX                           ;flag.go:996
         .          .    10ce1cd: CALL runtime.panicSliceB(SB)
         .          .    10ce1d2: NOPL
         .          .    10ce1d3: CALL runtime.morestack_noctxt(SB)       ;main.go:25
         .          .    10ce1d8: JMP main.main(SB)
         .          .    10ce1dd: INT $0x3
         .          .    10ce1de: INT $0x3
ROUTINE ======================== main.newIndex
     192MB      192MB (flat, cum) 22.89% of Total
         .          .    10cbf30: MOVQ GS:0x30, CX                        ;index.go:18
         .          .    10cbf39: CMPQ 0x10(CX), SP
         .          .    10cbf3d: JBE 0x10cc13e
         .          .    10cbf43: SUBQ $0x48, SP
         .          .    10cbf47: MOVQ BP, 0x40(SP)
         .          .    10cbf4c: LEAQ 0x40(SP), BP
         .          .    10cbf51: LEAQ runtime.types+77440(SB), AX        ;index.go:19
         .          .    10cbf58: MOVQ AX, 0(SP)
         .          .    10cbf5c: MOVQ 0x50(SP), AX
         .          .    10cbf61: MOVQ AX, 0x8(SP)
         .          .    10cbf66: MOVQ AX, 0x10(SP)
     192MB      192MB    10cbf6b: CALL runtime.makeslice(SB)              ;main.newIndex index.go:19
         .          .    10cbf70: MOVQ 0x18(SP), AX                       ;index.go:19
         .          .    10cbf75: MOVQ AX, 0x38(SP)
         .          .    10cbf7a: XORL CX, CX
         .          .    10cbf7c: JMP 0x10cbf85                           ;index.go:20
         .          .    10cbf7e: LEAQ 0x1(AX), CX
         .          .    10cbf82: MOVQ BX, AX                             ;index.go:21
         .          .    10cbf85: MOVQ 0x50(SP), DX                       ;index.go:20
         .          .    10cbf8a: CMPQ DX, CX
         .          .    10cbf8d: JGE 0x10cbff4
         .          .    10cbf8f: MOVQ CX, 0x20(SP)
         .          .    10cbf94: LEAQ runtime.types+86144(SB), AX        ;index.go:21
         .          .    10cbf9b: MOVQ AX, 0(SP)
         .          .    10cbf9f: XORPS X0, X0
         .          .    10cbfa2: MOVUPS X0, 0x8(SP)
         .          .    10cbfa7: CALL runtime.makeslice(SB)
         .          .    10cbfac: MOVQ 0x20(SP), AX
         .          .    10cbfb1: LEAQ 0(AX)(AX*2), CX
         .          .    10cbfb5: MOVQ 0x18(SP), DX
         .          .    10cbfba: MOVQ 0x38(SP), BX
         .          .    10cbfbf: MOVQ $0x0, 0x8(BX)(CX*8)
         .          .    10cbfc8: MOVQ $0x0, 0x10(BX)(CX*8)
         .          .    10cbfd1: LEAQ 0(BX)(CX*8), DI
         .          .    10cbfd5: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbfdc: JNE 0x10cbfe4
         .          .    10cbfde: MOVQ DX, 0(BX)(CX*8)
         .          .    10cbfe2: JMP 0x10cbf7e
         .          .    10cbfe4: MOVQ AX, CX                             ;index.go:20
         .          .    10cbfe7: MOVQ DX, AX                             ;index.go:21
         .          .    10cbfea: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbfef: MOVQ CX, AX                             ;index.go:20
         .          .    10cbff2: JMP 0x10cbf7e                           ;index.go:21
         .          .    10cbff4: NOPL                                    ;murmur64.go:18
         .          .    10cbff5: MOVL $0x0, 0(SP)                        ;murmur64.go:22
         .          .    10cbffc: CALL erichgess/wordladder/vendor/github.com/spaolacci/murmur3.New128WithSeed(SB)
         .          .    10cc001: MOVQ 0x10(SP), AX
         .          .    10cc006: MOVQ 0x8(SP), CX
         .          .    10cc00b: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest128,erichgess/wordladder/vendor/github.com/spaolacci/murmur3.Hash128(SB), DX
         .          .    10cc012: CMPQ DX, CX
         .          .    10cc015: JNE 0x10cc11c
         .          .    10cc01b: MOVQ AX, 0x28(SP)
         .          .    10cc020: LEAQ runtime.types+89152(SB), AX        ;index.go:25
         .          .    10cc027: MOVQ AX, 0(SP)
         .          .    10cc02b: MOVQ $0x0, 0x8(SP)
         .          .    10cc034: MOVQ 0x58(SP), AX
         .          .    10cc039: MOVQ AX, 0x10(SP)
         .          .    10cc03e: CALL runtime.makeslice(SB)
         .          .    10cc043: MOVQ 0x18(SP), AX
         .          .    10cc048: MOVQ AX, 0x30(SP)
         .          .    10cc04d: LEAQ runtime.types+196192(SB), CX       ;index.go:27
         .          .    10cc054: MOVQ CX, 0(SP)
         .          .    10cc058: CALL runtime.newobject(SB)
         .          .    10cc05d: MOVQ 0x8(SP), AX
                                                                          ;index.go:24
         .          .    10cc062: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest64,hash.Hash64(SB), CX
         .          .    10cc069: MOVQ CX, 0(AX)
         .          .    10cc06c: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc073: JNE 0x10cc103
         .          .    10cc079: MOVQ 0x28(SP), CX
         .          .    10cc07e: MOVQ CX, 0x8(AX)
         .          .    10cc082: MOVQ $0x0, 0x30(AX)                     ;index.go:25
         .          .    10cc08a: MOVQ 0x58(SP), CX
         .          .    10cc08f: MOVQ CX, 0x38(AX)
         .          .    10cc093: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc09a: JNE 0x10cc0ed
         .          .    10cc09c: MOVQ 0x30(SP), CX
         .          .    10cc0a1: MOVQ CX, 0x28(AX)
         .          .    10cc0a5: MOVQ 0x50(SP), CX                       ;index.go:26
         .          .    10cc0aa: MOVQ CX, 0x18(AX)
         .          .    10cc0ae: MOVQ CX, 0x20(AX)
         .          .    10cc0b2: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc0b9: JNE 0x10cc0d7
         .          .    10cc0bb: MOVQ 0x38(SP), DX
         .          .    10cc0c0: MOVQ DX, 0x10(AX)
         .          .    10cc0c4: MOVQ CX, 0x40(AX)                       ;index.go:27
         .          .    10cc0c8: MOVQ AX, 0x60(SP)                       ;index.go:23
         .          .    10cc0cd: MOVQ 0x40(SP), BP
         .          .    10cc0d2: ADDQ $0x48, SP
         .          .    10cc0d6: RET
         .          .    10cc0d7: LEAQ 0x10(AX), DI                       ;index.go:26
         .          .    10cc0db: MOVQ AX, DX                             ;index.go:27
         .          .    10cc0de: MOVQ 0x38(SP), AX                       ;index.go:26
         .          .    10cc0e3: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc0e8: MOVQ DX, AX                             ;index.go:27
         .          .    10cc0eb: JMP 0x10cc0c4                           ;index.go:26
         .          .    10cc0ed: LEAQ 0x28(AX), DI                       ;index.go:25
         .          .    10cc0f1: MOVQ AX, CX                             ;index.go:27
         .          .    10cc0f4: MOVQ 0x30(SP), AX                       ;index.go:25
         .          .    10cc0f9: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc0fe: MOVQ CX, AX                             ;index.go:26
         .          .    10cc101: JMP 0x10cc0a5                           ;index.go:25
         .          .    10cc103: LEAQ 0x8(AX), DI                        ;index.go:24
         .          .    10cc107: MOVQ AX, CX                             ;index.go:27
         .          .    10cc10a: MOVQ 0x28(SP), AX                       ;index.go:24
         .          .    10cc10f: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc114: MOVQ CX, AX                             ;index.go:25
         .          .    10cc117: JMP 0x10cc082                           ;index.go:24
         .          .    10cc11c: MOVQ CX, 0(SP)                          ;murmur64.go:22
         .          .    10cc120: LEAQ runtime.types+201088(SB), AX
         .          .    10cc127: MOVQ AX, 0x8(SP)
         .          .    10cc12c: LEAQ runtime.types+156704(SB), AX
         .          .    10cc133: MOVQ AX, 0x10(SP)
         .          .    10cc138: CALL runtime.panicdottypeI(SB)
         .          .    10cc13d: NOPL
         .          .    10cc13e: CALL runtime.morestack_noctxt(SB)       ;index.go:18
         .          .    10cc143: JMP main.newIndex(SB)
         .          .    10cc148: INT $0x3
         .          .    10cc149: INT $0x3
         .          .    10cc14a: INT $0x3
         .          .    10cc14b: INT $0x3
         .          .    10cc14c: INT $0x3
         .          .    10cc14d: INT $0x3
         .          .    10cc14e: INT $0x3
ROUTINE ======================== runtime.main
         0   838.71MB (flat, cum)   100% of Total
         .          .    102caf0: MOVQ GS:0x30, CX                        ;proc.go:113
         .          .    102caf9: CMPQ 0x10(CX), SP
         .          .    102cafd: JBE 0x102ce70
         .          .    102cb03: SUBQ $0x78, SP
         .          .    102cb07: MOVQ BP, 0x70(SP)
         .          .    102cb0c: LEAQ 0x70(SP), BP
         .          .    102cb11: MOVQ GS:0x30, AX                        ;proc.go:114
         .          .    102cb1a: MOVQ AX, 0x68(SP)
         .          .    102cb1f: MOVQ 0x30(AX), CX                       ;proc.go:118
         .          .    102cb23: MOVQ 0(CX), CX
         .          .    102cb26: MOVQ $0x0, 0x130(CX)
                                                                          ;proc.go:124
         .          .    102cb31: MOVQ $0x3b9aca00, runtime.maxstacksize(SB)
         .          .    102cb3c: MOVB $0x1, runtime.mainStarted(SB)      ;proc.go:130
         .          .    102cb43: LEAQ go.func.*+949(SB), CX              ;proc.go:133
         .          .    102cb4a: MOVQ CX, 0(SP)
         .          .    102cb4e: CALL runtime.systemstack(SB)
         .          .    102cb53: MOVQ GS:0x30, AX                        ;proc.go:3550
         .          .    102cb5c: MOVQ 0x30(AX), AX
         .          .    102cb60: NOPL                                    ;proc.go:144
         .          .    102cb61: INCL 0x274(AX)                          ;proc.go:3550
         .          .    102cb67: MOVQ GS:0x30, AX                        ;proc.go:3511
         .          .    102cb70: MOVQ 0x30(AX), CX                       ;proc.go:3512
         .          .    102cb74: NOPL                                    ;proc.go:3551
         .          .    102cb75: MOVQ AX, DX                             ;runtime2.go:254
         .          .    102cb78: MOVQ AX, 0x168(CX)
         .          .    102cb7f: MOVQ 0x30(DX), AX                       ;proc.go:3513
         .          .    102cb83: MOVQ AX, 0xd8(DX)                       ;runtime2.go:292
         .          .    102cb8a: MOVQ 0x68(SP), AX                       ;proc.go:146
         .          .    102cb8f: MOVQ 0x30(AX), AX
         .          .    102cb93: LEAQ runtime.m0(SB), CX
         .          .    102cb9a: CMPQ CX, AX
         .          .    102cb9d: JNE 0x102ce56
         .          .    102cba3: LEAQ runtime..inittask(SB), AX          ;proc.go:150
         .          .    102cbaa: MOVQ AX, 0(SP)
         .          .    102cbae: CALL runtime.doInit(SB)
         .          .    102cbb3: CALL runtime.nanotime(SB)               ;proc.go:151
         .          .    102cbb8: CMPQ $0x0, 0(SP)
         .          .    102cbbd: JE 0x102ce3d
         .          .    102cbc3: MOVB $0x1, 0x27(SP)                     ;proc.go:156
         .          .    102cbc8: MOVL $0x8, 0x30(SP)                     ;proc.go:157
         .          .    102cbd0: LEAQ go.func.*+957(SB), AX
         .          .    102cbd7: MOVQ AX, 0x48(SP)
         .          .    102cbdc: LEAQ 0x27(SP), AX
         .          .    102cbe1: MOVQ AX, 0x60(SP)
         .          .    102cbe6: LEAQ 0x30(SP), AX
         .          .    102cbeb: MOVQ AX, 0(SP)
         .          .    102cbef: CALL runtime.deferprocStack(SB)
         .          .    102cbf4: TESTL AX, AX
         .          .    102cbf6: JNE 0x102cdc9
         .          .    102cbfc: CALL runtime.nanotime(SB)               ;proc.go:164
         .          .    102cc01: MOVQ 0(SP), AX
         .          .    102cc05: MOVQ AX, runtime.runtimeInitTime(SB)
         .          .    102cc0c: CALL runtime.gcenable(SB)               ;proc.go:166
         .          .    102cc11: LEAQ runtime.types+83392(SB), AX        ;proc.go:168
         .          .    102cc18: MOVQ AX, 0(SP)
         .          .    102cc1c: MOVQ $0x0, 0x8(SP)
         .          .    102cc25: CALL runtime.makechan(SB)
         .          .    102cc2a: MOVQ 0x10(SP), AX
         .          .    102cc2f: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    102cc36: JNE 0x102cdb8
         .          .    102cc3c: MOVQ AX, runtime.main_init_done(SB)
         .          .    102cc43: CMPB $0x0, runtime.iscgo(SB)            ;proc.go:169
         .          .    102cc4a: JE 0x102ccba
         .          .    102cc4c: CMPQ $0x0, __cgo_thread_start(SB)       ;proc.go:170
         .          .    102cc54: JE 0x102ce24
         .          .    102cc5a: CMPQ $0x0, runtime._cgo_setenv(SB)      ;proc.go:174
         .          .    102cc62: JE 0x102ce0b
         .          .    102cc68: CMPQ $0x0, runtime._cgo_unsetenv(SB)    ;proc.go:177
         .          .    102cc70: JE 0x102cdf2
                                                                          ;proc.go:181
         .          .    102cc76: CMPQ $0x0, __cgo_notify_runtime_init_done(SB)
         .          .    102cc7e: JE 0x102cdd9
         .          .    102cc84: XORL AX, AX                             ;proc.go:1865
         .          .    102cc86: LEAQ runtime.newmHandoff+32(SB), CX
         .          .    102cc8d: MOVL $0x1, DX
         .          .    102cc92: LOCK CMPXCHGL DX, 0(CX)
         .          .    102cc96: SETE CL
         .          .    102cc99: TESTL CL, CL
         .          .    102cc9b: JNE 0x102cd9a
                                                                          ;proc.go:187
         .          .    102cca1: MOVQ __cgo_notify_runtime_init_done(SB), AX
         .          .    102cca8: MOVQ AX, 0(SP)
         .          .    102ccac: MOVQ $0x0, 0x8(SP)
         .          .    102ccb5: CALL runtime.cgocall(SB)
         .          .    102ccba: LEAQ main..inittask(SB), AX             ;proc.go:190
         .          .    102ccc1: MOVQ AX, 0(SP)
         .          .    102ccc5: CALL runtime.doInit(SB)
         .          .    102ccca: MOVQ runtime.main_init_done(SB), AX     ;proc.go:192
         .          .    102ccd1: MOVQ AX, 0(SP)
         .          .    102ccd5: CALL runtime.closechan(SB)
         .          .    102ccda: MOVB $0x0, 0x27(SP)                     ;proc.go:194
         .          .    102ccdf: CALL runtime.unlockOSThread(SB)         ;proc.go:195
         .          .    102cce4: CMPB $0x0, runtime.isarchive(SB)        ;proc.go:197
         .          .    102cceb: JNE 0x102cd8a
         .          .    102ccf1: CMPB $0x0, runtime.islibrary(SB)
         .          .    102ccf8: JNE 0x102cd8a
         .          .    102ccfe: MOVQ go.func.*+965(SB), AX              ;proc.go:203
         .          .    102cd05: LEAQ go.func.*+965(SB), DX
         .   838.71MB    102cd0c: CALL AX                                 ;runtime.main proc.go:203
         .          .    102cd0e: MOVL runtime.runningPanicDefers(SB), AX ;proc.go:212
         .          .    102cd14: TESTL AX, AX
         .          .    102cd16: JE 0x102cd4c
         .          .    102cd18: XORL AX, AX
         .          .    102cd1a: JMP 0x102cd3a                           ;proc.go:214
         .          .    102cd1c: MOVQ AX, 0x28(SP)
         .          .    102cd21: NOPL                                    ;proc.go:218
         .          .    102cd22: LEAQ go.func.*+893(SB), AX              ;proc.go:269
         .          .    102cd29: MOVQ AX, 0(SP)
         .          .    102cd2d: CALL runtime.mcall(SB)
         .          .    102cd32: MOVQ 0x28(SP), AX                       ;proc.go:214
         .          .    102cd37: INCQ AX
         .          .    102cd3a: CMPQ $0x3e8, AX
         .          .    102cd40: JGE 0x102cd4c
         .          .    102cd42: MOVL runtime.runningPanicDefers(SB), CX ;proc.go:215
         .          .    102cd48: TESTL CX, CX
         .          .    102cd4a: JNE 0x102cd1c
         .          .    102cd4c: MOVL runtime.panicking(SB), AX          ;proc.go:221
         .          .    102cd52: TESTL AX, AX
         .          .    102cd54: JNE 0x102cd6c
         .          .    102cd56: MOVL $0x0, 0(SP)                        ;proc.go:225
         .          .    102cd5d: CALL runtime.exit(SB)
         .          .    102cd62: XORL AX, AX                             ;proc.go:228
         .          .    102cd64: MOVL $0x0, 0(AX)
         .          .    102cd6a: JMP 0x102cd62
         .          .    102cd6c: XORPS X0, X0                            ;proc.go:222
         .          .    102cd6f: MOVUPS X0, 0(SP)
         .          .    102cd73: MOVW $0x1008, 0x10(SP)
         .          .    102cd7a: MOVQ $0x1, 0x18(SP)
         .          .    102cd83: CALL runtime.gopark(SB)
         .          .    102cd88: JMP 0x102cd56
         .          .    102cd8a: NOPL                                    ;proc.go:200
         .          .    102cd8b: CALL runtime.deferreturn(SB)
         .          .    102cd90: MOVQ 0x70(SP), BP
         .          .    102cd95: ADDQ $0x78, SP
         .          .    102cd99: RET
         .          .    102cd9a: LEAQ go.func.*+1509(SB), AX             ;proc.go:1868
         .          .    102cda1: MOVQ AX, 0(SP)
         .          .    102cda5: MOVQ $0x0, 0x8(SP)
         .          .    102cdae: CALL runtime.newm(SB)
         .          .    102cdb3: JMP 0x102cca1                           ;proc.go:186
         .          .    102cdb8: LEAQ runtime.main_init_done(SB), DI     ;proc.go:168
         .          .    102cdbf: CALL runtime.gcWriteBarrier(SB)
         .          .    102cdc4: JMP 0x102cc43
         .          .    102cdc9: NOPL                                    ;proc.go:157
         .          .    102cdca: CALL runtime.deferreturn(SB)
         .          .    102cdcf: MOVQ 0x70(SP), BP
         .          .    102cdd4: ADDQ $0x78, SP
         .          .    102cdd8: RET
         .          .    102cdd9: LEAQ go.string.*+25266(SB), AX          ;proc.go:182
         .          .    102cde0: MOVQ AX, 0(SP)
         .          .    102cde4: MOVQ $0x25, 0x8(SP)
         .          .    102cded: CALL runtime.throw(SB)
         .          .    102cdf2: LEAQ go.string.*+11922(SB), AX          ;proc.go:178
         .          .    102cdf9: MOVQ AX, 0(SP)
         .          .    102cdfd: MOVQ $0x15, 0x8(SP)
         .          .    102ce06: CALL runtime.throw(SB)
         .          .    102ce0b: LEAQ go.string.*+9877(SB), AX           ;proc.go:175
         .          .    102ce12: MOVQ AX, 0(SP)
         .          .    102ce16: MOVQ $0x13, 0x8(SP)
         .          .    102ce1f: CALL runtime.throw(SB)
         .          .    102ce24: LEAQ go.string.*+15054(SB), AX          ;proc.go:171
         .          .    102ce2b: MOVQ AX, 0(SP)
         .          .    102ce2f: MOVQ $0x19, 0x8(SP)
         .          .    102ce38: CALL runtime.throw(SB)
         .          .    102ce3d: LEAQ go.string.*+13898(SB), AX          ;proc.go:152
         .          .    102ce44: MOVQ AX, 0(SP)
         .          .    102ce48: MOVQ $0x17, 0x8(SP)
         .          .    102ce51: CALL runtime.throw(SB)
         .          .    102ce56: LEAQ go.string.*+13017(SB), AX          ;proc.go:147
         .          .    102ce5d: MOVQ AX, 0(SP)
         .          .    102ce61: MOVQ $0x16, 0x8(SP)
         .          .    102ce6a: CALL runtime.throw(SB)
         .          .    102ce6f: NOPL
         .          .    102ce70: CALL runtime.morestack_noctxt(SB)       ;proc.go:113
         .          .    102ce75: JMP runtime.main(SB)
         .          .    102ce7a: INT $0x3
         .          .    102ce7b: INT $0x3
         .          .    102ce7c: INT $0x3
         .          .    102ce7d: INT $0x3
         .          .    102ce7e: INT $0x3
