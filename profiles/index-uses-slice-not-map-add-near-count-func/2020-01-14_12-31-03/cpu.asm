Total: 7.07s
ROUTINE ======================== main.(*Graph).buildAdjList
     640ms      2.60s (flat, cum) 36.78% of Total
         .          .    10ca200: MOVQ GS:0x30, CX                        ;graph.go:101
         .          .    10ca209: LEAQ -0x60(SP), AX
         .          .    10ca20e: CMPQ 0x10(CX), AX
         .          .    10ca212: JBE 0x10ca6be
         .          .    10ca218: SUBQ $0xe0, SP
         .          .    10ca21f: MOVQ BP, 0xd8(SP)
         .          .    10ca227: LEAQ 0xd8(SP), BP
         .          .    10ca22f: XORL AX, AX
         .          .    10ca231: XORL CX, CX
         .          .    10ca233: JMP 0x10ca4df                           ;graph.go:103
      10ms       10ms    10ca238: MOVQ 0x88(SP), R10                      ;main.(*Graph).buildAdjList graph.go:109
         .          .    10ca240: LEAQ 0x1(R10), R9                       ;graph.go:109
         .          .    10ca244: MOVQ 0x78(SP), R10
         .          .    10ca249: MOVQ 0x70(SP), R11
         .          .    10ca24e: MOVQ 0x98(SP), R12
         .          .    10ca256: MOVQ 0x68(SP), R13
         .          .    10ca25b: MOVQ 0xc0(SP), R14
         .          .    10ca263: MOVQ R10, AX
         .          .    10ca266: MOVQ 0x50(SP), CX                       ;graph.go:106
         .          .    10ca26b: MOVQ R11, DX                            ;graph.go:110
         .          .    10ca26e: MOVQ 0xe8(SP), BX
         .          .    10ca276: MOVQ R12, SI
         .          .    10ca279: MOVQ R13, DI
         .          .    10ca27c: MOVQ R14, R8                            ;graph.go:109
         .          .    10ca27f: CMPQ AX, R9
         .          .    10ca282: JGE 0x10ca4d6
     540ms      540ms    10ca288: MOVQ 0(R8)(R9*8), R10                   ;main.(*Graph).buildAdjList graph.go:109
         .          .    10ca28c: MOVQ 0x8(BX), R11                       ;graph.go:110
         .          .    10ca290: MOVQ 0(BX), R12
         .          .    10ca293: CMPQ R11, R10
         .          .    10ca296: JAE 0x10ca6b2
         .          .    10ca29c: MOVQ R9, 0x88(SP)                       ;graph.go:109
         .          .    10ca2a4: MOVQ R10, 0x58(SP)
         .          .    10ca2a9: LEAQ 0(R10)(R10*2), AX                  ;graph.go:110
         .          .    10ca2ad: MOVQ AX, 0x80(SP)
         .          .    10ca2b5: MOVQ 0(R12)(AX*8), CX
      30ms       30ms    10ca2b9: MOVQ 0x10(R12)(AX*8), BX                ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca2be: MOVQ 0x8(R12)(AX*8), R8                 ;graph.go:110
         .          .    10ca2c3: MOVQ SI, 0(SP)
         .          .    10ca2c7: MOVQ DI, 0x8(SP)
         .          .    10ca2cc: MOVQ DX, 0x10(SP)
         .          .    10ca2d1: MOVQ CX, 0x18(SP)
         .          .    10ca2d6: MOVQ R8, 0x20(SP)
         .          .    10ca2db: MOVQ BX, 0x28(SP)
         .      120ms    10ca2e0: CALL main.distance(SB)                  ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca2e5: CMPQ $0x1, 0x30(SP)                     ;graph.go:110
      20ms       20ms    10ca2eb: JNE 0x10ca4bc                           ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca2f1: MOVQ 0xe8(SP), DX                       ;graph.go:111
      10ms       10ms    10ca2f9: MOVQ 0x18(DX), BX                       ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca2fd: MOVQ 0x20(DX), CX                       ;graph.go:111
         .          .    10ca301: MOVQ 0x60(SP), AX
         .          .    10ca306: CMPQ CX, AX
         .          .    10ca309: JAE 0x10ca6ad
         .          .    10ca30f: MOVQ 0x90(SP), SI
         .          .    10ca317: MOVQ 0x10(BX)(SI*8), DI
         .          .    10ca31c: MOVQ 0x8(BX)(SI*8), R8
         .          .    10ca321: MOVQ 0(BX)(SI*8), R9
         .          .    10ca325: LEAQ 0x1(R8), R10
         .          .    10ca329: LEAQ 0(BX)(SI*8), R11
         .          .    10ca32d: CMPQ DI, R10
         .          .    10ca330: JA 0x10ca425
         .          .    10ca336: LEAQ 0x1(R8), DI
         .          .    10ca33a: MOVQ DI, 0x8(BX)(SI*8)
         .          .    10ca33f: MOVQ 0x58(SP), BX
         .          .    10ca344: MOVQ BX, 0(R9)(R8*8)
         .          .    10ca348: MOVQ 0x20(DX), CX                       ;graph.go:112
         .          .    10ca34c: MOVQ 0x18(DX), DI
         .          .    10ca350: CMPQ CX, BX
         .          .    10ca353: JAE 0x10ca6a5
         .          .    10ca359: MOVQ 0x80(SP), BX
         .          .    10ca361: MOVQ 0(DI)(BX*8), R8
         .          .    10ca365: MOVQ 0x10(DI)(BX*8), R9
      10ms       10ms    10ca36a: MOVQ 0x8(DI)(BX*8), R10                 ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca36f: LEAQ 0x1(R10), R11                      ;graph.go:112
         .          .    10ca373: LEAQ 0(DI)(BX*8), R12
         .          .    10ca377: CMPQ R9, R11
         .          .    10ca37a: JA 0x10ca38e
         .          .    10ca37c: LEAQ 0x1(R10), R9
         .          .    10ca380: MOVQ R9, 0x8(DI)(BX*8)
         .          .    10ca385: MOVQ AX, 0(R8)(R10*8)
      10ms       10ms    10ca389: JMP 0x10ca238                           ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca38e: MOVQ R12, 0xb8(SP)                      ;graph.go:112
         .          .    10ca396: MOVQ DI, 0xb0(SP)
         .          .    10ca39e: LEAQ runtime.types+85760(SB), AX
         .          .    10ca3a5: MOVQ AX, 0(SP)
         .          .    10ca3a9: MOVQ R8, 0x8(SP)
         .          .    10ca3ae: MOVQ R10, 0x10(SP)
         .          .    10ca3b3: MOVQ R9, 0x18(SP)
         .          .    10ca3b8: MOVQ R11, 0x20(SP)
         .      210ms    10ca3bd: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca3c2: MOVQ 0x28(SP), AX                       ;graph.go:112
         .          .    10ca3c7: MOVQ 0x30(SP), CX
         .          .    10ca3cc: MOVQ 0x38(SP), DX
         .          .    10ca3d1: MOVQ 0x80(SP), BX
         .          .    10ca3d9: MOVQ 0xb0(SP), SI
         .          .    10ca3e1: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca3e6: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca3ed: JNE 0x10ca416
         .          .    10ca3ef: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca3f3: MOVQ 0xe8(SP), DX                       ;graph.go:110
         .          .    10ca3fb: MOVQ SI, DI                             ;graph.go:112
         .          .    10ca3fe: MOVQ CX, R10
         .          .    10ca401: MOVQ AX, R8
         .          .    10ca404: MOVQ 0x60(SP), AX
         .          .    10ca409: MOVQ 0x90(SP), SI                       ;graph.go:111
         .          .    10ca411: JMP 0x10ca37c                           ;graph.go:112
         .          .    10ca416: MOVQ 0xb8(SP), DI
         .          .    10ca41e: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca423: JMP 0x10ca3f3
         .          .    10ca425: MOVQ BX, 0xa8(SP)                       ;graph.go:111
         .          .    10ca42d: MOVQ R11, 0xa0(SP)
         .          .    10ca435: LEAQ runtime.types+85760(SB), AX
         .          .    10ca43c: MOVQ AX, 0(SP)
         .          .    10ca440: MOVQ R9, 0x8(SP)
         .          .    10ca445: MOVQ R8, 0x10(SP)
         .          .    10ca44a: MOVQ DI, 0x18(SP)
         .          .    10ca44f: MOVQ R10, 0x20(SP)
         .      260ms    10ca454: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca459: MOVQ 0x28(SP), AX                       ;graph.go:111
         .          .    10ca45e: MOVQ 0x30(SP), CX
         .          .    10ca463: MOVQ 0x38(SP), DX
         .          .    10ca468: MOVQ 0x90(SP), BX
         .          .    10ca470: MOVQ 0xa8(SP), SI
         .          .    10ca478: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca47d: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca484: JNE 0x10ca4ad
         .          .    10ca486: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca48a: MOVQ 0xe8(SP), DX                       ;graph.go:112
         .          .    10ca492: MOVQ SI, BX                             ;graph.go:111
         .          .    10ca495: MOVQ 0x90(SP), SI
         .          .    10ca49d: MOVQ CX, R8
         .          .    10ca4a0: MOVQ AX, R9
         .          .    10ca4a3: MOVQ 0x60(SP), AX                       ;graph.go:112
         .          .    10ca4a8: JMP 0x10ca336                           ;graph.go:111
         .          .    10ca4ad: MOVQ 0xa0(SP), DI
         .          .    10ca4b5: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca4ba: JMP 0x10ca48a
         .          .    10ca4bc: MOVQ 0x60(SP), AX                       ;graph.go:103
         .          .    10ca4c1: MOVQ 0xe8(SP), DX                       ;graph.go:110
         .          .    10ca4c9: MOVQ 0x90(SP), SI                       ;graph.go:111
         .          .    10ca4d1: JMP 0x10ca238                           ;graph.go:109
         .          .    10ca4d6: MOVQ 0x60(SP), DX                       ;graph.go:103
         .          .    10ca4db: LEAQ 0x1(DX), AX
         .          .    10ca4df: MOVQ 0xe8(SP), DX
         .          .    10ca4e7: MOVQ 0x8(DX), BX
         .          .    10ca4eb: MOVQ 0(DX), SI
         .          .    10ca4ee: CMPQ BX, AX
         .          .    10ca4f1: JGE 0x10ca600
         .          .    10ca4f7: MOVQ AX, 0x60(SP)
         .          .    10ca4fc: MOVQ CX, 0x50(SP)                       ;graph.go:106
         .          .    10ca501: LEAQ 0(AX)(AX*2), CX                    ;graph.go:104
         .          .    10ca505: MOVQ CX, 0x90(SP)
         .          .    10ca50d: MOVQ 0x10(SI)(CX*8), DX
         .          .    10ca512: MOVQ DX, 0x70(SP)
         .          .    10ca517: MOVQ 0x8(SI)(CX*8), BX
         .          .    10ca51c: MOVQ BX, 0x68(SP)
         .          .    10ca521: MOVQ 0(SI)(CX*8), SI
         .          .    10ca525: MOVQ SI, 0x98(SP)
         .          .    10ca52d: MOVQ 0xf0(SP), DI                       ;graph.go:105
         .          .    10ca535: MOVQ DI, 0(SP)
         .          .    10ca539: MOVQ SI, 0x8(SP)
         .          .    10ca53e: MOVQ BX, 0x10(SP)
         .          .    10ca543: MOVQ DX, 0x18(SP)
         .      380ms    10ca548: CALL main.(*index).nearCount(SB)        ;main.(*Graph).buildAdjList graph.go:105
         .          .    10ca54d: MOVQ 0x20(SP), AX                       ;graph.go:105
         .          .    10ca552: MOVQ AX, 0x78(SP)
      10ms       10ms    10ca557: LEAQ runtime.types+85760(SB), CX        ;main.(*Graph).buildAdjList graph.go:107
         .          .    10ca55e: MOVQ CX, 0(SP)                          ;graph.go:107
         .          .    10ca562: MOVQ AX, 0x8(SP)
         .          .    10ca567: MOVQ AX, 0x10(SP)
         .      140ms    10ca56c: CALL runtime.makeslice(SB)              ;main.(*Graph).buildAdjList graph.go:107
         .          .    10ca571: MOVQ 0x18(SP), AX                       ;graph.go:107
         .          .    10ca576: MOVQ AX, 0xc0(SP)
         .          .    10ca57e: MOVQ 0xf0(SP), CX                       ;graph.go:108
         .          .    10ca586: MOVQ CX, 0(SP)
         .          .    10ca58a: MOVQ 0x98(SP), DX
         .          .    10ca592: MOVQ DX, 0x8(SP)
         .          .    10ca597: MOVQ 0x68(SP), BX
         .          .    10ca59c: MOVQ BX, 0x10(SP)
         .          .    10ca5a1: MOVQ 0x70(SP), SI
         .          .    10ca5a6: MOVQ SI, 0x18(SP)
         .          .    10ca5ab: MOVQ AX, 0x20(SP)
         .          .    10ca5b0: MOVQ 0x78(SP), DI
         .          .    10ca5b5: MOVQ DI, 0x28(SP)
         .          .    10ca5ba: MOVQ DI, 0x30(SP)
         .      850ms    10ca5bf: CALL main.(*index).near(SB)             ;main.(*Graph).buildAdjList graph.go:108
         .          .    10ca5c4: MOVQ 0x78(SP), AX                       ;graph.go:106
         .          .    10ca5c9: MOVQ 0x50(SP), CX
         .          .    10ca5ce: ADDQ AX, CX
         .          .    10ca5d1: MOVQ CX, 0x50(SP)
         .          .    10ca5d6: MOVQ 0x70(SP), DX                       ;graph.go:109
         .          .    10ca5db: MOVQ 0xe8(SP), BX
         .          .    10ca5e3: MOVQ 0x98(SP), SI
         .          .    10ca5eb: MOVQ 0x68(SP), DI
         .          .    10ca5f0: MOVQ 0xc0(SP), R8
         .          .    10ca5f8: XORL R9, R9
         .          .    10ca5fb: JMP 0x10ca27f
         .          .    10ca600: XORPS X0, X0                            ;graph.go:116
         .          .    10ca603: CVTSI2SDQ CX, X0
         .          .    10ca608: XORPS X1, X1
         .          .    10ca60b: CVTSI2SDQ BX, X1
         .          .    10ca610: DIVSD X1, X0
         .          .    10ca614: MOVSD_XMM X0, 0(SP)
         .          .    10ca619: CALL runtime.convT64(SB)
         .          .    10ca61e: MOVQ 0x8(SP), AX
         .          .    10ca623: XORPS X0, X0
         .          .    10ca626: MOVUPS X0, 0xc8(SP)
         .          .    10ca62e: LEAQ runtime.types+84032(SB), CX
         .          .    10ca635: MOVQ CX, 0xc8(SP)
         .          .    10ca63d: MOVQ AX, 0xd0(SP)
         .          .    10ca645: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ca64c: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10ca653: MOVQ CX, 0(SP)
         .          .    10ca657: MOVQ AX, 0x8(SP)
         .          .    10ca65c: LEAQ go.string.*+3228(SB), AX
         .          .    10ca663: MOVQ AX, 0x10(SP)
         .          .    10ca668: MOVQ $0xa, 0x18(SP)
         .          .    10ca671: LEAQ 0xc8(SP), AX
         .          .    10ca679: MOVQ AX, 0x20(SP)
         .          .    10ca67e: MOVQ $0x1, 0x28(SP)
         .          .    10ca687: MOVQ $0x1, 0x30(SP)
         .          .    10ca690: CALL fmt.Fprintf(SB)
         .          .    10ca695: MOVQ 0xd8(SP), BP
         .          .    10ca69d: ADDQ $0xe0, SP
         .          .    10ca6a4: RET
         .          .    10ca6a5: MOVQ BX, AX                             ;graph.go:112
         .          .    10ca6a8: CALL runtime.panicIndex(SB)
         .          .    10ca6ad: CALL runtime.panicIndex(SB)             ;graph.go:111
         .          .    10ca6b2: MOVQ R10, AX                            ;graph.go:110
         .          .    10ca6b5: MOVQ R11, CX
         .          .    10ca6b8: CALL runtime.panicIndex(SB)
         .          .    10ca6bd: NOPL
         .          .    10ca6be: CALL runtime.morestack_noctxt(SB)       ;graph.go:101
         .          .    10ca6c3: JMP main.(*Graph).buildAdjList(SB)
         .          .    10ca6c8: INT $0x3
         .          .    10ca6c9: INT $0x3
         .          .    10ca6ca: INT $0x3
         .          .    10ca6cb: INT $0x3
         .          .    10ca6cc: INT $0x3
         .          .    10ca6cd: INT $0x3
         .          .    10ca6ce: INT $0x3
ROUTINE ======================== main.(*index).add
     290ms      1.01s (flat, cum) 14.29% of Total
         .          .    10cbdc0: MOVQ GS:0x30, CX                        ;index.go:29
         .          .    10cbdc9: LEAQ -0x18(SP), AX
         .          .    10cbdce: CMPQ 0x10(CX), AX
         .          .    10cbdd2: JBE 0x10cc0c6
         .          .    10cbdd8: SUBQ $0x98, SP
         .          .    10cbddf: MOVQ BP, 0x90(SP)
         .          .    10cbde7: LEAQ 0x90(SP), BP
         .          .    10cbdef: MOVQ 0xa0(SP), BX                       ;index.go:32
         .          .    10cbdf7: MOVQ 0x38(BX), DX
         .          .    10cbdfb: MOVQ 0x28(BX), SI
         .          .    10cbdff: MOVQ 0xb8(SP), DI
         .          .    10cbe07: LEAQ -0x1(DI), CX
         .          .    10cbe0b: CMPQ DX, CX
         .          .    10cbe0e: JA 0x10cc0c0
         .          .    10cbe14: MOVQ CX, 0x58(SP)
         .          .    10cbe19: MOVQ DX, 0x50(SP)
         .          .    10cbe1e: MOVQ SI, 0x78(SP)
         .          .    10cbe23: MOVQ 0xb0(SP), R8                       ;index.go:33
         .          .    10cbe2b: XORL AX, AX
         .          .    10cbe2d: JMP 0x10cbe82
         .          .    10cbe2f: LEAQ 0x1(R8), R10                       ;index.go:39
         .          .    10cbe33: MOVQ R10, 0x8(BX)(SI*8)
      10ms       10ms    10cbe38: MOVQ 0xa8(SP), R10                      ;main.(*index).add index.go:39
         .          .    10cbe40: MOVQ R10, 0(R9)(R8*8)                   ;index.go:39
      10ms       10ms    10cbe44: MOVQ 0x78(SP), R9                       ;main.(*index).add index.go:33
         .          .    10cbe49: MOVQ 0x50(SP), R11                      ;index.go:33
         .          .    10cbe4e: MOVQ 0x58(SP), R12
         .          .    10cbe53: MOVQ 0xb8(SP), R13
         .          .    10cbe5b: MOVQ 0xb0(SP), R14
         .          .    10cbe63: MOVQ 0x68(SP), R15
         .          .    10cbe68: MOVQ R12, CX                            ;index.go:87
         .          .    10cbe6b: MOVQ R11, DX                            ;index.go:86
      10ms       10ms    10cbe6e: MOVQ 0xa0(SP), BX                       ;main.(*index).add index.go:36
         .          .    10cbe76: MOVQ R9, SI                             ;index.go:87
         .          .    10cbe79: MOVQ R13, DI                            ;index.go:33
         .          .    10cbe7c: MOVQ R14, R8                            ;index.go:88
      10ms       10ms    10cbe7f: MOVQ R15, AX                            ;main.(*index).add index.go:33
         .          .    10cbe82: CMPQ DI, AX                             ;index.go:33
         .          .    10cbe85: JGE 0x10cc093
         .       40ms    10cbe8b: NOPL                                    ;main.(*index).add index.go:34
         .          .    10cbe8c: CMPQ DX, AX                             ;index.go:86
         .          .    10cbe8f: JA 0x10cc0b8
         .          .    10cbe95: CMPQ CX, AX                             ;index.go:87
         .          .    10cbe98: JA 0x10cc0b3
         .          .    10cbe9e: MOVQ AX, 0x48(SP)                       ;index.go:33
         .          .    10cbea3: SUBQ AX, CX                             ;index.go:87
         .          .    10cbea6: MOVQ CX, 0x40(SP)
         .          .    10cbeab: SUBQ AX, DX
         .          .    10cbeae: NEGQ DX
         .          .    10cbeb1: SARQ $0x3f, DX
         .          .    10cbeb5: ANDQ AX, DX
         .          .    10cbeb8: ADDQ SI, DX
         .          .    10cbebb: MOVQ DX, 0x70(SP)
         .          .    10cbec0: CMPQ R8, SI                             ;index.go:88
         .          .    10cbec3: JE 0x10cbed8
         .          .    10cbec5: MOVQ SI, 0(SP)
         .          .    10cbec9: MOVQ R8, 0x8(SP)
         .          .    10cbece: MOVQ AX, 0x10(SP)
         .          .    10cbed3: CALL runtime.memmove(SB)
         .          .    10cbed8: MOVQ 0x48(SP), AX                       ;index.go:89
      10ms       10ms    10cbedd: INCQ AX                                 ;main.skipOneCopy index.go:89
         .          .    10cbee0: MOVQ AX, 0x68(SP)                       ;index.go:89
         .          .    10cbee5: MOVQ 0xb8(SP), CX
         .          .    10cbeed: SUBQ AX, CX
         .          .    10cbef0: MOVQ 0x40(SP), BX
         .          .    10cbef5: CMPQ CX, BX
         .          .    10cbef8: CMOVG CX, BX
         .          .    10cbefc: MOVQ 0xc0(SP), CX
         .          .    10cbf04: SUBQ AX, CX
         .          .    10cbf07: NEGQ CX
         .          .    10cbf0a: SARQ $0x3f, CX
         .          .    10cbf0e: ANDQ AX, CX
         .          .    10cbf11: MOVQ 0xb0(SP), DI
         .          .    10cbf19: ADDQ DI, CX
         .          .    10cbf1c: MOVQ 0x70(SP), R8
         .          .    10cbf21: CMPQ R8, CX
         .          .    10cbf24: JNE 0x10cc07b
         .          .    10cbf2a: MOVQ 0xa0(SP), AX                       ;index.go:36
         .          .    10cbf32: MOVQ 0(AX), CX
         .          .    10cbf35: MOVQ 0x8(AX), DX
         .          .    10cbf39: MOVQ 0x20(CX), CX
         .          .    10cbf3d: MOVQ DX, 0(SP)
         .          .    10cbf41: CALL CX
         .          .    10cbf43: MOVQ 0xa0(SP), AX                       ;index.go:37
         .          .    10cbf4b: MOVQ 0(AX), CX
         .          .    10cbf4e: MOVQ 0x8(AX), DX
         .          .    10cbf52: MOVQ 0x40(CX), CX
         .          .    10cbf56: MOVQ DX, 0(SP)
      10ms       10ms    10cbf5a: MOVQ 0x78(SP), DX                       ;main.(*index).add index.go:37
         .          .    10cbf5f: MOVQ DX, 0x8(SP)                        ;index.go:37
         .          .    10cbf64: MOVQ 0x58(SP), BX
         .          .    10cbf69: MOVQ BX, 0x10(SP)
         .          .    10cbf6e: MOVQ 0x50(SP), SI
         .          .    10cbf73: MOVQ SI, 0x18(SP)
         .       50ms    10cbf78: CALL CX                                 ;main.(*index).add index.go:37
         .          .    10cbf7a: MOVQ 0xa0(SP), AX                       ;index.go:38
         .          .    10cbf82: MOVQ 0(AX), CX
         .          .    10cbf85: MOVQ 0x8(AX), DX
         .          .    10cbf89: MOVQ 0x38(CX), CX
         .          .    10cbf8d: MOVQ DX, 0(SP)
         .       50ms    10cbf91: CALL CX                                 ;main.(*index).add index.go:38
         .          .    10cbf93: MOVQ 0x8(SP), AX                        ;index.go:38
         .          .    10cbf98: MOVQ 0xa0(SP), CX
         .          .    10cbfa0: MOVQ 0x40(CX), DX
         .          .    10cbfa4: TESTQ DX, DX
         .          .    10cbfa7: JE 0x10cc0ae
         .          .    10cbfad: MOVQ DX, BX
         .          .    10cbfb0: XORL DX, DX
         .          .    10cbfb2: DIVQ BX
      30ms       30ms    10cbfb5: MOVQ 0x10(CX), BX                       ;main.(*index).add index.go:39
         .          .    10cbfb9: MOVQ 0x18(CX), SI                       ;index.go:39
         .          .    10cbfbd: CMPQ SI, DX
         .          .    10cbfc0: JAE 0x10cc0a3
         .          .    10cbfc6: LEAQ 0(DX)(DX*2), SI
         .          .    10cbfca: MOVQ 0x10(BX)(SI*8), DI
     170ms      170ms    10cbfcf: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*index).add index.go:39
         .          .    10cbfd4: MOVQ 0(BX)(SI*8), R9                    ;index.go:39
         .          .    10cbfd8: LEAQ 0x1(R8), R10
         .          .    10cbfdc: LEAQ 0(BX)(SI*8), R11
         .          .    10cbfe0: CMPQ DI, R10
         .          .    10cbfe3: JBE 0x10cbe2f
         .          .    10cbfe9: MOVQ BX, 0x88(SP)
         .          .    10cbff1: MOVQ SI, 0x60(SP)
         .          .    10cbff6: MOVQ R11, 0x80(SP)
         .          .    10cbffe: LEAQ runtime.types+85760(SB), AX
         .          .    10cc005: MOVQ AX, 0(SP)
         .          .    10cc009: MOVQ R9, 0x8(SP)
         .          .    10cc00e: MOVQ R8, 0x10(SP)
         .          .    10cc013: MOVQ DI, 0x18(SP)
      10ms       10ms    10cc018: MOVQ R10, 0x20(SP)                      ;main.(*index).add index.go:39
         .      570ms    10cc01d: CALL runtime.growslice(SB)
         .          .    10cc022: MOVQ 0x28(SP), AX                       ;index.go:39
         .          .    10cc027: MOVQ 0x30(SP), CX
         .          .    10cc02c: MOVQ 0x38(SP), DX
         .          .    10cc031: MOVQ 0x60(SP), BX
         .          .    10cc036: MOVQ 0x88(SP), SI
         .          .    10cc03e: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10cc043: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc04a: JNE 0x10cc06c
         .          .    10cc04c: MOVQ AX, 0(SI)(BX*8)
         .          .    10cc050: MOVQ CX, R8
         .          .    10cc053: MOVQ AX, R9
         .          .    10cc056: MOVQ 0xa0(SP), CX                       ;index.go:36
         .          .    10cc05e: MOVQ BX, DX                             ;index.go:39
         .          .    10cc061: MOVQ SI, BX
         .          .    10cc064: MOVQ DX, SI
         .          .    10cc067: JMP 0x10cbe2f
         .          .    10cc06c: MOVQ 0x80(SP), DI
         .          .    10cc074: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc079: JMP 0x10cc050
         .          .    10cc07b: MOVQ R8, 0(SP)                          ;index.go:89
         .          .    10cc07f: MOVQ CX, 0x8(SP)
         .          .    10cc084: MOVQ BX, 0x10(SP)
         .       10ms    10cc089: CALL runtime.memmove(SB)                ;main.skipOneCopy index.go:89
      20ms       20ms    10cc08e: JMP 0x10cbf2a
         .          .    10cc093: MOVQ 0x90(SP), BP                       ;index.go:89
         .          .    10cc09b: ADDQ $0x98, SP
         .          .    10cc0a2: RET
         .          .    10cc0a3: MOVQ DX, AX                             ;index.go:39
         .          .    10cc0a6: MOVQ SI, CX
         .          .    10cc0a9: CALL runtime.panicIndexU(SB)
         .          .    10cc0ae: CALL runtime.panicdivide(SB)            ;index.go:38
         .          .    10cc0b3: CALL runtime.panicSliceB(SB)            ;index.go:87
         .          .    10cc0b8: MOVQ AX, CX                             ;index.go:86
         .          .    10cc0bb: CALL runtime.panicSliceAcap(SB)
         .          .    10cc0c0: CALL runtime.panicSliceAcap(SB)         ;index.go:32
         .          .    10cc0c5: NOPL
         .          .    10cc0c6: CALL runtime.morestack_noctxt(SB)       ;index.go:29
         .          .    10cc0cb: ?
         .          .    10cc0cc: LOCK CLD
         .          .    10cc0ce: ?
ROUTINE ======================== main.(*index).near
     140ms      850ms (flat, cum) 12.02% of Total
         .          .    10cc3e0: MOVQ GS:0x30, CX                        ;index.go:64
      10ms       10ms    10cc3e9: LEAQ -0x8(SP), AX                       ;main.(*index).near index.go:64
         .          .    10cc3ee: CMPQ 0x10(CX), AX                       ;index.go:64
         .          .    10cc3f2: JBE 0x10cc7f9
         .          .    10cc3f8: SUBQ $0x88, SP
         .          .    10cc3ff: MOVQ BP, 0x80(SP)
         .          .    10cc407: LEAQ 0x80(SP), BP
         .          .    10cc40f: MOVQ 0x90(SP), AX                       ;index.go:65
         .          .    10cc417: MOVQ 0(AX), CX
         .          .    10cc41a: MOVQ 0x8(AX), DX
         .          .    10cc41e: MOVQ 0x20(CX), CX
         .          .    10cc422: MOVQ DX, 0(SP)
         .          .    10cc426: CALL CX
         .          .    10cc428: MOVQ 0x90(SP), AX                       ;index.go:66
         .          .    10cc430: MOVQ 0(AX), CX
         .          .    10cc433: MOVQ 0x8(AX), DX
         .          .    10cc437: MOVQ 0x40(CX), CX
         .          .    10cc43b: MOVQ DX, 0(SP)
         .          .    10cc43f: MOVQ 0x98(SP), DX
         .          .    10cc447: MOVQ DX, 0x8(SP)
         .          .    10cc44c: MOVQ 0xa0(SP), BX
         .          .    10cc454: MOVQ BX, 0x10(SP)
         .          .    10cc459: MOVQ 0xa8(SP), SI
         .          .    10cc461: MOVQ SI, 0x18(SP)
         .       20ms    10cc466: CALL CX                                 ;main.(*index).near index.go:66
         .          .    10cc468: MOVQ 0x90(SP), AX                       ;index.go:67
         .          .    10cc470: MOVQ 0(AX), CX
         .          .    10cc473: MOVQ 0x8(AX), DX
         .          .    10cc477: MOVQ 0x38(CX), CX
         .          .    10cc47b: MOVQ DX, 0(SP)
         .       10ms    10cc47f: CALL CX                                 ;main.(*index).near index.go:67
         .          .    10cc481: MOVQ 0x8(SP), AX                        ;index.go:67
         .          .    10cc486: MOVQ 0x90(SP), CX
         .          .    10cc48e: MOVQ 0x40(CX), DX
         .          .    10cc492: TESTQ DX, DX
         .          .    10cc495: JE 0x10cc7f3
         .          .    10cc49b: MOVQ DX, BX
         .          .    10cc49e: XORL DX, DX
         .          .    10cc4a0: DIVQ BX
      20ms       20ms    10cc4a3: MOVQ 0x10(CX), BX                       ;main.(*index).near index.go:68
         .          .    10cc4a7: MOVQ 0x18(CX), SI                       ;index.go:68
         .          .    10cc4ab: CMPQ SI, DX
         .          .    10cc4ae: JAE 0x10cc7e8
         .          .    10cc4b4: LEAQ 0(DX)(DX*2), SI
         .          .    10cc4b8: MOVQ 0x8(BX)(SI*8), DI
         .          .    10cc4bd: MOVQ 0xb8(SP), R8
         .          .    10cc4c5: CMPQ DI, R8
         .          .    10cc4c8: MOVQ R8, R9
         .          .    10cc4cb: CMOVG DI, R8
         .          .    10cc4cf: MOVQ 0(BX)(SI*8), BX
         .          .    10cc4d3: MOVQ 0xb0(SP), SI
         .          .    10cc4db: CMPQ SI, BX
         .          .    10cc4de: JNE 0x10cc77a
         .          .    10cc4e4: MOVQ 0x38(CX), DX                       ;index.go:70
         .          .    10cc4e8: MOVQ 0x28(CX), BX
         .          .    10cc4ec: MOVQ 0xa0(SP), DI
         .          .    10cc4f4: LEAQ -0x1(DI), R10
         .          .    10cc4f8: CMPQ DX, R10
         .          .    10cc4fb: JA 0x10cc7e0
         .          .    10cc501: MOVQ R10, 0x58(SP)
         .          .    10cc506: MOVQ DX, 0x48(SP)
         .          .    10cc50b: MOVQ BX, 0x78(SP)
         .          .    10cc510: MOVQ 0x98(SP), R11                      ;index.go:71
         .          .    10cc518: XORL AX, AX
         .          .    10cc51a: JMP 0x10cc562
         .          .    10cc51c: MOVQ 0xa0(SP), R12
         .          .    10cc524: MOVQ 0x78(SP), R13
         .          .    10cc529: MOVQ 0x48(SP), R14
         .          .    10cc52e: MOVQ 0x58(SP), R15
         .          .    10cc533: MOVQ 0x98(SP), AX
         .          .    10cc53b: MOVQ 0x68(SP), DX
         .          .    10cc540: MOVQ R14, DX                            ;index.go:86
         .          .    10cc543: MOVQ R13, BX                            ;index.go:87
         .          .    10cc546: MOVQ R12, DI                            ;index.go:71
         .          .    10cc549: MOVQ R8, R9                             ;index.go:78
         .          .    10cc54c: MOVQ R15, R10                           ;index.go:87
         .          .    10cc54f: MOVQ AX, R11                            ;index.go:88
         .          .    10cc552: MOVQ 0x68(SP), AX                       ;index.go:71
         .          .    10cc557: MOVQ SI, R8                             ;index.go:78
         .          .    10cc55a: MOVQ 0xb0(SP), SI
         .          .    10cc562: CMPQ DI, AX                             ;index.go:71
         .          .    10cc565: JGE 0x10cc76a
         .          .    10cc56b: NOPL                                    ;index.go:72
         .          .    10cc56c: CMPQ DX, AX                             ;index.go:86
         .          .    10cc56f: JA 0x10cc7d8
         .          .    10cc575: CMPQ R10, AX                            ;index.go:87
         .          .    10cc578: JA 0x10cc7d0
         .          .    10cc57e: MOVQ AX, 0x40(SP)                       ;index.go:71
         .          .    10cc583: MOVQ R8, 0x50(SP)                       ;index.go:78
         .          .    10cc588: SUBQ AX, R10                            ;index.go:87
         .          .    10cc58b: MOVQ R10, 0x38(SP)
         .          .    10cc590: SUBQ AX, DX
         .          .    10cc593: NEGQ DX
         .          .    10cc596: SARQ $0x3f, DX
         .          .    10cc59a: ANDQ AX, DX
         .          .    10cc59d: ADDQ BX, DX
         .          .    10cc5a0: MOVQ DX, 0x70(SP)
         .          .    10cc5a5: CMPQ R11, BX                            ;index.go:88
         .          .    10cc5a8: JE 0x10cc5bd
         .          .    10cc5aa: MOVQ BX, 0(SP)
         .          .    10cc5ae: MOVQ R11, 0x8(SP)
         .          .    10cc5b3: MOVQ AX, 0x10(SP)
         .          .    10cc5b8: CALL runtime.memmove(SB)
         .          .    10cc5bd: MOVQ 0x40(SP), AX                       ;index.go:89
         .          .    10cc5c2: INCQ AX
         .          .    10cc5c5: MOVQ AX, 0x68(SP)
         .          .    10cc5ca: MOVQ 0xa0(SP), CX
         .          .    10cc5d2: SUBQ AX, CX
         .          .    10cc5d5: MOVQ 0x38(SP), BX
         .          .    10cc5da: CMPQ CX, BX
         .          .    10cc5dd: CMOVG CX, BX
         .          .    10cc5e1: MOVQ 0xa8(SP), CX
         .          .    10cc5e9: SUBQ AX, CX
         .          .    10cc5ec: NEGQ CX
         .          .    10cc5ef: SARQ $0x3f, CX
         .          .    10cc5f3: ANDQ AX, CX
         .          .    10cc5f6: MOVQ 0x98(SP), DI
         .          .    10cc5fe: ADDQ DI, CX
         .          .    10cc601: MOVQ 0x70(SP), R8
         .          .    10cc606: CMPQ R8, CX
         .          .    10cc609: JNE 0x10cc752
         .          .    10cc60f: MOVQ 0x90(SP), AX                       ;index.go:74
         .          .    10cc617: MOVQ 0(AX), CX
         .          .    10cc61a: MOVQ 0x8(AX), DX
         .          .    10cc61e: MOVQ 0x20(CX), CX
         .          .    10cc622: MOVQ DX, 0(SP)
         .       30ms    10cc626: CALL CX                                 ;main.(*index).near index.go:74
      10ms       10ms    10cc628: MOVQ 0x90(SP), AX                       ;main.(*index).near index.go:75
         .          .    10cc630: MOVQ 0(AX), CX                          ;index.go:75
         .          .    10cc633: MOVQ 0x8(AX), DX
         .          .    10cc637: MOVQ 0x40(CX), CX
         .          .    10cc63b: MOVQ DX, 0(SP)
      10ms       10ms    10cc63f: MOVQ 0x78(SP), DX                       ;main.(*index).near index.go:75
         .          .    10cc644: MOVQ DX, 0x8(SP)                        ;index.go:75
         .          .    10cc649: MOVQ 0x58(SP), BX
         .          .    10cc64e: MOVQ BX, 0x10(SP)
         .          .    10cc653: MOVQ 0x48(SP), SI
         .          .    10cc658: MOVQ SI, 0x18(SP)
         .       30ms    10cc65d: CALL CX                                 ;main.(*index).near index.go:75
      10ms       10ms    10cc65f: MOVQ 0x90(SP), AX                       ;main.(*index).near index.go:76
         .          .    10cc667: MOVQ 0(AX), CX                          ;index.go:76
         .          .    10cc66a: MOVQ 0x8(AX), DX
         .          .    10cc66e: MOVQ 0x38(CX), CX
         .          .    10cc672: MOVQ DX, 0(SP)
         .       30ms    10cc676: CALL CX                                 ;main.(*index).near index.go:76
         .          .    10cc678: MOVQ 0x8(SP), AX                        ;index.go:76
         .          .    10cc67d: MOVQ 0x90(SP), CX
         .          .    10cc685: MOVQ 0x40(CX), DX
         .          .    10cc689: TESTQ DX, DX
         .          .    10cc68c: JE 0x10cc7cb
         .          .    10cc692: MOVQ DX, BX
      10ms       10ms    10cc695: XORL DX, DX                             ;main.(*index).near index.go:76
         .          .    10cc697: DIVQ BX                                 ;index.go:76
      10ms       10ms    10cc69a: MOVQ 0x10(CX), BX                       ;main.(*index).near index.go:77
         .          .    10cc69e: MOVQ 0x18(CX), SI                       ;index.go:77
         .          .    10cc6a2: CMPQ SI, DX
         .          .    10cc6a5: JAE 0x10cc7c0
         .          .    10cc6ab: LEAQ 0(DX)(DX*2), SI
         .          .    10cc6af: MOVQ 0(BX)(SI*8), DI
      50ms       50ms    10cc6b3: MOVQ 0x8(BX)(SI*8), BX                  ;main.(*index).near index.go:77
         .          .    10cc6b8: MOVQ 0x50(SP), AX                       ;index.go:78
         .          .    10cc6bd: MOVQ 0xb8(SP), SI
         .          .    10cc6c5: CMPQ SI, AX
         .          .    10cc6c8: JA 0x10cc7b8
         .          .    10cc6ce: MOVQ SI, R8
         .          .    10cc6d1: SUBQ AX, SI
         .          .    10cc6d4: CMPQ BX, SI
         .          .    10cc6d7: CMOVG BX, SI
      10ms       10ms    10cc6db: MOVQ 0xc0(SP), BX                       ;main.(*index).near index.go:78
         .          .    10cc6e3: MOVQ BX, R9                             ;index.go:78
         .          .    10cc6e6: SUBQ AX, BX
         .          .    10cc6e9: NEGQ BX
         .          .    10cc6ec: SHLQ $0x3, AX
         .          .    10cc6f0: SARQ $0x3f, BX
         .          .    10cc6f4: ANDQ BX, AX
         .          .    10cc6f7: MOVQ 0xb0(SP), BX
         .          .    10cc6ff: LEAQ 0(BX)(AX*1), R10
         .          .    10cc703: CMPQ DI, R10
         .          .    10cc706: JE 0x10cc51c
         .          .    10cc70c: MOVQ SI, 0x60(SP)
         .          .    10cc711: MOVQ R10, 0(SP)
         .          .    10cc715: MOVQ DI, 0x8(SP)
         .          .    10cc71a: SHLQ $0x3, SI
         .          .    10cc71e: MOVQ SI, 0x10(SP)
         .      410ms    10cc723: CALL runtime.memmove(SB)                ;main.(*index).near index.go:78
         .          .    10cc728: MOVQ 0x90(SP), CX                       ;index.go:74
         .          .    10cc730: MOVQ 0xb0(SP), BX                       ;index.go:78
         .          .    10cc738: MOVQ 0x60(SP), SI
         .          .    10cc73d: MOVQ 0xb8(SP), R8
         .          .    10cc745: MOVQ 0xc0(SP), R9
         .          .    10cc74d: JMP 0x10cc51c
         .          .    10cc752: MOVQ R8, 0(SP)                          ;index.go:89
         .          .    10cc756: MOVQ CX, 0x8(SP)
         .          .    10cc75b: MOVQ BX, 0x10(SP)
         .          .    10cc760: CALL runtime.memmove(SB)
         .          .    10cc765: JMP 0x10cc60f
         .          .    10cc76a: MOVQ 0x80(SP), BP
         .          .    10cc772: ADDQ $0x88, SP
         .          .    10cc779: RET
         .          .    10cc77a: MOVQ R8, 0x50(SP)                       ;index.go:68
         .          .    10cc77f: MOVQ SI, 0(SP)
         .          .    10cc783: MOVQ BX, 0x8(SP)
         .          .    10cc788: SHLQ $0x3, R8
         .          .    10cc78c: MOVQ R8, 0x10(SP)
         .      180ms    10cc791: CALL runtime.memmove(SB)                ;main.(*index).near index.go:68
         .          .    10cc796: MOVQ 0x90(SP), CX                       ;index.go:70
         .          .    10cc79e: MOVQ 0xb0(SP), SI                       ;index.go:78
         .          .    10cc7a6: MOVQ 0x50(SP), R8
         .          .    10cc7ab: MOVQ 0xb8(SP), R9
         .          .    10cc7b3: JMP 0x10cc4e4                           ;index.go:68
         .          .    10cc7b8: MOVQ SI, CX                             ;index.go:78
         .          .    10cc7bb: CALL runtime.panicSliceB(SB)
         .          .    10cc7c0: MOVQ DX, AX                             ;index.go:77
         .          .    10cc7c3: MOVQ SI, CX
         .          .    10cc7c6: CALL runtime.panicIndexU(SB)
         .          .    10cc7cb: CALL runtime.panicdivide(SB)            ;index.go:76
         .          .    10cc7d0: MOVQ R10, CX                            ;index.go:87
         .          .    10cc7d3: CALL runtime.panicSliceB(SB)
         .          .    10cc7d8: MOVQ AX, CX                             ;index.go:86
         .          .    10cc7db: CALL runtime.panicSliceAcap(SB)
         .          .    10cc7e0: MOVQ R10, CX                            ;index.go:70
         .          .    10cc7e3: CALL runtime.panicSliceAcap(SB)
         .          .    10cc7e8: MOVQ DX, AX                             ;index.go:68
         .          .    10cc7eb: MOVQ SI, CX
         .          .    10cc7ee: CALL runtime.panicIndexU(SB)
         .          .    10cc7f3: CALL runtime.panicdivide(SB)            ;index.go:67
         .          .    10cc7f8: NOPL
         .          .    10cc7f9: CALL runtime.morestack_noctxt(SB)       ;index.go:64
         .          .    10cc7fe: JMP main.(*index).near(SB)
         .          .    10cc803: INT $0x3
         .          .    10cc804: INT $0x3
         .          .    10cc805: INT $0x3
         .          .    10cc806: INT $0x3
         .          .    10cc807: INT $0x3
         .          .    10cc808: INT $0x3
         .          .    10cc809: INT $0x3
         .          .    10cc80a: INT $0x3
         .          .    10cc80b: INT $0x3
         .          .    10cc80c: INT $0x3
         .          .    10cc80d: INT $0x3
         .          .    10cc80e: INT $0x3
ROUTINE ======================== main.(*index).nearCount
     260ms      390ms (flat, cum)  5.52% of Total
         .          .    10cc0d0: MOVQ GS:0x30, CX                        ;index.go:43
         .          .    10cc0d9: CMPQ 0x10(CX), SP
         .          .    10cc0dd: JBE 0x10cc3c9
         .          .    10cc0e3: ADDQ $-0x80, SP
         .          .    10cc0e7: MOVQ BP, 0x78(SP)
         .          .    10cc0ec: LEAQ 0x78(SP), BP
         .          .    10cc0f1: MOVQ 0x88(SP), AX                       ;index.go:45
         .          .    10cc0f9: MOVQ 0(AX), CX
         .          .    10cc0fc: MOVQ 0x8(AX), DX
         .          .    10cc100: MOVQ 0x20(CX), CX
         .          .    10cc104: MOVQ DX, 0(SP)
         .          .    10cc108: CALL CX
         .          .    10cc10a: MOVQ 0x88(SP), AX                       ;index.go:46
         .          .    10cc112: MOVQ 0(AX), CX
         .          .    10cc115: MOVQ 0x8(AX), DX
         .          .    10cc119: MOVQ 0x40(CX), CX
         .          .    10cc11d: MOVQ DX, 0(SP)
         .          .    10cc121: MOVQ 0x90(SP), DX
         .          .    10cc129: MOVQ DX, 0x8(SP)
         .          .    10cc12e: MOVQ 0x98(SP), BX
         .          .    10cc136: MOVQ BX, 0x10(SP)
         .          .    10cc13b: MOVQ 0xa0(SP), SI
         .          .    10cc143: MOVQ SI, 0x18(SP)
         .       10ms    10cc148: CALL CX                                 ;main.(*index).nearCount index.go:46
         .          .    10cc14a: MOVQ 0x88(SP), AX                       ;index.go:47
         .          .    10cc152: MOVQ 0(AX), CX
         .          .    10cc155: MOVQ 0x8(AX), DX
         .          .    10cc159: MOVQ 0x38(CX), CX
         .          .    10cc15d: MOVQ DX, 0(SP)
         .       10ms    10cc161: CALL CX                                 ;main.(*index).nearCount index.go:47
         .          .    10cc163: MOVQ 0x8(SP), AX                        ;index.go:47
         .          .    10cc168: MOVQ 0x88(SP), CX
         .          .    10cc170: MOVQ 0x40(CX), DX
         .          .    10cc174: TESTQ DX, DX
         .          .    10cc177: JE 0x10cc3c3
         .          .    10cc17d: MOVQ DX, BX
         .          .    10cc180: XORL DX, DX
         .          .    10cc182: DIVQ BX
         .          .    10cc185: MOVQ 0x10(CX), BX                       ;index.go:48
         .          .    10cc189: MOVQ 0x18(CX), SI
         .          .    10cc18d: CMPQ SI, DX
         .          .    10cc190: JAE 0x10cc3b8
         .          .    10cc196: LEAQ 0(DX)(DX*2), SI
         .          .    10cc19a: MOVQ 0x8(BX)(SI*8), BX
         .          .    10cc19f: MOVQ 0x38(CX), DX                       ;index.go:50
         .          .    10cc1a3: MOVQ 0x28(CX), SI
         .          .    10cc1a7: MOVQ 0x98(SP), DI
         .          .    10cc1af: LEAQ -0x1(DI), R8
         .          .    10cc1b3: CMPQ DX, R8
         .          .    10cc1b6: JA 0x10cc3b0
         .          .    10cc1bc: MOVQ R8, 0x50(SP)
         .          .    10cc1c1: MOVQ DX, 0x48(SP)
         .          .    10cc1c6: MOVQ SI, 0x70(SP)
         .          .    10cc1cb: MOVQ 0x90(SP), R9                       ;index.go:51
         .          .    10cc1d3: XORL AX, AX
         .          .    10cc1d5: JMP 0x10cc21f
         .          .    10cc1d7: LEAQ 0(DX)(DX*2), R10                   ;index.go:57
         .          .    10cc1db: MOVQ 0x8(SI)(R10*8), R10
     230ms      230ms    10cc1e0: MOVQ 0x58(SP), R11                      ;main.(*index).nearCount index.go:58
         .          .    10cc1e5: LEAQ 0(R11)(R10*1), BX                  ;index.go:58
      10ms       10ms    10cc1e9: MOVQ 0x98(SP), R10                      ;main.(*index).nearCount index.go:51
         .          .    10cc1f1: MOVQ 0x70(SP), R11                      ;index.go:51
         .          .    10cc1f6: MOVQ 0x48(SP), R12
         .          .    10cc1fb: MOVQ 0x50(SP), R13
         .          .    10cc200: MOVQ 0x90(SP), R14
         .          .    10cc208: MOVQ 0x60(SP), R15
         .          .    10cc20d: MOVQ R12, DX                            ;index.go:86
         .          .    10cc210: MOVQ R11, SI                            ;index.go:87
         .          .    10cc213: MOVQ R10, DI                            ;index.go:51
         .          .    10cc216: MOVQ R13, R8                            ;index.go:87
         .          .    10cc219: MOVQ R14, R9                            ;index.go:88
         .          .    10cc21c: MOVQ R15, AX                            ;index.go:51
         .          .    10cc21f: CMPQ DI, AX
         .          .    10cc222: JGE 0x10cc37e
         .       10ms    10cc228: NOPL                                    ;main.(*index).nearCount index.go:52
         .          .    10cc229: CMPQ DX, AX                             ;index.go:86
         .          .    10cc22c: JA 0x10cc3a8
         .          .    10cc232: CMPQ R8, AX                             ;index.go:87
         .          .    10cc235: JA 0x10cc3a0
         .          .    10cc23b: MOVQ AX, 0x40(SP)                       ;index.go:51
         .          .    10cc240: MOVQ BX, 0x58(SP)                       ;index.go:58
         .          .    10cc245: SUBQ AX, R8                             ;index.go:87
         .          .    10cc248: MOVQ R8, 0x38(SP)
         .          .    10cc24d: SUBQ AX, DX
         .          .    10cc250: NEGQ DX
         .          .    10cc253: SARQ $0x3f, DX
         .          .    10cc257: ANDQ AX, DX
         .          .    10cc25a: ADDQ SI, DX
         .          .    10cc25d: MOVQ DX, 0x68(SP)
         .          .    10cc262: CMPQ R9, SI                             ;index.go:88
         .          .    10cc265: JE 0x10cc27a
         .          .    10cc267: MOVQ SI, 0(SP)
         .          .    10cc26b: MOVQ R9, 0x8(SP)
         .          .    10cc270: MOVQ AX, 0x10(SP)
         .       10ms    10cc275: CALL runtime.memmove(SB)                ;main.skipOneCopy index.go:88
         .          .    10cc27a: MOVQ 0x40(SP), AX                       ;index.go:89
         .          .    10cc27f: INCQ AX
         .          .    10cc282: MOVQ AX, 0x60(SP)
         .          .    10cc287: MOVQ 0x98(SP), CX
         .          .    10cc28f: SUBQ AX, CX
         .          .    10cc292: MOVQ 0x38(SP), BX
         .          .    10cc297: CMPQ CX, BX
         .          .    10cc29a: CMOVG CX, BX
         .          .    10cc29e: MOVQ 0xa0(SP), CX
         .          .    10cc2a6: SUBQ AX, CX
         .          .    10cc2a9: NEGQ CX
         .          .    10cc2ac: SARQ $0x3f, CX
         .          .    10cc2b0: ANDQ AX, CX
         .          .    10cc2b3: MOVQ 0x90(SP), DI
         .          .    10cc2bb: ADDQ DI, CX
         .          .    10cc2be: MOVQ 0x68(SP), R8
         .          .    10cc2c3: CMPQ R8, CX
         .          .    10cc2c6: JNE 0x10cc366
         .          .    10cc2cc: MOVQ 0x88(SP), AX                       ;index.go:54
         .          .    10cc2d4: MOVQ 0(AX), CX
         .          .    10cc2d7: MOVQ 0x8(AX), DX
         .          .    10cc2db: MOVQ 0x20(CX), CX
         .          .    10cc2df: MOVQ DX, 0(SP)
         .          .    10cc2e3: CALL CX
         .          .    10cc2e5: MOVQ 0x88(SP), AX                       ;index.go:55
         .          .    10cc2ed: MOVQ 0(AX), CX
         .          .    10cc2f0: MOVQ 0x8(AX), DX
         .          .    10cc2f4: MOVQ 0x40(CX), CX
         .          .    10cc2f8: MOVQ DX, 0(SP)
         .          .    10cc2fc: MOVQ 0x70(SP), DX
         .          .    10cc301: MOVQ DX, 0x8(SP)
         .          .    10cc306: MOVQ 0x50(SP), BX
         .          .    10cc30b: MOVQ BX, 0x10(SP)
         .          .    10cc310: MOVQ 0x48(SP), SI
         .          .    10cc315: MOVQ SI, 0x18(SP)
         .       40ms    10cc31a: CALL CX                                 ;main.(*index).nearCount index.go:55
         .          .    10cc31c: MOVQ 0x88(SP), AX                       ;index.go:56
         .          .    10cc324: MOVQ 0(AX), CX
         .          .    10cc327: MOVQ 0x8(AX), DX
         .          .    10cc32b: MOVQ 0x38(CX), CX
         .          .    10cc32f: MOVQ DX, 0(SP)
         .       50ms    10cc333: CALL CX                                 ;main.(*index).nearCount index.go:56
         .          .    10cc335: MOVQ 0x8(SP), AX                        ;index.go:56
         .          .    10cc33a: MOVQ 0x88(SP), CX
         .          .    10cc342: MOVQ 0x40(CX), DX
         .          .    10cc346: TESTQ DX, DX
         .          .    10cc349: JE 0x10cc39b
         .          .    10cc34b: MOVQ DX, BX
         .          .    10cc34e: XORL DX, DX
         .          .    10cc350: DIVQ BX
      20ms       20ms    10cc353: MOVQ 0x18(CX), BX                       ;main.(*index).nearCount index.go:57
         .          .    10cc357: MOVQ 0x10(CX), SI                       ;index.go:57
         .          .    10cc35b: CMPQ BX, DX
         .          .    10cc35e: JB 0x10cc1d7
         .          .    10cc364: JMP 0x10cc390
         .          .    10cc366: MOVQ R8, 0(SP)                          ;index.go:89
         .          .    10cc36a: MOVQ CX, 0x8(SP)
         .          .    10cc36f: MOVQ BX, 0x10(SP)
         .          .    10cc374: CALL runtime.memmove(SB)
         .          .    10cc379: JMP 0x10cc2cc
         .          .    10cc37e: MOVQ BX, 0xa8(SP)                       ;index.go:61
         .          .    10cc386: MOVQ 0x78(SP), BP
         .          .    10cc38b: SUBQ $-0x80, SP
         .          .    10cc38f: RET
         .          .    10cc390: MOVQ DX, AX                             ;index.go:57
         .          .    10cc393: MOVQ BX, CX
         .          .    10cc396: CALL runtime.panicIndexU(SB)
         .          .    10cc39b: CALL runtime.panicdivide(SB)            ;index.go:56
         .          .    10cc3a0: MOVQ R8, CX                             ;index.go:87
         .          .    10cc3a3: CALL runtime.panicSliceB(SB)
         .          .    10cc3a8: MOVQ AX, CX                             ;index.go:86
         .          .    10cc3ab: CALL runtime.panicSliceAcap(SB)
         .          .    10cc3b0: MOVQ R8, CX                             ;index.go:50
         .          .    10cc3b3: CALL runtime.panicSliceAcap(SB)
         .          .    10cc3b8: MOVQ DX, AX                             ;index.go:48
         .          .    10cc3bb: MOVQ SI, CX
         .          .    10cc3be: CALL runtime.panicIndexU(SB)
         .          .    10cc3c3: CALL runtime.panicdivide(SB)            ;index.go:47
         .          .    10cc3c8: NOPL
         .          .    10cc3c9: CALL runtime.morestack_noctxt(SB)       ;index.go:43
         .          .    10cc3ce: JMP main.(*index).nearCount(SB)
         .          .    10cc3d3: INT $0x3
         .          .    10cc3d4: INT $0x3
         .          .    10cc3d5: INT $0x3
         .          .    10cc3d6: INT $0x3
         .          .    10cc3d7: INT $0x3
         .          .    10cc3d8: INT $0x3
         .          .    10cc3d9: INT $0x3
         .          .    10cc3da: INT $0x3
         .          .    10cc3db: INT $0x3
         .          .    10cc3dc: INT $0x3
         .          .    10cc3dd: INT $0x3
         .          .    10cc3de: INT $0x3
ROUTINE ======================== main.LoadDictionary
      10ms      3.84s (flat, cum) 54.31% of Total
         .          .    10c9ab0: MOVQ GS:0x30, CX                        ;graph.go:39
         .          .    10c9ab9: LEAQ 0xfffffec0(SP), AX
         .          .    10c9ac1: CMPQ 0x10(CX), AX
         .          .    10c9ac5: JBE 0x10ca1ef
         .          .    10c9acb: SUBQ $0x1c0, SP
         .          .    10c9ad2: MOVQ BP, 0x1b8(SP)
         .          .    10c9ada: LEAQ 0x1b8(SP), BP
         .          .    10c9ae2: MOVQ $0x0, 0x1f0(SP)
         .          .    10c9aee: LEAQ go.string.*+5959(SB), AX           ;graph.go:40
         .          .    10c9af5: MOVQ AX, 0(SP)
         .          .    10c9af9: MOVQ $0xe, 0x8(SP)
         .          .    10c9b02: CALL main.newTimer(SB)
         .          .    10c9b07: MOVQ 0x10(SP), AX
         .          .    10c9b0c: MOVL $0x0, 0x68(SP)
         .          .    10c9b14: MOVQ AX, 0x80(SP)
         .          .    10c9b1c: LEAQ 0x68(SP), AX
         .          .    10c9b21: MOVQ AX, 0(SP)
         .          .    10c9b25: CALL runtime.deferprocStack(SB)
         .          .    10c9b2a: TESTL AX, AX
         .          .    10c9b2c: JNE 0x10ca1d0
         .          .    10c9b32: NOPL                                    ;graph.go:41
         .          .    10c9b33: MOVQ 0x1c8(SP), AX                      ;file.go:280
         .          .    10c9b3b: MOVQ AX, 0(SP)
         .          .    10c9b3f: MOVQ 0x1d0(SP), AX
         .          .    10c9b47: MOVQ AX, 0x8(SP)
         .          .    10c9b4c: MOVQ $0x0, 0x10(SP)
         .          .    10c9b55: MOVL $0x0, 0x18(SP)
         .          .    10c9b5d: CALL os.OpenFile(SB)
         .          .    10c9b62: MOVQ 0x20(SP), AX
         .          .    10c9b67: MOVQ AX, 0x118(SP)
         .          .    10c9b6f: MOVQ 0x30(SP), CX
         .          .    10c9b74: MOVQ 0x28(SP), DX
         .          .    10c9b79: TESTQ DX, DX                            ;graph.go:42
         .          .    10c9b7c: JE 0x10c9bc2
         .          .    10c9b7e: JE 0x10c9b84                            ;graph.go:43
         .          .    10c9b80: MOVQ 0x8(DX), DX
         .          .    10c9b84: XORPS X0, X0
         .          .    10c9b87: MOVUPS X0, 0x128(SP)
         .          .    10c9b8f: MOVQ DX, 0x128(SP)
         .          .    10c9b97: MOVQ CX, 0x130(SP)
         .          .    10c9b9f: LEAQ 0x128(SP), AX
         .          .    10c9ba7: MOVQ AX, 0(SP)
         .          .    10c9bab: MOVQ $0x1, 0x8(SP)
         .          .    10c9bb4: MOVQ $0x1, 0x10(SP)
         .          .    10c9bbd: CALL log.Fatal(SB)
         .          .    10c9bc2: MOVL $0x18, 0xa0(SP)                    ;graph.go:45
         .          .    10c9bcd: LEAQ go.func.*+293(SB), AX
         .          .    10c9bd4: MOVQ AX, 0xb8(SP)
         .          .    10c9bdc: MOVQ 0x118(SP), AX
         .          .    10c9be4: MOVQ AX, 0xd0(SP)
         .          .    10c9bec: LEAQ 0xa0(SP), CX
         .          .    10c9bf4: MOVQ CX, 0(SP)
         .          .    10c9bf8: CALL runtime.deferprocStack(SB)
         .          .    10c9bfd: TESTL AX, AX
         .          .    10c9bff: JNE 0x10ca1ba
         .          .    10c9c05: LEAQ runtime.types+157184(SB), AX       ;graph.go:47
         .          .    10c9c0c: MOVQ AX, 0(SP)
         .          .    10c9c10: CALL runtime.newobject(SB)
         .          .    10c9c15: MOVQ 0x8(SP), AX
         .          .    10c9c1a: MOVQ AX, 0x120(SP)
         .          .    10c9c22: LEAQ runtime.types+141472(SB), CX       ;graph.go:48
         .          .    10c9c29: MOVQ CX, 0(SP)
         .          .    10c9c2d: XORPS X0, X0
         .          .    10c9c30: MOVUPS X0, 0x8(SP)
         .          .    10c9c35: CALL runtime.makeslice(SB)
         .          .    10c9c3a: MOVQ 0x18(SP), AX
         .          .    10c9c3f: CMPL $0x0, runtime.writeBarrier(SB)     ;graph.go:47
         .          .    10c9c46: JNE 0x10ca175
         .          .    10c9c4c: XORPS X0, X0
         .          .    10c9c4f: MOVQ 0x120(SP), CX
         .          .    10c9c57: MOVUPS X0, 0(CX)
         .          .    10c9c5a: MOVUPS X0, 0x10(CX)
         .          .    10c9c5e: MOVUPS X0, 0x20(CX)
         .          .    10c9c62: MOVQ AX, 0(CX)
         .          .    10c9c65: NOPL                                    ;graph.go:53
         .          .    10c9c66: LEAQ 0x138(SP), DI                      ;scan.go:87
         .          .    10c9c6e: MOVQ BP, -0x10(SP)
         .          .    10c9c73: LEAQ -0x10(SP), BP
         .          .    10c9c78: CALL 0x10586ba
         .          .    10c9c7d: MOVQ 0(BP), BP
         .          .    10c9c81: LEAQ 0x138(SP), DI
         .          .    10c9c89: MOVQ BP, -0x10(SP)
         .          .    10c9c8e: LEAQ -0x10(SP), BP
         .          .    10c9c93: CALL 0x10586ba
         .          .    10c9c98: MOVQ 0(BP), BP
         .          .    10c9c9c: LEAQ go.itab.*os.File,io.Reader(SB), AX
         .          .    10c9ca3: MOVQ AX, 0x138(SP)
         .          .    10c9cab: MOVQ 0x118(SP), AX
         .          .    10c9cb3: MOVQ AX, 0x140(SP)
         .          .    10c9cbb: LEAQ go.func.*+5(SB), AX
         .          .    10c9cc2: MOVQ AX, 0x148(SP)
         .          .    10c9cca: MOVQ $0x10000, 0x150(SP)
         .          .    10c9cd6: XORL AX, AX
         .          .    10c9cd8: JMP 0x10c9cdd                           ;graph.go:54
         .          .    10c9cda: MOVQ SI, AX                             ;graph.go:74
         .          .    10c9cdd: MOVQ AX, 0x48(SP)
         .          .    10c9ce2: LEAQ 0x138(SP), CX                      ;graph.go:54
         .          .    10c9cea: MOVQ CX, 0(SP)
         .       50ms    10c9cee: CALL bufio.(*Scanner).Scan(SB)          ;main.LoadDictionary graph.go:54
         .          .    10c9cf3: CMPB $0x0, 0x8(SP)                      ;graph.go:54
         .          .    10c9cf8: JE 0x10c9e3b
         .          .    10c9cfe: NOPL                                    ;graph.go:55
         .          .    10c9cff: MOVQ 0x160(SP), AX                      ;scan.go:106
         .          .    10c9d07: MOVQ AX, 0x40(SP)
         .          .    10c9d0c: MOVQ 0x158(SP), CX
         .          .    10c9d14: MOVQ CX, 0x100(SP)
         .          .    10c9d1c: LEAQ runtime.types+88768(SB), DX        ;graph.go:56
         .          .    10c9d23: MOVQ DX, 0(SP)
         .          .    10c9d27: MOVQ AX, 0x8(SP)
         .          .    10c9d2c: MOVQ AX, 0x10(SP)
         .          .    10c9d31: CALL runtime.makeslice(SB)
         .          .    10c9d36: MOVQ 0x18(SP), AX
         .          .    10c9d3b: MOVQ AX, 0x110(SP)
         .          .    10c9d43: MOVQ 0x100(SP), CX                      ;graph.go:57
         .          .    10c9d4b: CMPQ CX, AX
         .          .    10c9d4e: JE 0x10c9d68
         .          .    10c9d50: MOVQ AX, 0(SP)
         .          .    10c9d54: MOVQ CX, 0x8(SP)
         .          .    10c9d59: MOVQ 0x40(SP), CX
         .          .    10c9d5e: MOVQ CX, 0x10(SP)
         .          .    10c9d63: CALL runtime.memmove(SB)
         .          .    10c9d68: MOVQ 0x120(SP), CX                      ;graph.go:58
         .          .    10c9d70: MOVQ 0x8(CX), DX
         .          .    10c9d74: MOVQ 0x10(CX), BX
         .          .    10c9d78: LEAQ 0x1(DX), SI
         .          .    10c9d7c: MOVQ 0(CX), R8
         .          .    10c9d7f: CMPQ BX, SI
         .          .    10c9d82: JA 0x10c9ddb
         .          .    10c9d84: LEAQ 0x1(DX), BX
         .          .    10c9d88: MOVQ BX, 0x8(CX)
         .          .    10c9d8c: LEAQ 0(DX)(DX*2), DX
         .          .    10c9d90: MOVQ 0x40(SP), BX
      10ms       10ms    10c9d95: MOVQ BX, 0x8(R8)(DX*8)                  ;main.LoadDictionary graph.go:58
         .          .    10c9d9a: MOVQ BX, 0x10(R8)(DX*8)                 ;graph.go:58
         .          .    10c9d9f: MOVQ 0x48(SP), SI                       ;graph.go:59
         .          .    10c9da4: CMPQ SI, BX
         .          .    10c9da7: CMOVG BX, SI                            ;graph.go:74
         .          .    10c9dab: LEAQ 0(R8)(DX*8), DI                    ;graph.go:58
         .          .    10c9daf: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10c9db6: JNE 0x10c9dc9
         .          .    10c9db8: MOVQ 0x110(SP), AX
         .          .    10c9dc0: MOVQ AX, 0(R8)(DX*8)
         .          .    10c9dc4: JMP 0x10c9cda
         .          .    10c9dc9: MOVQ 0x110(SP), AX
         .          .    10c9dd1: CALL runtime.gcWriteBarrier(SB)
         .          .    10c9dd6: JMP 0x10c9cda
         .          .    10c9ddb: LEAQ runtime.types+141472(SB), AX
         .          .    10c9de2: MOVQ AX, 0(SP)
         .          .    10c9de6: MOVQ R8, 0x8(SP)
         .          .    10c9deb: MOVQ DX, 0x10(SP)
         .          .    10c9df0: MOVQ BX, 0x18(SP)
         .          .    10c9df5: MOVQ SI, 0x20(SP)
         .       60ms    10c9dfa: CALL runtime.growslice(SB)              ;main.LoadDictionary graph.go:58
         .          .    10c9dff: MOVQ 0x28(SP), AX                       ;graph.go:58
         .          .    10c9e04: MOVQ 0x30(SP), CX
         .          .    10c9e09: MOVQ 0x38(SP), DX
         .          .    10c9e0e: MOVQ 0x120(SP), DI
         .          .    10c9e16: MOVQ DX, 0x10(DI)
         .          .    10c9e1a: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10c9e21: JNE 0x10c9e34
         .          .    10c9e23: MOVQ AX, 0(DI)
         .          .    10c9e26: MOVQ CX, DX
         .          .    10c9e29: MOVQ AX, R8
         .          .    10c9e2c: MOVQ DI, CX
         .          .    10c9e2f: JMP 0x10c9d84
         .          .    10c9e34: CALL runtime.gcWriteBarrier(SB)
         .          .    10c9e39: JMP 0x10c9e26
         .          .    10c9e3b: MOVQ 0x1e8(SP), AX                      ;graph.go:64
         .          .    10c9e43: TESTQ AX, AX
         .          .    10c9e46: JNE 0x10ca117
         .          .    10c9e4c: MOVQ 0x120(SP), AX                      ;graph.go:68
         .          .    10c9e54: MOVQ 0x8(AX), CX
         .          .    10c9e58: MOVQ CX, 0x60(SP)
         .          .    10c9e5d: LEAQ runtime.types+77120(SB), DX
         .          .    10c9e64: MOVQ DX, 0(SP)
         .          .    10c9e68: MOVQ CX, 0x8(SP)
         .          .    10c9e6d: MOVQ CX, 0x10(SP)
         .       10ms    10c9e72: CALL runtime.makeslice(SB)              ;main.LoadDictionary graph.go:68
         .          .    10c9e77: MOVQ 0x18(SP), AX                       ;graph.go:68
         .          .    10c9e7c: MOVQ 0x60(SP), CX
         .          .    10c9e81: MOVQ 0x120(SP), DX
         .          .    10c9e89: MOVQ CX, 0x20(DX)
         .          .    10c9e8d: MOVQ CX, 0x28(DX)
         .          .    10c9e91: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10c9e98: JNE 0x10ca109
         .          .    10c9e9e: MOVQ AX, 0x18(DX)
         .          .    10c9ea2: XORL AX, AX
         .          .    10c9ea4: JMP 0x10c9eb5                           ;graph.go:69
         .          .    10c9ea6: LEAQ 0x1(SI), BX
         .          .    10c9eaa: MOVQ 0x60(SP), CX
         .          .    10c9eaf: MOVQ AX, DX                             ;graph.go:70
         .          .    10c9eb2: MOVQ BX, AX                             ;graph.go:69
         .          .    10c9eb5: CMPQ CX, AX
         .          .    10c9eb8: JGE 0x10c9f36
         .          .    10c9eba: MOVQ AX, 0x50(SP)
         .          .    10c9ebf: LEAQ runtime.types+85760(SB), AX        ;graph.go:70
         .          .    10c9ec6: MOVQ AX, 0(SP)
         .          .    10c9eca: XORPS X0, X0
         .          .    10c9ecd: MOVUPS X0, 0x8(SP)
         .          .    10c9ed2: CALL runtime.makeslice(SB)
         .          .    10c9ed7: MOVQ 0x120(SP), AX
         .          .    10c9edf: MOVQ 0x20(AX), CX
         .          .    10c9ee3: MOVQ 0x18(AX), DX
         .          .    10c9ee7: MOVQ 0x18(SP), BX
         .          .    10c9eec: MOVQ 0x50(SP), SI
         .          .    10c9ef1: CMPQ CX, SI
         .          .    10c9ef4: JAE 0x10ca1e6
         .          .    10c9efa: LEAQ 0(SI)(SI*2), CX
         .          .    10c9efe: MOVQ $0x0, 0x8(DX)(CX*8)
         .          .    10c9f07: MOVQ $0x0, 0x10(DX)(CX*8)
         .          .    10c9f10: LEAQ 0(DX)(CX*8), DI
         .          .    10c9f14: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10c9f1b: JNE 0x10c9f23
         .          .    10c9f1d: MOVQ BX, 0(DX)(CX*8)
         .          .    10c9f21: JMP 0x10c9ea6
         .          .    10c9f23: MOVQ AX, CX                             ;graph.go:47
         .          .    10c9f26: MOVQ BX, AX                             ;graph.go:70
         .       10ms    10c9f29: CALL runtime.gcWriteBarrier(SB)         ;main.LoadDictionary graph.go:70
         .          .    10c9f2e: MOVQ CX, AX                             ;graph.go:70
         .          .    10c9f31: JMP 0x10c9ea6
         .          .    10c9f36: LEAQ go.string.*+3388(SB), AX           ;graph.go:73
         .          .    10c9f3d: MOVQ AX, 0(SP)
         .          .    10c9f41: MOVQ $0xa, 0x8(SP)
         .          .    10c9f4a: CALL main.newTimer(SB)
         .          .    10c9f4f: MOVQ 0x10(SP), AX
         .          .    10c9f54: MOVQ AX, 0xe8(SP)
         .          .    10c9f5c: MOVQ $0x800000, 0(SP)                   ;graph.go:74
         .          .    10c9f64: MOVQ 0x48(SP), CX
         .          .    10c9f69: MOVQ CX, 0x8(SP)
         .      130ms    10c9f6e: CALL main.newIndex(SB)                  ;main.LoadDictionary graph.go:74
         .          .    10c9f73: MOVQ 0x10(SP), AX                       ;graph.go:74
         .          .    10c9f78: MOVQ AX, 0xf8(SP)
         .          .    10c9f80: MOVQ 0x120(SP), CX                      ;graph.go:75
         .          .    10c9f88: MOVQ 0x8(CX), DX
         .          .    10c9f8c: MOVQ 0(CX), BX
         .          .    10c9f8f: TESTQ DX, DX
         .          .    10c9f92: JLE 0x10c9ffb
         .          .    10c9f94: MOVQ DX, 0x60(SP)
         .          .    10c9f99: XORL SI, SI
         .          .    10c9f9b: JMP 0x10c9fb4
         .          .    10c9f9d: MOVQ 0x108(SP), DX
         .          .    10c9fa5: LEAQ 0x18(DX), BX
         .          .    10c9fa9: MOVQ AX, SI
         .          .    10c9fac: MOVQ 0xf8(SP), AX                       ;graph.go:76
         .          .    10c9fb4: MOVQ BX, 0x108(SP)                      ;graph.go:75
         .          .    10c9fbc: MOVQ SI, 0x58(SP)
         .          .    10c9fc1: MOVQ 0x10(BX), CX
         .          .    10c9fc5: MOVQ 0x8(BX), DX
         .          .    10c9fc9: MOVQ 0(BX), DI
         .          .    10c9fcc: MOVQ AX, 0(SP)                          ;graph.go:76
         .          .    10c9fd0: MOVQ SI, 0x8(SP)
         .          .    10c9fd5: MOVQ DI, 0x10(SP)
         .          .    10c9fda: MOVQ DX, 0x18(SP)
         .          .    10c9fdf: MOVQ CX, 0x20(SP)
         .      970ms    10c9fe4: CALL main.(*index).add(SB)              ;main.LoadDictionary graph.go:76
         .          .    10c9fe9: MOVQ 0x58(SP), AX                       ;graph.go:75
         .          .    10c9fee: INCQ AX
         .          .    10c9ff1: MOVQ 0x60(SP), CX
         .          .    10c9ff6: CMPQ CX, AX
         .          .    10c9ff9: JL 0x10c9f9d
         .          .    10c9ffb: MOVQ 0xe8(SP), DX                       ;graph.go:78
         .          .    10ca003: MOVQ 0(DX), AX
         .          .    10ca006: CALL AX
         .          .    10ca008: LEAQ go.string.*+4694(SB), AX           ;graph.go:86
         .          .    10ca00f: MOVQ AX, 0(SP)
         .          .    10ca013: MOVQ $0xc, 0x8(SP)
         .          .    10ca01c: CALL main.newTimer(SB)
         .          .    10ca021: MOVQ 0x10(SP), AX
         .          .    10ca026: MOVQ AX, 0xf0(SP)
         .          .    10ca02e: MOVQ 0x120(SP), CX                      ;graph.go:87
         .          .    10ca036: MOVQ CX, 0(SP)
         .          .    10ca03a: MOVQ 0xf8(SP), BX
         .          .    10ca042: MOVQ BX, 0x8(SP)
         .      2.60s    10ca047: CALL main.(*Graph).buildAdjList(SB)     ;main.LoadDictionary graph.go:87
         .          .    10ca04c: MOVQ 0xf0(SP), DX                       ;graph.go:88
         .          .    10ca054: MOVQ 0(DX), AX
         .          .    10ca057: CALL AX
         .          .    10ca059: MOVQ 0x1e8(SP), AX                      ;graph.go:64
         .          .    10ca061: TESTQ AX, AX
         .          .    10ca064: JNE 0x10ca0ab                           ;graph.go:90
         .          .    10ca066: MOVZX 0x1d8(SP), AX                     ;graph.go:39
         .          .    10ca06e: TESTL AL, AL
         .          .    10ca070: JNE 0x10ca098                           ;graph.go:94
         .          .    10ca072: MOVQ 0x120(SP), AX                      ;graph.go:98
         .          .    10ca07a: MOVQ AX, 0x1f0(SP)
         .          .    10ca082: NOPL
         .          .    10ca083: CALL runtime.deferreturn(SB)
         .          .    10ca088: MOVQ 0x1b8(SP), BP
         .          .    10ca090: ADDQ $0x1c0, SP
         .          .    10ca097: RET
         .          .    10ca098: MOVQ 0x120(SP), AX                      ;graph.go:95
         .          .    10ca0a0: MOVQ AX, 0(SP)
         .          .    10ca0a4: CALL main.adjListStats(SB)
         .          .    10ca0a9: JMP 0x10ca072
         .          .    10ca0ab: MOVQ $0x0, 0(SP)                        ;graph.go:91
         .          .    10ca0b3: MOVQ 0x1e0(SP), CX
         .          .    10ca0bb: MOVQ CX, 0x8(SP)
         .          .    10ca0c0: MOVQ AX, 0x10(SP)
         .          .    10ca0c5: LEAQ go.string.*+2067(SB), AX
         .          .    10ca0cc: MOVQ AX, 0x18(SP)
         .          .    10ca0d1: MOVQ $0x8, 0x20(SP)
         .          .    10ca0da: CALL runtime.concatstring2(SB)
         .          .    10ca0df: MOVQ 0x30(SP), AX
         .          .    10ca0e4: MOVQ 0x28(SP), CX
         .          .    10ca0e9: MOVQ 0x120(SP), DX
         .          .    10ca0f1: MOVQ DX, 0(SP)
         .          .    10ca0f5: MOVQ CX, 0x8(SP)
         .          .    10ca0fa: MOVQ AX, 0x10(SP)
         .          .    10ca0ff: CALL main.(*Graph).dumpAdjList(SB)
         .          .    10ca104: JMP 0x10ca066
         .          .    10ca109: LEAQ 0x18(DX), DI                       ;graph.go:68
         .          .    10ca10d: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca112: JMP 0x10c9ea2
         .          .    10ca117: MOVQ $0x0, 0(SP)                        ;graph.go:65
         .          .    10ca11f: MOVQ 0x1e0(SP), CX
         .          .    10ca127: MOVQ CX, 0x8(SP)
         .          .    10ca12c: MOVQ AX, 0x10(SP)
         .          .    10ca131: LEAQ go.string.*+5334(SB), DX
         .          .    10ca138: MOVQ DX, 0x18(SP)
         .          .    10ca13d: MOVQ $0xd, 0x20(SP)
         .          .    10ca146: CALL runtime.concatstring2(SB)
         .          .    10ca14b: MOVQ 0x30(SP), AX
         .          .    10ca150: MOVQ 0x28(SP), CX
         .          .    10ca155: MOVQ 0x120(SP), DX
         .          .    10ca15d: MOVQ DX, 0(SP)
         .          .    10ca161: MOVQ CX, 0x8(SP)
         .          .    10ca166: MOVQ AX, 0x10(SP)
         .          .    10ca16b: CALL main.(*Graph).dumpVertices(SB)
         .          .    10ca170: JMP 0x10c9e4c
         .          .    10ca175: MOVQ AX, 0x110(SP)                      ;graph.go:48
         .          .    10ca17d: LEAQ runtime.types+157184(SB), AX       ;graph.go:47
         .          .    10ca184: MOVQ AX, 0(SP)
         .          .    10ca188: MOVQ 0x120(SP), AX
         .          .    10ca190: MOVQ AX, 0x8(SP)
         .          .    10ca195: CALL runtime.typedmemclr(SB)
         .          .    10ca19a: MOVQ 0x120(SP), DI
         .          .    10ca1a2: MOVQ 0x110(SP), AX
         .          .    10ca1aa: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca1af: MOVQ DI, CX                             ;graph.go:68
         .          .    10ca1b2: XORPS X0, X0                            ;graph.go:48
         .          .    10ca1b5: JMP 0x10c9c65                           ;graph.go:47
         .          .    10ca1ba: NOPL                                    ;graph.go:45
         .          .    10ca1bb: CALL runtime.deferreturn(SB)
         .          .    10ca1c0: MOVQ 0x1b8(SP), BP
         .          .    10ca1c8: ADDQ $0x1c0, SP
         .          .    10ca1cf: RET
         .          .    10ca1d0: NOPL                                    ;graph.go:40
         .          .    10ca1d1: CALL runtime.deferreturn(SB)
         .          .    10ca1d6: MOVQ 0x1b8(SP), BP
         .          .    10ca1de: ADDQ $0x1c0, SP
         .          .    10ca1e5: RET
         .          .    10ca1e6: MOVQ SI, AX                             ;graph.go:70
         .          .    10ca1e9: CALL runtime.panicIndex(SB)
         .          .    10ca1ee: NOPL
         .          .    10ca1ef: CALL runtime.morestack_noctxt(SB)       ;graph.go:39
         .          .    10ca1f4: JMP main.LoadDictionary(SB)
         .          .    10ca1f9: INT $0x3
         .          .    10ca1fa: INT $0x3
         .          .    10ca1fb: INT $0x3
         .          .    10ca1fc: INT $0x3
         .          .    10ca1fd: INT $0x3
         .          .    10ca1fe: INT $0x3
ROUTINE ======================== main.distance
     120ms      120ms (flat, cum)  1.70% of Total
         .          .    10cae60: SUBQ $0x18, SP                          ;graph.go:283
      10ms       10ms    10cae64: MOVQ BP, 0x10(SP)                       ;main.distance graph.go:283
         .          .    10cae69: LEAQ 0x10(SP), BP                       ;graph.go:283
         .          .    10cae6e: MOVQ 0x28(SP), CX                       ;graph.go:289
         .          .    10cae73: MOVQ 0x40(SP), DX
         .          .    10cae78: CMPQ DX, CX
         .          .    10cae7b: MOVQ CX, BX                             ;graph.go:292
         .          .    10cae7e: CMOVG DX, CX
         .          .    10cae82: MOVQ BX, SI                             ;graph.go:284
         .          .    10cae85: SUBQ DX, BX
         .          .    10cae88: MOVQ DX, DI                             ;graph.go:286
         .          .    10cae8b: SUBQ SI, DX
         .          .    10cae8e: TESTQ BX, BX                            ;graph.go:285
         .          .    10cae91: CMOVL DX, BX                            ;graph.go:294
         .          .    10cae95: MOVQ 0x38(SP), DX                       ;graph.go:285
         .          .    10cae9a: MOVQ 0x20(SP), R8
         .          .    10cae9f: XORL AX, AX
         .          .    10caea1: JMP 0x10caeb6
         .          .    10caea3: MOVZX 0(DX)(AX*1), R10                  ;graph.go:293
      50ms       50ms    10caea8: LEAQ 0x1(BX), R11                       ;main.distance graph.go:294
         .          .    10caeac: CMPL R10, R9                            ;graph.go:293
      10ms       10ms    10caeaf: CMOVNE R11, BX                          ;main.distance graph.go:294
      30ms       30ms    10caeb3: INCQ AX                                 ;main.distance graph.go:292
         .          .    10caeb6: CMPQ CX, AX                             ;graph.go:292
         .          .    10caeb9: JGE 0x10caecc
         .          .    10caebb: CMPQ SI, AX                             ;graph.go:293
         .          .    10caebe: JAE 0x10caee3
         .          .    10caec0: MOVZX 0(R8)(AX*1), R9
         .          .    10caec5: CMPQ DI, AX
         .          .    10caec8: JB 0x10caea3
         .          .    10caeca: JMP 0x10caedb
         .          .    10caecc: MOVQ BX, 0x50(SP)                       ;graph.go:298
      20ms       20ms    10caed1: MOVQ 0x10(SP), BP                       ;main.distance graph.go:298
         .          .    10caed6: ADDQ $0x18, SP                          ;graph.go:298
         .          .    10caeda: RET
         .          .    10caedb: MOVQ DI, CX                             ;graph.go:293
         .          .    10caede: CALL runtime.panicIndex(SB)
         .          .    10caee3: MOVQ SI, CX
         .          .    10caee6: CALL runtime.panicIndex(SB)
         .          .    10caeeb: NOPL
         .          .    10caeec: INT $0x3
         .          .    10caeed: INT $0x3
         .          .    10caeee: INT $0x3
ROUTINE ======================== main.main
         0      3.84s (flat, cum) 54.31% of Total
         .          .    10cc810: MOVQ GS:0x30, CX                        ;main.go:24
         .          .    10cc819: LEAQ 0xfffffd98(SP), AX
         .          .    10cc821: CMPQ 0x10(CX), AX
         .          .    10cc825: JBE 0x10cd50f
         .          .    10cc82b: SUBQ $0x2e8, SP
         .          .    10cc832: MOVQ BP, 0x2e0(SP)
         .          .    10cc83a: LEAQ 0x2e0(SP), BP
         .          .    10cc842: MOVQ os.Args+8(SB), CX                  ;main.go:25
         .          .    10cc849: MOVQ os.Args(SB), DX                    ;flag.go:996
         .          .    10cc850: MOVQ os.Args+16(SB), BX
         .          .    10cc857: CMPQ $0x1, CX
         .          .    10cc85b: JB 0x10cd504
         .          .    10cc861: MOVQ flag.CommandLine(SB), AX
         .          .    10cc868: MOVQ AX, 0(SP)
         .          .    10cc86c: LEAQ -0x1(BX), AX
         .          .    10cc870: MOVQ AX, BX
         .          .    10cc873: NEGQ AX
         .          .    10cc876: SARQ $0x3f, AX
         .          .    10cc87a: ANDQ $0x10, AX
         .          .    10cc87e: ADDQ DX, AX
         .          .    10cc881: MOVQ AX, 0x8(SP)
         .          .    10cc886: LEAQ -0x1(CX), AX
         .          .    10cc88a: MOVQ AX, 0x10(SP)
         .          .    10cc88f: MOVQ BX, 0x18(SP)
         .          .    10cc894: CALL flag.(*FlagSet).Parse(SB)
         .          .    10cc899: MOVQ main.cpuprofile(SB), AX            ;main.go:27
         .          .    10cc8a0: MOVQ 0(AX), CX
         .          .    10cc8a3: MOVQ 0x8(AX), AX
         .          .    10cc8a7: TESTQ AX, AX
         .          .    10cc8aa: JNE 0x10cd3a7
         .          .    10cc8b0: MOVQ main.traceprofile(SB), AX          ;main.go:37
         .          .    10cc8b7: MOVQ 0(AX), CX
         .          .    10cc8ba: MOVQ 0x8(AX), AX
         .          .    10cc8be: TESTQ AX, AX
         .          .    10cc8c1: JNE 0x10cd245
         .          .    10cc8c7: MOVQ main.dump(SB), AX                  ;main.go:47
         .          .    10cc8ce: MOVQ 0x8(AX), CX
         .          .    10cc8d2: MOVQ 0(AX), AX
         .          .    10cc8d5: TESTQ CX, CX
         .          .    10cc8d8: JNE 0x10cd232
         .          .    10cc8de: XORPS X0, X0                            ;main.go:51
         .          .    10cc8e1: MOVUPS X0, 0x250(SP)
         .          .    10cc8e9: LEAQ runtime.types+88448(SB), AX
         .          .    10cc8f0: MOVQ AX, 0x250(SP)
         .          .    10cc8f8: LEAQ internal/bytealg.IndexString.args_stackmap+640(SB), CX
         .          .    10cc8ff: MOVQ CX, 0x258(SP)
         .          .    10cc907: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cc90e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cc915: MOVQ DX, 0(SP)
         .          .    10cc919: MOVQ CX, 0x8(SP)
         .          .    10cc91e: LEAQ 0x250(SP), CX
         .          .    10cc926: MOVQ CX, 0x10(SP)
         .          .    10cc92b: MOVQ $0x1, 0x18(SP)
         .          .    10cc934: MOVQ $0x1, 0x20(SP)
         .          .    10cc93d: CALL fmt.Fprintln(SB)
         .          .    10cc942: MOVQ main.dict(SB), AX                  ;main.go:52
         .          .    10cc949: MOVQ main.perfStats(SB), CX
         .          .    10cc950: MOVQ main.dump(SB), DX
         .          .    10cc957: MOVQ 0x8(AX), BX
         .          .    10cc95b: MOVQ 0(AX), AX
         .          .    10cc95e: MOVZX 0(CX), CX
         .          .    10cc961: MOVQ 0(DX), SI
         .          .    10cc964: MOVQ 0x8(DX), DX
         .          .    10cc968: MOVQ AX, 0(SP)
         .          .    10cc96c: MOVQ BX, 0x8(SP)
         .          .    10cc971: MOVB CL, 0x10(SP)
         .          .    10cc975: MOVQ SI, 0x18(SP)
         .          .    10cc97a: MOVQ DX, 0x20(SP)
         .      3.84s    10cc97f: CALL main.LoadDictionary(SB)            ;main.main main.go:52
         .          .    10cc984: MOVQ 0x28(SP), AX                       ;main.go:52
         .          .    10cc989: MOVQ AX, 0x1d0(SP)
         .          .    10cc991: MOVQ 0x8(AX), CX                        ;graph.go:303
         .          .    10cc995: MOVQ CX, 0x78(SP)
         .          .    10cc99a: MOVQ AX, 0(SP)                          ;main.go:53
         .          .    10cc99e: CALL main.(*Graph).EdgeCount(SB)
         .          .    10cc9a3: MOVQ 0x8(SP), AX
         .          .    10cc9a8: MOVQ AX, 0x70(SP)
         .          .    10cc9ad: MOVQ 0x78(SP), CX
         .          .    10cc9b2: MOVQ CX, 0(SP)
         .          .    10cc9b6: CALL runtime.convT64(SB)
         .          .    10cc9bb: MOVQ 0x8(SP), AX
         .          .    10cc9c0: MOVQ AX, 0x1f8(SP)
         .          .    10cc9c8: MOVQ 0x70(SP), CX
         .          .    10cc9cd: MOVQ CX, 0(SP)
         .          .    10cc9d1: CALL runtime.convT64(SB)
         .          .    10cc9d6: MOVQ 0x8(SP), AX
         .          .    10cc9db: XORPS X0, X0
         .          .    10cc9de: MOVUPS X0, 0x2c0(SP)
         .          .    10cc9e6: MOVUPS X0, 0x2d0(SP)
         .          .    10cc9ee: LEAQ runtime.types+85760(SB), CX
         .          .    10cc9f5: MOVQ CX, 0x2c0(SP)
         .          .    10cc9fd: MOVQ 0x1f8(SP), DX
         .          .    10cca05: MOVQ DX, 0x2c8(SP)
         .          .    10cca0d: MOVQ CX, 0x2d0(SP)
         .          .    10cca15: MOVQ AX, 0x2d8(SP)
         .          .    10cca1d: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cca24: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cca2b: MOVQ CX, 0(SP)
         .          .    10cca2f: MOVQ AX, 0x8(SP)
         .          .    10cca34: LEAQ go.string.*+10897(SB), AX
         .          .    10cca3b: MOVQ AX, 0x10(SP)
         .          .    10cca40: MOVQ $0x14, 0x18(SP)
         .          .    10cca49: LEAQ 0x2c0(SP), AX
         .          .    10cca51: MOVQ AX, 0x20(SP)
         .          .    10cca56: MOVQ $0x2, 0x28(SP)
         .          .    10cca5f: MOVQ $0x2, 0x30(SP)
         .          .    10cca68: CALL fmt.Fprintf(SB)
         .          .    10cca6d: MOVQ main.dictStats(SB), AX             ;main.go:55
         .          .    10cca74: CMPB $0x0, 0(AX)
         .          .    10cca77: JNE 0x10cd211
         .          .    10cca7d: MOVQ main.src(SB), AX                   ;main.go:59
         .          .    10cca84: MOVQ 0(AX), CX
         .          .    10cca87: MOVQ 0x8(AX), AX
         .          .    10cca8b: TESTQ AX, AX
         .          .    10cca8e: JE 0x10ccaa2
         .          .    10cca90: MOVQ main.dest(SB), DX
         .          .    10cca97: CMPQ $0x0, 0x8(DX)
         .          .    10cca9c: JNE 0x10cccae
         .          .    10ccaa2: MOVQ main.printGraph(SB), AX            ;main.go:83
         .          .    10ccaa9: CMPB $0x0, 0(AX)
         .          .    10ccaac: JNE 0x10ccc98
         .          .    10ccab2: MOVQ main.memprofile(SB), AX            ;main.go:87
         .          .    10ccab9: CMPQ $0x0, 0x8(AX)
         .          .    10ccabe: JNE 0x10ccad6
         .          .    10ccac0: NOPL                                    ;main.go:98
         .          .    10ccac1: CALL runtime.deferreturn(SB)
         .          .    10ccac6: MOVQ 0x2e0(SP), BP
         .          .    10ccace: ADDQ $0x2e8, SP
         .          .    10ccad5: RET
         .          .    10ccad6: CALL runtime.GC(SB)                     ;main.go:88
         .          .    10ccadb: MOVQ main.memprofile(SB), AX            ;main.go:89
         .          .    10ccae2: MOVQ 0(AX), CX
         .          .    10ccae5: MOVQ 0x8(AX), AX
         .          .    10ccae9: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10ccaed: MOVQ AX, 0x8(SP)
         .          .    10ccaf2: MOVQ $0x602, 0x10(SP)
         .          .    10ccafb: MOVL $0x1b6, 0x18(SP)
         .          .    10ccb03: CALL os.OpenFile(SB)
         .          .    10ccb08: MOVQ 0x20(SP), AX
         .          .    10ccb0d: MOVQ AX, 0x1f0(SP)
         .          .    10ccb15: MOVQ 0x28(SP), CX
         .          .    10ccb1a: MOVQ 0x30(SP), DX
         .          .    10ccb1f: TESTQ CX, CX                            ;main.go:90
         .          .    10ccb22: JE 0x10ccb8e
         .          .    10ccb24: JE 0x10ccb2a                            ;main.go:91
         .          .    10ccb26: MOVQ 0x8(CX), CX
         .          .    10ccb2a: XORPS X0, X0
         .          .    10ccb2d: MOVUPS X0, 0x260(SP)
         .          .    10ccb35: MOVUPS X0, 0x270(SP)
         .          .    10ccb3d: LEAQ runtime.types+88448(SB), AX
         .          .    10ccb44: MOVQ AX, 0x260(SP)
         .          .    10ccb4c: LEAQ internal/bytealg.IndexString.args_stackmap+672(SB), BX
         .          .    10ccb53: MOVQ BX, 0x268(SP)
         .          .    10ccb5b: MOVQ CX, 0x270(SP)
         .          .    10ccb63: MOVQ DX, 0x278(SP)
         .          .    10ccb6b: LEAQ 0x260(SP), CX
         .          .    10ccb73: MOVQ CX, 0(SP)
         .          .    10ccb77: MOVQ $0x2, 0x8(SP)
         .          .    10ccb80: MOVQ $0x2, 0x10(SP)
         .          .    10ccb89: CALL log.Fatal(SB)
         .          .    10ccb8e: MOVL $0x18, 0xf0(SP)                    ;main.go:93
         .          .    10ccb99: LEAQ go.func.*+293(SB), AX
         .          .    10ccba0: MOVQ AX, 0x108(SP)
         .          .    10ccba8: MOVQ 0x1f0(SP), AX
         .          .    10ccbb0: MOVQ AX, 0x120(SP)
         .          .    10ccbb8: LEAQ 0xf0(SP), CX
         .          .    10ccbc0: MOVQ CX, 0(SP)
         .          .    10ccbc4: CALL runtime.deferprocStack(SB)
         .          .    10ccbc9: TESTL AX, AX
         .          .    10ccbcb: JNE 0x10ccc82
         .          .    10ccbd1: NOPL                                    ;pprof.go:522
         .          .    10ccbd2: LEAQ go.itab.*os.File,io.Writer(SB), AX ;pprof.go:533
         .          .    10ccbd9: MOVQ AX, 0(SP)
         .          .    10ccbdd: MOVQ 0x1f0(SP), AX
         .          .    10ccbe5: MOVQ AX, 0x8(SP)
         .          .    10ccbea: MOVQ $0x0, 0x10(SP)
         .          .    10ccbf3: XORPS X0, X0
         .          .    10ccbf6: MOVUPS X0, 0x18(SP)
         .          .    10ccbfb: CALL runtime/pprof.writeHeapInternal(SB)
         .          .    10ccc00: MOVQ 0x28(SP), AX
         .          .    10ccc05: MOVQ 0x30(SP), CX
         .          .    10ccc0a: TESTQ AX, AX                            ;main.go:94
         .          .    10ccc0d: JE 0x10ccac0
         .          .    10ccc13: JE 0x10ccc19                            ;main.go:95
         .          .    10ccc15: MOVQ 0x8(AX), AX
         .          .    10ccc19: XORPS X0, X0
         .          .    10ccc1c: MOVUPS X0, 0x260(SP)
         .          .    10ccc24: MOVUPS X0, 0x270(SP)
         .          .    10ccc2c: LEAQ runtime.types+88448(SB), DX
         .          .    10ccc33: MOVQ DX, 0x260(SP)
         .          .    10ccc3b: LEAQ internal/bytealg.IndexString.args_stackmap+688(SB), DX
         .          .    10ccc42: MOVQ DX, 0x268(SP)
         .          .    10ccc4a: MOVQ AX, 0x270(SP)
         .          .    10ccc52: MOVQ CX, 0x278(SP)
         .          .    10ccc5a: LEAQ 0x260(SP), AX
         .          .    10ccc62: MOVQ AX, 0(SP)
         .          .    10ccc66: MOVQ $0x2, 0x8(SP)
         .          .    10ccc6f: MOVQ $0x2, 0x10(SP)
         .          .    10ccc78: CALL log.Fatal(SB)
         .          .    10ccc7d: JMP 0x10ccac0
         .          .    10ccc82: NOPL                                    ;main.go:93
         .          .    10ccc83: CALL runtime.deferreturn(SB)
         .          .    10ccc88: MOVQ 0x2e0(SP), BP
         .          .    10ccc90: ADDQ $0x2e8, SP
         .          .    10ccc97: RET
         .          .    10ccc98: MOVQ 0x1d0(SP), AX                      ;main.go:84
         .          .    10ccca0: MOVQ AX, 0(SP)
         .          .    10ccca4: CALL main.(*Graph).PrintAdjList(SB)
         .          .    10ccca9: JMP 0x10ccab2
         .          .    10cccae: MOVQ CX, 0(SP)                          ;main.go:60
         .          .    10cccb2: MOVQ AX, 0x8(SP)
         .          .    10cccb7: CALL runtime.convTstring(SB)
         .          .    10cccbc: MOVQ main.dest(SB), AX
         .          .    10cccc3: MOVQ 0x10(SP), CX
         .          .    10cccc8: MOVQ CX, 0x1f8(SP)
         .          .    10cccd0: MOVQ 0(AX), DX
         .          .    10cccd3: MOVQ 0x8(AX), AX
         .          .    10cccd7: MOVQ DX, 0(SP)
         .          .    10cccdb: MOVQ AX, 0x8(SP)
         .          .    10ccce0: CALL runtime.convTstring(SB)
         .          .    10ccce5: MOVQ 0x10(SP), AX
         .          .    10cccea: XORPS X0, X0
         .          .    10ccced: MOVUPS X0, 0x2a0(SP)
         .          .    10cccf5: MOVUPS X0, 0x2b0(SP)
         .          .    10cccfd: LEAQ runtime.types+88448(SB), CX
         .          .    10ccd04: MOVQ CX, 0x2a0(SP)
         .          .    10ccd0c: MOVQ 0x1f8(SP), DX
         .          .    10ccd14: MOVQ DX, 0x2a8(SP)
         .          .    10ccd1c: MOVQ CX, 0x2b0(SP)
         .          .    10ccd24: MOVQ AX, 0x2b8(SP)
         .          .    10ccd2c: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ccd33: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ccd3a: MOVQ DX, 0(SP)
         .          .    10ccd3e: MOVQ AX, 0x8(SP)
         .          .    10ccd43: LEAQ go.string.*+16166(SB), AX
         .          .    10ccd4a: MOVQ AX, 0x10(SP)
         .          .    10ccd4f: MOVQ $0x1b, 0x18(SP)
         .          .    10ccd58: LEAQ 0x2a0(SP), AX
         .          .    10ccd60: MOVQ AX, 0x20(SP)
         .          .    10ccd65: MOVQ $0x2, 0x28(SP)
         .          .    10ccd6e: MOVQ $0x2, 0x30(SP)
         .          .    10ccd77: CALL fmt.Fprintf(SB)
         .          .    10ccd7c: MOVQ main.src(SB), AX                   ;main.go:61
         .          .    10ccd83: MOVQ 0x8(AX), CX
         .          .    10ccd87: MOVQ 0(AX), AX
         .          .    10ccd8a: MOVQ 0x1d0(SP), DX
         .          .    10ccd92: MOVQ DX, 0(SP)
         .          .    10ccd96: MOVQ AX, 0x8(SP)
         .          .    10ccd9b: MOVQ CX, 0x10(SP)
         .          .    10ccda0: CALL main.(*Graph).Find(SB)
         .          .    10ccda5: MOVQ main.dest(SB), AX                  ;main.go:62
         .          .    10ccdac: MOVQ 0x18(SP), CX                       ;main.go:61
         .          .    10ccdb1: MOVQ CX, 0x58(SP)
         .          .    10ccdb6: MOVQ 0x8(AX), DX                        ;main.go:62
         .          .    10ccdba: MOVQ 0(AX), AX
         .          .    10ccdbd: MOVQ 0x1d0(SP), BX
         .          .    10ccdc5: MOVQ BX, 0(SP)
         .          .    10ccdc9: MOVQ AX, 0x8(SP)
         .          .    10ccdce: MOVQ DX, 0x10(SP)
         .          .    10ccdd3: CALL main.(*Graph).Find(SB)
         .          .    10ccdd8: MOVQ 0x18(SP), AX
         .          .    10ccddd: MOVQ 0x58(SP), CX                       ;main.go:64
         .          .    10ccde2: TESTQ CX, CX
         .          .    10ccde5: JL 0x10cd0b6
         .          .    10ccdeb: TESTQ AX, AX
         .          .    10ccdee: JL 0x10cd0b3
         .          .    10ccdf4: XORPS X0, X0                            ;main.go:74
         .          .    10ccdf7: MOVUPS X0, 0x220(SP)
         .          .    10ccdff: LEAQ runtime.types+88448(SB), AX
         .          .    10cce06: MOVQ AX, 0x220(SP)
         .          .    10cce0e: LEAQ internal/bytealg.IndexString.args_stackmap+656(SB), CX
         .          .    10cce15: MOVQ CX, 0x228(SP)
         .          .    10cce1d: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cce24: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cce2b: MOVQ DX, 0(SP)
         .          .    10cce2f: MOVQ CX, 0x8(SP)
         .          .    10cce34: LEAQ 0x220(SP), CX
         .          .    10cce3c: MOVQ CX, 0x10(SP)
         .          .    10cce41: MOVQ $0x1, 0x18(SP)
         .          .    10cce4a: MOVQ $0x1, 0x20(SP)
         .          .    10cce53: CALL fmt.Fprintln(SB)
         .          .    10cce58: MOVQ 0x1d0(SP), AX                      ;main.go:75
         .          .    10cce60: MOVQ AX, 0(SP)
         .          .    10cce64: MOVQ 0x58(SP), CX
         .          .    10cce69: MOVQ CX, 0x8(SP)
         .          .    10cce6e: CALL main.(*Graph).AllPaths(SB)
         .          .    10cce73: MOVQ main.dest(SB), AX                  ;main.go:76
         .          .    10cce7a: MOVQ 0x10(SP), CX                       ;main.go:75
         .          .    10cce7f: MOVQ 0x8(AX), DX                        ;main.go:76
         .          .    10cce83: MOVQ 0(AX), AX
         .          .    10cce86: MOVQ CX, 0(SP)
         .          .    10cce8a: MOVQ AX, 0x8(SP)
         .          .    10cce8f: MOVQ DX, 0x10(SP)
         .          .    10cce94: CALL main.(*Paths).To(SB)
         .          .    10cce99: MOVQ 0x18(SP), AX
         .          .    10cce9e: MOVQ AX, 0x1c8(SP)
         .          .    10ccea6: MOVQ 0x20(SP), CX
         .          .    10cceab: MOVQ CX, 0x60(SP)
         .          .    10cceb0: TESTQ CX, CX                            ;main.go:77
         .          .    10cceb3: JE 0x10ccfc5
         .          .    10cceb9: MOVQ 0x1d0(SP), DX                      ;main.go:80
         .          .    10ccec1: XORL BX, BX
         .          .    10ccec3: JMP 0x10ccfa3
         .          .    10ccec8: MOVQ BX, 0x78(SP)
         .          .    10ccecd: LEAQ 0(SI)(SI*2), AX                    ;main.go:81
         .          .    10cced1: MOVQ 0x10(R8)(AX*8), CX
         .          .    10cced6: MOVQ 0(R8)(AX*8), DX
         .          .    10cceda: MOVQ 0x8(R8)(AX*8), AX
         .          .    10ccedf: MOVQ $0x0, 0(SP)
         .          .    10ccee7: MOVQ DX, 0x8(SP)
         .          .    10cceec: MOVQ AX, 0x10(SP)
         .          .    10ccef1: MOVQ CX, 0x18(SP)
         .          .    10ccef6: CALL runtime.slicebytetostring(SB)
         .          .    10ccefb: MOVQ 0x28(SP), AX
         .          .    10ccf00: MOVQ 0x20(SP), CX
         .          .    10ccf05: MOVQ CX, 0(SP)
         .          .    10ccf09: MOVQ AX, 0x8(SP)
         .          .    10ccf0e: CALL runtime.convTstring(SB)
         .          .    10ccf13: MOVQ 0x10(SP), AX
         .          .    10ccf18: XORPS X0, X0
         .          .    10ccf1b: MOVUPS X0, 0x210(SP)
         .          .    10ccf23: LEAQ runtime.types+88448(SB), CX
         .          .    10ccf2a: MOVQ CX, 0x210(SP)
         .          .    10ccf32: MOVQ AX, 0x218(SP)
         .          .    10ccf3a: MOVQ os.Stdout(SB), AX                  ;print.go:274
         .          .    10ccf41: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ccf48: MOVQ DX, 0(SP)
         .          .    10ccf4c: MOVQ AX, 0x8(SP)
         .          .    10ccf51: LEAQ 0x210(SP), AX
         .          .    10ccf59: MOVQ AX, 0x10(SP)
         .          .    10ccf5e: MOVQ $0x1, 0x18(SP)
         .          .    10ccf67: MOVQ $0x1, 0x20(SP)
         .          .    10ccf70: CALL fmt.Fprintln(SB)
         .          .    10ccf75: MOVQ 0x78(SP), AX                       ;main.go:80
         .          .    10ccf7a: LEAQ 0x1(AX), BX
         .          .    10ccf7e: MOVQ 0x60(SP), AX
         .          .    10ccf83: MOVQ 0x1d0(SP), CX
         .          .    10ccf8b: MOVQ 0x1c8(SP), DX
         .          .    10ccf93: MOVQ DX, AX
         .          .    10ccf96: MOVQ 0x60(SP), CX
         .          .    10ccf9b: MOVQ 0x1d0(SP), DX                      ;main.go:81
         .          .    10ccfa3: CMPQ CX, BX                             ;main.go:80
         .          .    10ccfa6: JGE 0x10ccab2
         .          .    10ccfac: MOVQ 0(AX)(BX*8), SI
         .          .    10ccfb0: MOVQ 0x8(DX), DI                        ;main.go:81
         .          .    10ccfb4: MOVQ 0(DX), R8
         .          .    10ccfb7: CMPQ DI, SI
         .          .    10ccfba: JB 0x10ccec8
         .          .    10ccfc0: JMP 0x10cd4f9
         .          .    10ccfc5: MOVQ main.src(SB), AX                   ;main.go:78
         .          .    10ccfcc: MOVQ 0x8(AX), CX
         .          .    10ccfd0: MOVQ 0(AX), AX
         .          .    10ccfd3: MOVQ AX, 0(SP)
         .          .    10ccfd7: MOVQ CX, 0x8(SP)
         .          .    10ccfdc: CALL runtime.convTstring(SB)
         .          .    10ccfe1: MOVQ main.dest(SB), AX
         .          .    10ccfe8: MOVQ 0x10(SP), CX
         .          .    10ccfed: MOVQ CX, 0x1f8(SP)
         .          .    10ccff5: MOVQ 0x8(AX), DX
         .          .    10ccff9: MOVQ 0(AX), AX
         .          .    10ccffc: MOVQ AX, 0(SP)
         .          .    10cd000: MOVQ DX, 0x8(SP)
         .          .    10cd005: CALL runtime.convTstring(SB)
         .          .    10cd00a: MOVQ 0x10(SP), AX
         .          .    10cd00f: XORPS X0, X0
         .          .    10cd012: MOVUPS X0, 0x280(SP)
         .          .    10cd01a: MOVUPS X0, 0x290(SP)
         .          .    10cd022: LEAQ runtime.types+88448(SB), CX
         .          .    10cd029: MOVQ CX, 0x280(SP)
         .          .    10cd031: MOVQ 0x1f8(SP), DX
         .          .    10cd039: MOVQ DX, 0x288(SP)
         .          .    10cd041: MOVQ CX, 0x290(SP)
         .          .    10cd049: MOVQ AX, 0x298(SP)
         .          .    10cd051: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd058: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd05f: MOVQ DX, 0(SP)
         .          .    10cd063: MOVQ AX, 0x8(SP)
         .          .    10cd068: LEAQ go.string.*+19932(SB), AX
         .          .    10cd06f: MOVQ AX, 0x10(SP)
         .          .    10cd074: MOVQ $0x1f, 0x18(SP)
         .          .    10cd07d: LEAQ 0x280(SP), AX
         .          .    10cd085: MOVQ AX, 0x20(SP)
         .          .    10cd08a: MOVQ $0x2, 0x28(SP)
         .          .    10cd093: MOVQ $0x2, 0x30(SP)
         .          .    10cd09c: CALL fmt.Fprintf(SB)
         .          .    10cd0a1: MOVQ 0x1c8(SP), AX                      ;main.go:80
         .          .    10cd0a9: MOVQ 0x60(SP), CX
         .          .    10cd0ae: JMP 0x10cceb9
         .          .    10cd0b3: TESTQ CX, CX                            ;main.go:64
         .          .    10cd0b6: JL 0x10cd16f                            ;main.go:65
         .          .    10cd0bc: TESTQ AX, AX                            ;main.go:68
         .          .    10cd0bf: JL 0x10cd0d7
         .          .    10cd0c1: NOPL                                    ;main.go:71
         .          .    10cd0c2: CALL runtime.deferreturn(SB)
         .          .    10cd0c7: MOVQ 0x2e0(SP), BP
         .          .    10cd0cf: ADDQ $0x2e8, SP
         .          .    10cd0d6: RET
         .          .    10cd0d7: MOVQ main.dest(SB), AX                  ;main.go:69
         .          .    10cd0de: MOVQ 0(AX), CX
         .          .    10cd0e1: MOVQ 0x8(AX), AX
         .          .    10cd0e5: MOVQ CX, 0(SP)
         .          .    10cd0e9: MOVQ AX, 0x8(SP)
         .          .    10cd0ee: CALL runtime.convTstring(SB)
         .          .    10cd0f3: MOVQ 0x10(SP), AX
         .          .    10cd0f8: XORPS X0, X0
         .          .    10cd0fb: MOVUPS X0, 0x230(SP)
         .          .    10cd103: LEAQ runtime.types+88448(SB), CX
         .          .    10cd10a: MOVQ CX, 0x230(SP)
         .          .    10cd112: MOVQ AX, 0x238(SP)
         .          .    10cd11a: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd121: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cd128: MOVQ CX, 0(SP)
         .          .    10cd12c: MOVQ AX, 0x8(SP)
         .          .    10cd131: LEAQ go.string.*+7812(SB), AX
         .          .    10cd138: MOVQ AX, 0x10(SP)
         .          .    10cd13d: MOVQ $0x11, 0x18(SP)
         .          .    10cd146: LEAQ 0x230(SP), AX
         .          .    10cd14e: MOVQ AX, 0x20(SP)
         .          .    10cd153: MOVQ $0x1, 0x28(SP)
         .          .    10cd15c: MOVQ $0x1, 0x30(SP)
         .          .    10cd165: CALL fmt.Fprintf(SB)
         .          .    10cd16a: JMP 0x10cd0c1                           ;main.go:71
         .          .    10cd16f: MOVQ AX, 0x50(SP)                       ;main.go:62
         .          .    10cd174: MOVQ main.src(SB), AX                   ;main.go:66
         .          .    10cd17b: MOVQ 0x8(AX), CX
         .          .    10cd17f: MOVQ 0(AX), AX
         .          .    10cd182: MOVQ AX, 0(SP)
         .          .    10cd186: MOVQ CX, 0x8(SP)
         .          .    10cd18b: CALL runtime.convTstring(SB)
         .          .    10cd190: MOVQ 0x10(SP), AX
         .          .    10cd195: XORPS X0, X0
         .          .    10cd198: MOVUPS X0, 0x240(SP)
         .          .    10cd1a0: LEAQ runtime.types+88448(SB), CX
         .          .    10cd1a7: MOVQ CX, 0x240(SP)
         .          .    10cd1af: MOVQ AX, 0x248(SP)
         .          .    10cd1b7: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd1be: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd1c5: MOVQ DX, 0(SP)
         .          .    10cd1c9: MOVQ AX, 0x8(SP)
         .          .    10cd1ce: LEAQ go.string.*+7812(SB), AX
         .          .    10cd1d5: MOVQ AX, 0x10(SP)
         .          .    10cd1da: MOVQ $0x11, 0x18(SP)
         .          .    10cd1e3: LEAQ 0x240(SP), BX
         .          .    10cd1eb: MOVQ BX, 0x20(SP)
         .          .    10cd1f0: MOVQ $0x1, 0x28(SP)
         .          .    10cd1f9: MOVQ $0x1, 0x30(SP)
         .          .    10cd202: CALL fmt.Fprintf(SB)
         .          .    10cd207: MOVQ 0x50(SP), AX                       ;main.go:68
         .          .    10cd20c: JMP 0x10cd0bc
         .          .    10cd211: MOVQ main.dict(SB), AX                  ;main.go:56
         .          .    10cd218: MOVQ 0x8(AX), CX
         .          .    10cd21c: MOVQ 0(AX), AX
         .          .    10cd21f: MOVQ AX, 0(SP)
         .          .    10cd223: MOVQ CX, 0x8(SP)
         .          .    10cd228: CALL main.dictionaryStats(SB)
         .          .    10cd22d: JMP 0x10cca7d
         .          .    10cd232: MOVQ AX, 0(SP)                          ;main.go:48
         .          .    10cd236: MOVQ CX, 0x8(SP)
         .          .    10cd23b: CALL main.createPathIfNotExists(SB)
         .          .    10cd240: JMP 0x10cc8de
         .          .    10cd245: NOPL                                    ;main.go:38
         .          .    10cd246: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd24a: MOVQ AX, 0x8(SP)
         .          .    10cd24f: MOVQ $0x602, 0x10(SP)
         .          .    10cd258: MOVL $0x1b6, 0x18(SP)
         .          .    10cd260: CALL os.OpenFile(SB)
         .          .    10cd265: MOVQ 0x20(SP), AX
         .          .    10cd26a: MOVQ AX, 0x1d8(SP)
         .          .    10cd272: MOVQ 0x30(SP), CX
         .          .    10cd277: MOVQ 0x28(SP), DX
         .          .    10cd27c: TESTQ DX, DX                            ;main.go:39
         .          .    10cd27f: JE 0x10cd2eb
         .          .    10cd281: JE 0x10cd287                            ;main.go:40
         .          .    10cd283: MOVQ 0x8(DX), DX
         .          .    10cd287: XORPS X0, X0
         .          .    10cd28a: MOVUPS X0, 0x260(SP)
         .          .    10cd292: MOVUPS X0, 0x270(SP)
         .          .    10cd29a: LEAQ runtime.types+88448(SB), AX
         .          .    10cd2a1: MOVQ AX, 0x260(SP)
         .          .    10cd2a9: LEAQ internal/bytealg.IndexString.args_stackmap+624(SB), BX
         .          .    10cd2b0: MOVQ BX, 0x268(SP)
         .          .    10cd2b8: MOVQ DX, 0x270(SP)
         .          .    10cd2c0: MOVQ CX, 0x278(SP)
         .          .    10cd2c8: LEAQ 0x260(SP), CX
         .          .    10cd2d0: MOVQ CX, 0(SP)
         .          .    10cd2d4: MOVQ $0x2, 0x8(SP)
         .          .    10cd2dd: MOVQ $0x2, 0x10(SP)
         .          .    10cd2e6: CALL log.Fatal(SB)
         .          .    10cd2eb: MOVL $0x18, 0x138(SP)                   ;main.go:42
         .          .    10cd2f6: LEAQ go.func.*+293(SB), AX
         .          .    10cd2fd: MOVQ AX, 0x150(SP)
         .          .    10cd305: MOVQ 0x1d8(SP), CX
         .          .    10cd30d: MOVQ CX, 0x168(SP)
         .          .    10cd315: LEAQ 0x138(SP), DX
         .          .    10cd31d: MOVQ DX, 0(SP)
         .          .    10cd321: CALL runtime.deferprocStack(SB)
         .          .    10cd326: TESTL AX, AX
         .          .    10cd328: JNE 0x10cd391
         .          .    10cd32a: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:43
         .          .    10cd331: MOVQ AX, 0(SP)
         .          .    10cd335: MOVQ 0x1d8(SP), CX
         .          .    10cd33d: MOVQ CX, 0x8(SP)
         .          .    10cd342: CALL runtime/trace.Start(SB)
         .          .    10cd347: MOVL $0x0, 0x80(SP)                     ;main.go:44
         .          .    10cd352: LEAQ go.func.*+1597(SB), AX
         .          .    10cd359: MOVQ AX, 0x98(SP)
         .          .    10cd361: LEAQ 0x80(SP), AX
         .          .    10cd369: MOVQ AX, 0(SP)
         .          .    10cd36d: CALL runtime.deferprocStack(SB)
         .          .    10cd372: TESTL AX, AX
         .          .    10cd374: JNE 0x10cd37b
         .          .    10cd376: JMP 0x10cc8c7
         .          .    10cd37b: NOPL
         .          .    10cd37c: CALL runtime.deferreturn(SB)
         .          .    10cd381: MOVQ 0x2e0(SP), BP
         .          .    10cd389: ADDQ $0x2e8, SP
         .          .    10cd390: RET
         .          .    10cd391: NOPL                                    ;main.go:42
         .          .    10cd392: CALL runtime.deferreturn(SB)
         .          .    10cd397: MOVQ 0x2e0(SP), BP
         .          .    10cd39f: ADDQ $0x2e8, SP
         .          .    10cd3a6: RET
         .          .    10cd3a7: NOPL                                    ;main.go:28
         .          .    10cd3a8: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd3ac: MOVQ AX, 0x8(SP)
         .          .    10cd3b1: MOVQ $0x602, 0x10(SP)
         .          .    10cd3ba: MOVL $0x1b6, 0x18(SP)
         .          .    10cd3c2: CALL os.OpenFile(SB)
         .          .    10cd3c7: MOVQ 0x20(SP), AX
         .          .    10cd3cc: MOVQ AX, 0x1e0(SP)
         .          .    10cd3d4: MOVQ 0x28(SP), CX
         .          .    10cd3d9: MOVQ CX, 0x68(SP)
         .          .    10cd3de: MOVQ 0x30(SP), DX
         .          .    10cd3e3: MOVQ DX, 0x1e8(SP)
         .          .    10cd3eb: MOVL $0x18, 0x180(SP)                   ;main.go:29
         .          .    10cd3f6: LEAQ go.func.*+293(SB), BX
         .          .    10cd3fd: MOVQ BX, 0x198(SP)
         .          .    10cd405: MOVQ AX, 0x1b0(SP)
         .          .    10cd40d: LEAQ 0x180(SP), SI
         .          .    10cd415: MOVQ SI, 0(SP)
         .          .    10cd419: CALL runtime.deferprocStack(SB)
         .          .    10cd41e: TESTL AX, AX
         .          .    10cd420: JNE 0x10cd4e3
         .          .    10cd426: MOVQ 0x68(SP), AX                       ;main.go:30
         .          .    10cd42b: TESTQ AX, AX
         .          .    10cd42e: JE 0x10cd47c
         .          .    10cd430: JE 0x10cd436                            ;main.go:31
         .          .    10cd432: MOVQ 0x8(AX), AX
         .          .    10cd436: XORPS X0, X0
         .          .    10cd439: MOVUPS X0, 0x200(SP)
         .          .    10cd441: MOVQ AX, 0x200(SP)
         .          .    10cd449: MOVQ 0x1e8(SP), AX
         .          .    10cd451: MOVQ AX, 0x208(SP)
         .          .    10cd459: LEAQ 0x200(SP), AX
         .          .    10cd461: MOVQ AX, 0(SP)
         .          .    10cd465: MOVQ $0x1, 0x8(SP)
         .          .    10cd46e: MOVQ $0x1, 0x10(SP)
         .          .    10cd477: CALL log.Fatal(SB)
         .          .    10cd47c: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:33
         .          .    10cd483: MOVQ AX, 0(SP)
         .          .    10cd487: MOVQ 0x1e0(SP), CX
         .          .    10cd48f: MOVQ CX, 0x8(SP)
         .          .    10cd494: CALL runtime/pprof.StartCPUProfile(SB)
         .          .    10cd499: MOVL $0x0, 0xb8(SP)                     ;main.go:34
         .          .    10cd4a4: LEAQ go.func.*+1565(SB), AX
         .          .    10cd4ab: MOVQ AX, 0xd0(SP)
         .          .    10cd4b3: LEAQ 0xb8(SP), AX
         .          .    10cd4bb: MOVQ AX, 0(SP)
         .          .    10cd4bf: CALL runtime.deferprocStack(SB)
         .          .    10cd4c4: TESTL AX, AX
         .          .    10cd4c6: JNE 0x10cd4cd
         .          .    10cd4c8: JMP 0x10cc8b0
         .          .    10cd4cd: NOPL
         .          .    10cd4ce: CALL runtime.deferreturn(SB)
         .          .    10cd4d3: MOVQ 0x2e0(SP), BP
         .          .    10cd4db: ADDQ $0x2e8, SP
         .          .    10cd4e2: RET
         .          .    10cd4e3: NOPL                                    ;main.go:29
         .          .    10cd4e4: CALL runtime.deferreturn(SB)
         .          .    10cd4e9: MOVQ 0x2e0(SP), BP
         .          .    10cd4f1: ADDQ $0x2e8, SP
         .          .    10cd4f8: RET
         .          .    10cd4f9: MOVQ SI, AX                             ;main.go:81
         .          .    10cd4fc: MOVQ DI, CX
         .          .    10cd4ff: CALL runtime.panicIndex(SB)
         .          .    10cd504: MOVL $0x1, AX                           ;flag.go:996
         .          .    10cd509: CALL runtime.panicSliceB(SB)
         .          .    10cd50e: NOPL
         .          .    10cd50f: CALL runtime.morestack_noctxt(SB)       ;main.go:24
         .          .    10cd514: JMP main.main(SB)
         .          .    10cd519: INT $0x3
         .          .    10cd51a: INT $0x3
         .          .    10cd51b: INT $0x3
         .          .    10cd51c: INT $0x3
         .          .    10cd51d: INT $0x3
         .          .    10cd51e: INT $0x3
ROUTINE ======================== main.newIndex
     110ms      130ms (flat, cum)  1.84% of Total
      10ms       10ms    10cbba0: MOVQ GS:0x30, CX                        ;main.newIndex index.go:16
         .          .    10cbba9: CMPQ 0x10(CX), SP                       ;index.go:16
         .          .    10cbbad: JBE 0x10cbdae
         .          .    10cbbb3: SUBQ $0x48, SP
         .          .    10cbbb7: MOVQ BP, 0x40(SP)
         .          .    10cbbbc: LEAQ 0x40(SP), BP
         .          .    10cbbc1: LEAQ runtime.types+77120(SB), AX        ;index.go:17
         .          .    10cbbc8: MOVQ AX, 0(SP)
         .          .    10cbbcc: MOVQ 0x50(SP), AX
         .          .    10cbbd1: MOVQ AX, 0x8(SP)
         .          .    10cbbd6: MOVQ AX, 0x10(SP)
         .       20ms    10cbbdb: CALL runtime.makeslice(SB)              ;main.newIndex index.go:17
         .          .    10cbbe0: MOVQ 0x18(SP), AX                       ;index.go:17
         .          .    10cbbe5: MOVQ AX, 0x38(SP)
         .          .    10cbbea: XORL CX, CX
         .          .    10cbbec: JMP 0x10cbbf5                           ;index.go:18
         .          .    10cbbee: LEAQ 0x1(AX), CX
         .          .    10cbbf2: MOVQ BX, AX                             ;index.go:19
         .          .    10cbbf5: MOVQ 0x50(SP), DX                       ;index.go:18
         .          .    10cbbfa: CMPQ DX, CX
         .          .    10cbbfd: JGE 0x10cbc64
         .          .    10cbbff: MOVQ CX, 0x20(SP)
         .          .    10cbc04: LEAQ runtime.types+85760(SB), AX        ;index.go:19
         .          .    10cbc0b: MOVQ AX, 0(SP)
         .          .    10cbc0f: XORPS X0, X0
         .          .    10cbc12: MOVUPS X0, 0x8(SP)
         .          .    10cbc17: CALL runtime.makeslice(SB)
         .          .    10cbc1c: MOVQ 0x20(SP), AX
         .          .    10cbc21: LEAQ 0(AX)(AX*2), CX
         .          .    10cbc25: MOVQ 0x18(SP), DX
         .          .    10cbc2a: MOVQ 0x38(SP), BX
      70ms       70ms    10cbc2f: MOVQ $0x0, 0x8(BX)(CX*8)                ;main.newIndex index.go:19
      30ms       30ms    10cbc38: MOVQ $0x0, 0x10(BX)(CX*8)
         .          .    10cbc41: LEAQ 0(BX)(CX*8), DI                    ;index.go:19
         .          .    10cbc45: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbc4c: JNE 0x10cbc54
         .          .    10cbc4e: MOVQ DX, 0(BX)(CX*8)
         .          .    10cbc52: JMP 0x10cbbee
         .          .    10cbc54: MOVQ AX, CX                             ;index.go:18
         .          .    10cbc57: MOVQ DX, AX                             ;index.go:19
         .          .    10cbc5a: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbc5f: MOVQ CX, AX                             ;index.go:18
         .          .    10cbc62: JMP 0x10cbbee                           ;index.go:19
         .          .    10cbc64: NOPL                                    ;murmur64.go:18
         .          .    10cbc65: MOVL $0x0, 0(SP)                        ;murmur64.go:22
         .          .    10cbc6c: CALL erichgess/wordladder/vendor/github.com/spaolacci/murmur3.New128WithSeed(SB)
         .          .    10cbc71: MOVQ 0x10(SP), AX
         .          .    10cbc76: MOVQ 0x8(SP), CX
         .          .    10cbc7b: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest128,erichgess/wordladder/vendor/github.com/spaolacci/murmur3.Hash128(SB), DX
         .          .    10cbc82: CMPQ DX, CX
         .          .    10cbc85: JNE 0x10cbd8c
         .          .    10cbc8b: MOVQ AX, 0x28(SP)
         .          .    10cbc90: LEAQ runtime.types+88768(SB), AX        ;index.go:23
         .          .    10cbc97: MOVQ AX, 0(SP)
         .          .    10cbc9b: MOVQ $0x0, 0x8(SP)
         .          .    10cbca4: MOVQ 0x58(SP), AX
         .          .    10cbca9: MOVQ AX, 0x10(SP)
         .          .    10cbcae: CALL runtime.makeslice(SB)
         .          .    10cbcb3: MOVQ 0x18(SP), AX
         .          .    10cbcb8: MOVQ AX, 0x30(SP)
         .          .    10cbcbd: LEAQ runtime.types+195072(SB), CX       ;index.go:25
         .          .    10cbcc4: MOVQ CX, 0(SP)
         .          .    10cbcc8: CALL runtime.newobject(SB)
         .          .    10cbccd: MOVQ 0x8(SP), AX
                                                                          ;index.go:22
         .          .    10cbcd2: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest64,hash.Hash64(SB), CX
         .          .    10cbcd9: MOVQ CX, 0(AX)
         .          .    10cbcdc: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbce3: JNE 0x10cbd73
         .          .    10cbce9: MOVQ 0x28(SP), CX
         .          .    10cbcee: MOVQ CX, 0x8(AX)
         .          .    10cbcf2: MOVQ $0x0, 0x30(AX)                     ;index.go:23
         .          .    10cbcfa: MOVQ 0x58(SP), CX
         .          .    10cbcff: MOVQ CX, 0x38(AX)
         .          .    10cbd03: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbd0a: JNE 0x10cbd5d
         .          .    10cbd0c: MOVQ 0x30(SP), CX
         .          .    10cbd11: MOVQ CX, 0x28(AX)
         .          .    10cbd15: MOVQ 0x50(SP), CX                       ;index.go:24
         .          .    10cbd1a: MOVQ CX, 0x18(AX)
         .          .    10cbd1e: MOVQ CX, 0x20(AX)
         .          .    10cbd22: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbd29: JNE 0x10cbd47
         .          .    10cbd2b: MOVQ 0x38(SP), DX
         .          .    10cbd30: MOVQ DX, 0x10(AX)
         .          .    10cbd34: MOVQ CX, 0x40(AX)                       ;index.go:25
         .          .    10cbd38: MOVQ AX, 0x60(SP)                       ;index.go:21
         .          .    10cbd3d: MOVQ 0x40(SP), BP
         .          .    10cbd42: ADDQ $0x48, SP
         .          .    10cbd46: RET
         .          .    10cbd47: LEAQ 0x10(AX), DI                       ;index.go:24
         .          .    10cbd4b: MOVQ AX, DX                             ;index.go:25
         .          .    10cbd4e: MOVQ 0x38(SP), AX                       ;index.go:24
         .          .    10cbd53: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbd58: MOVQ DX, AX                             ;index.go:25
         .          .    10cbd5b: JMP 0x10cbd34                           ;index.go:24
         .          .    10cbd5d: LEAQ 0x28(AX), DI                       ;index.go:23
         .          .    10cbd61: MOVQ AX, CX                             ;index.go:25
         .          .    10cbd64: MOVQ 0x30(SP), AX                       ;index.go:23
         .          .    10cbd69: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbd6e: MOVQ CX, AX                             ;index.go:24
         .          .    10cbd71: JMP 0x10cbd15                           ;index.go:23
         .          .    10cbd73: LEAQ 0x8(AX), DI                        ;index.go:22
         .          .    10cbd77: MOVQ AX, CX                             ;index.go:25
         .          .    10cbd7a: MOVQ 0x28(SP), AX                       ;index.go:22
         .          .    10cbd7f: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbd84: MOVQ CX, AX                             ;index.go:23
         .          .    10cbd87: JMP 0x10cbcf2                           ;index.go:22
         .          .    10cbd8c: MOVQ CX, 0(SP)                          ;murmur64.go:22
         .          .    10cbd90: LEAQ runtime.types+199968(SB), AX
         .          .    10cbd97: MOVQ AX, 0x8(SP)
         .          .    10cbd9c: LEAQ runtime.types+156064(SB), AX
         .          .    10cbda3: MOVQ AX, 0x10(SP)
         .          .    10cbda8: CALL runtime.panicdottypeI(SB)
         .          .    10cbdad: NOPL
         .          .    10cbdae: CALL runtime.morestack_noctxt(SB)       ;index.go:16
         .          .    10cbdb3: JMP main.newIndex(SB)
         .          .    10cbdb8: INT $0x3
         .          .    10cbdb9: INT $0x3
         .          .    10cbdba: INT $0x3
         .          .    10cbdbb: INT $0x3
         .          .    10cbdbc: INT $0x3
         .          .    10cbdbd: INT $0x3
         .          .    10cbdbe: INT $0x3
ROUTINE ======================== runtime.main
         0      3.84s (flat, cum) 54.31% of Total
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
         .          .    102cc11: LEAQ runtime.types+83008(SB), AX        ;proc.go:168
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
         .      3.84s    102cd0c: CALL AX                                 ;runtime.main proc.go:203
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
         .          .    102cdd9: LEAQ go.string.*+25131(SB), AX          ;proc.go:182
         .          .    102cde0: MOVQ AX, 0(SP)
         .          .    102cde4: MOVQ $0x25, 0x8(SP)
         .          .    102cded: CALL runtime.throw(SB)
         .          .    102cdf2: LEAQ go.string.*+11787(SB), AX          ;proc.go:178
         .          .    102cdf9: MOVQ AX, 0(SP)
         .          .    102cdfd: MOVQ $0x15, 0x8(SP)
         .          .    102ce06: CALL runtime.throw(SB)
         .          .    102ce0b: LEAQ go.string.*+9742(SB), AX           ;proc.go:175
         .          .    102ce12: MOVQ AX, 0(SP)
         .          .    102ce16: MOVQ $0x13, 0x8(SP)
         .          .    102ce1f: CALL runtime.throw(SB)
         .          .    102ce24: LEAQ go.string.*+14919(SB), AX          ;proc.go:171
         .          .    102ce2b: MOVQ AX, 0(SP)
         .          .    102ce2f: MOVQ $0x19, 0x8(SP)
         .          .    102ce38: CALL runtime.throw(SB)
         .          .    102ce3d: LEAQ go.string.*+13763(SB), AX          ;proc.go:152
         .          .    102ce44: MOVQ AX, 0(SP)
         .          .    102ce48: MOVQ $0x17, 0x8(SP)
         .          .    102ce51: CALL runtime.throw(SB)
         .          .    102ce56: LEAQ go.string.*+12882(SB), AX          ;proc.go:147
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
