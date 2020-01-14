Total: 6.03s
ROUTINE ======================== main.(*Graph).buildAdjList
     600ms      2.07s (flat, cum) 34.33% of Total
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
         .          .    10ca238: MOVQ 0x88(SP), R10                      ;graph.go:109
         .          .    10ca240: LEAQ 0x1(R10), R9
         .          .    10ca244: MOVQ 0x78(SP), R10
      10ms       10ms    10ca249: MOVQ 0x70(SP), R11                      ;main.(*Graph).buildAdjList graph.go:109
         .          .    10ca24e: MOVQ 0x98(SP), R12                      ;graph.go:109
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
     480ms      480ms    10ca288: MOVQ 0(R8)(R9*8), R10                   ;main.(*Graph).buildAdjList graph.go:109
      10ms       10ms    10ca28c: MOVQ 0x8(BX), R11                       ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca290: MOVQ 0(BX), R12                         ;graph.go:110
         .          .    10ca293: CMPQ R11, R10
         .          .    10ca296: JAE 0x10ca6b2
         .          .    10ca29c: MOVQ R9, 0x88(SP)                       ;graph.go:109
         .          .    10ca2a4: MOVQ R10, 0x58(SP)
         .          .    10ca2a9: LEAQ 0(R10)(R10*2), AX                  ;graph.go:110
         .          .    10ca2ad: MOVQ AX, 0x80(SP)
         .          .    10ca2b5: MOVQ 0(R12)(AX*8), CX
      50ms       50ms    10ca2b9: MOVQ 0x10(R12)(AX*8), BX                ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca2be: MOVQ 0x8(R12)(AX*8), R8                 ;graph.go:110
         .          .    10ca2c3: MOVQ SI, 0(SP)
         .          .    10ca2c7: MOVQ DI, 0x8(SP)
         .          .    10ca2cc: MOVQ DX, 0x10(SP)
         .          .    10ca2d1: MOVQ CX, 0x18(SP)
         .          .    10ca2d6: MOVQ R8, 0x20(SP)
         .          .    10ca2db: MOVQ BX, 0x28(SP)
      10ms      130ms    10ca2e0: CALL main.distance(SB)                  ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca2e5: CMPQ $0x1, 0x30(SP)                     ;graph.go:110
      20ms       20ms    10ca2eb: JNE 0x10ca4bc                           ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca2f1: MOVQ 0xe8(SP), DX                       ;graph.go:111
         .          .    10ca2f9: MOVQ 0x18(DX), BX
         .          .    10ca2fd: MOVQ 0x20(DX), CX
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
      10ms       10ms    10ca348: MOVQ 0x20(DX), CX                       ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca34c: MOVQ 0x18(DX), DI                       ;graph.go:112
         .          .    10ca350: CMPQ CX, BX
         .          .    10ca353: JAE 0x10ca6a5
         .          .    10ca359: MOVQ 0x80(SP), BX
         .          .    10ca361: MOVQ 0(DI)(BX*8), R8
         .          .    10ca365: MOVQ 0x10(DI)(BX*8), R9
         .          .    10ca36a: MOVQ 0x8(DI)(BX*8), R10
         .          .    10ca36f: LEAQ 0x1(R10), R11
         .          .    10ca373: LEAQ 0(DI)(BX*8), R12
         .          .    10ca377: CMPQ R9, R11
         .          .    10ca37a: JA 0x10ca38e
         .          .    10ca37c: LEAQ 0x1(R10), R9
         .          .    10ca380: MOVQ R9, 0x8(DI)(BX*8)
         .          .    10ca385: MOVQ AX, 0(R8)(R10*8)
         .          .    10ca389: JMP 0x10ca238
         .          .    10ca38e: MOVQ R12, 0xb8(SP)
         .          .    10ca396: MOVQ DI, 0xb0(SP)
         .          .    10ca39e: LEAQ runtime.types+85824(SB), AX
         .          .    10ca3a5: MOVQ AX, 0(SP)
         .          .    10ca3a9: MOVQ R8, 0x8(SP)
         .          .    10ca3ae: MOVQ R10, 0x10(SP)
         .          .    10ca3b3: MOVQ R9, 0x18(SP)
         .          .    10ca3b8: MOVQ R11, 0x20(SP)
         .      180ms    10ca3bd: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:112
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
      10ms       10ms    10ca42d: MOVQ R11, 0xa0(SP)                      ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca435: LEAQ runtime.types+85824(SB), AX        ;graph.go:111
         .          .    10ca43c: MOVQ AX, 0(SP)
         .          .    10ca440: MOVQ R9, 0x8(SP)
         .          .    10ca445: MOVQ R8, 0x10(SP)
         .          .    10ca44a: MOVQ DI, 0x18(SP)
         .          .    10ca44f: MOVQ R10, 0x20(SP)
         .      140ms    10ca454: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:111
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
         .      220ms    10ca548: CALL main.(*index).nearCount(SB)        ;main.(*Graph).buildAdjList graph.go:105
         .          .    10ca54d: MOVQ 0x20(SP), AX                       ;graph.go:105
         .          .    10ca552: MOVQ AX, 0x78(SP)
         .          .    10ca557: LEAQ runtime.types+85824(SB), CX        ;graph.go:107
         .          .    10ca55e: MOVQ CX, 0(SP)
         .          .    10ca562: MOVQ AX, 0x8(SP)
         .          .    10ca567: MOVQ AX, 0x10(SP)
         .      100ms    10ca56c: CALL runtime.makeslice(SB)              ;main.(*Graph).buildAdjList graph.go:107
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
         .      710ms    10ca5bf: CALL main.(*index).near(SB)             ;main.(*Graph).buildAdjList graph.go:108
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
         .          .    10ca62e: LEAQ runtime.types+84096(SB), CX
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
      60ms      580ms (flat, cum)  9.62% of Total
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
         .          .    10cbe38: MOVQ 0xa8(SP), R10
         .          .    10cbe40: MOVQ R10, 0(R9)(R8*8)
         .          .    10cbe44: MOVQ 0x78(SP), R9                       ;index.go:33
         .          .    10cbe49: MOVQ 0x50(SP), R11
         .          .    10cbe4e: MOVQ 0x58(SP), R12
         .          .    10cbe53: MOVQ 0xb8(SP), R13
         .          .    10cbe5b: MOVQ 0xb0(SP), R14
         .          .    10cbe63: MOVQ 0x68(SP), R15
         .          .    10cbe68: MOVQ R12, CX                            ;index.go:104
         .          .    10cbe6b: MOVQ R11, DX                            ;index.go:103
         .          .    10cbe6e: MOVQ 0xa0(SP), BX                       ;index.go:36
         .          .    10cbe76: MOVQ R9, SI                             ;index.go:104
         .          .    10cbe79: MOVQ R13, DI                            ;index.go:33
         .          .    10cbe7c: MOVQ R14, R8                            ;index.go:105
      10ms       10ms    10cbe7f: MOVQ R15, AX                            ;main.(*index).add index.go:33
         .          .    10cbe82: CMPQ DI, AX                             ;index.go:33
         .          .    10cbe85: JGE 0x10cc093
         .       20ms    10cbe8b: NOPL                                    ;main.(*index).add index.go:34
         .          .    10cbe8c: CMPQ DX, AX                             ;index.go:103
         .          .    10cbe8f: JA 0x10cc0b8
         .          .    10cbe95: CMPQ CX, AX                             ;index.go:104
         .          .    10cbe98: JA 0x10cc0b3
         .          .    10cbe9e: MOVQ AX, 0x48(SP)                       ;index.go:33
         .          .    10cbea3: SUBQ AX, CX                             ;index.go:104
         .          .    10cbea6: MOVQ CX, 0x40(SP)
         .          .    10cbeab: SUBQ AX, DX
         .          .    10cbeae: NEGQ DX
         .          .    10cbeb1: SARQ $0x3f, DX
         .          .    10cbeb5: ANDQ AX, DX
         .          .    10cbeb8: ADDQ SI, DX
         .          .    10cbebb: MOVQ DX, 0x70(SP)
         .          .    10cbec0: CMPQ R8, SI                             ;index.go:105
         .          .    10cbec3: JE 0x10cbed8
         .          .    10cbec5: MOVQ SI, 0(SP)
         .          .    10cbec9: MOVQ R8, 0x8(SP)
         .          .    10cbece: MOVQ AX, 0x10(SP)
         .       10ms    10cbed3: CALL runtime.memmove(SB)                ;main.skipOneCopy index.go:105
         .          .    10cbed8: MOVQ 0x48(SP), AX                       ;index.go:106
      10ms       10ms    10cbedd: INCQ AX                                 ;main.skipOneCopy index.go:106
         .          .    10cbee0: MOVQ AX, 0x68(SP)                       ;index.go:106
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
         .       10ms    10cbf41: CALL CX                                 ;main.(*index).add index.go:36
         .          .    10cbf43: MOVQ 0xa0(SP), AX                       ;index.go:37
         .          .    10cbf4b: MOVQ 0(AX), CX
         .          .    10cbf4e: MOVQ 0x8(AX), DX
         .          .    10cbf52: MOVQ 0x40(CX), CX
         .          .    10cbf56: MOVQ DX, 0(SP)
         .          .    10cbf5a: MOVQ 0x78(SP), DX
         .          .    10cbf5f: MOVQ DX, 0x8(SP)
         .          .    10cbf64: MOVQ 0x58(SP), BX
         .          .    10cbf69: MOVQ BX, 0x10(SP)
         .          .    10cbf6e: MOVQ 0x50(SP), SI
         .          .    10cbf73: MOVQ SI, 0x18(SP)
         .       10ms    10cbf78: CALL CX                                 ;main.(*index).add index.go:37
         .          .    10cbf7a: MOVQ 0xa0(SP), AX                       ;index.go:38
         .          .    10cbf82: MOVQ 0(AX), CX
         .          .    10cbf85: MOVQ 0x8(AX), DX
         .          .    10cbf89: MOVQ 0x38(CX), CX
         .          .    10cbf8d: MOVQ DX, 0(SP)
         .       10ms    10cbf91: CALL CX                                 ;main.(*index).add index.go:38
         .          .    10cbf93: MOVQ 0x8(SP), AX                        ;index.go:38
         .          .    10cbf98: MOVQ 0xa0(SP), CX
         .          .    10cbfa0: MOVQ 0x40(CX), DX
         .          .    10cbfa4: TESTQ DX, DX
         .          .    10cbfa7: JE 0x10cc0ae
         .          .    10cbfad: MOVQ DX, BX
         .          .    10cbfb0: XORL DX, DX
         .          .    10cbfb2: DIVQ BX
         .          .    10cbfb5: MOVQ 0x10(CX), BX                       ;index.go:39
         .          .    10cbfb9: MOVQ 0x18(CX), SI
         .          .    10cbfbd: CMPQ SI, DX
         .          .    10cbfc0: JAE 0x10cc0a3
         .          .    10cbfc6: LEAQ 0(DX)(DX*2), SI
         .          .    10cbfca: MOVQ 0x10(BX)(SI*8), DI
      40ms       40ms    10cbfcf: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*index).add index.go:39
         .          .    10cbfd4: MOVQ 0(BX)(SI*8), R9                    ;index.go:39
         .          .    10cbfd8: LEAQ 0x1(R8), R10
         .          .    10cbfdc: LEAQ 0(BX)(SI*8), R11
         .          .    10cbfe0: CMPQ DI, R10
         .          .    10cbfe3: JBE 0x10cbe2f
         .          .    10cbfe9: MOVQ BX, 0x88(SP)
         .          .    10cbff1: MOVQ SI, 0x60(SP)
         .          .    10cbff6: MOVQ R11, 0x80(SP)
         .          .    10cbffe: LEAQ runtime.types+85824(SB), AX
         .          .    10cc005: MOVQ AX, 0(SP)
         .          .    10cc009: MOVQ R9, 0x8(SP)
         .          .    10cc00e: MOVQ R8, 0x10(SP)
         .          .    10cc013: MOVQ DI, 0x18(SP)
         .          .    10cc018: MOVQ R10, 0x20(SP)
         .      460ms    10cc01d: CALL runtime.growslice(SB)              ;main.(*index).add index.go:39
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
         .          .    10cc07b: MOVQ R8, 0(SP)                          ;index.go:106
         .          .    10cc07f: MOVQ CX, 0x8(SP)
         .          .    10cc084: MOVQ BX, 0x10(SP)
         .          .    10cc089: CALL runtime.memmove(SB)
         .          .    10cc08e: JMP 0x10cbf2a
         .          .    10cc093: MOVQ 0x90(SP), BP
         .          .    10cc09b: ADDQ $0x98, SP
         .          .    10cc0a2: RET
         .          .    10cc0a3: MOVQ DX, AX                             ;index.go:39
         .          .    10cc0a6: MOVQ SI, CX
         .          .    10cc0a9: CALL runtime.panicIndexU(SB)
         .          .    10cc0ae: CALL runtime.panicdivide(SB)            ;index.go:38
         .          .    10cc0b3: CALL runtime.panicSliceB(SB)            ;index.go:104
         .          .    10cc0b8: MOVQ AX, CX                             ;index.go:103
         .          .    10cc0bb: CALL runtime.panicSliceAcap(SB)
         .          .    10cc0c0: CALL runtime.panicSliceAcap(SB)         ;index.go:32
         .          .    10cc0c5: NOPL
         .          .    10cc0c6: CALL runtime.morestack_noctxt(SB)       ;index.go:29
         .          .    10cc0cb: ?
         .          .    10cc0cc: LOCK CLD
         .          .    10cc0ce: ?
ROUTINE ======================== main.(*index).near
      70ms      730ms (flat, cum) 12.11% of Total
         .          .    10cc460: MOVQ GS:0x30, CX                        ;index.go:81
         .          .    10cc469: LEAQ -0x8(SP), AX
         .          .    10cc46e: CMPQ 0x10(CX), AX
         .          .    10cc472: JBE 0x10cc879
         .          .    10cc478: SUBQ $0x88, SP
         .          .    10cc47f: MOVQ BP, 0x80(SP)
         .          .    10cc487: LEAQ 0x80(SP), BP
         .          .    10cc48f: MOVQ 0x90(SP), AX                       ;index.go:82
         .          .    10cc497: MOVQ 0(AX), CX
         .          .    10cc49a: MOVQ 0x8(AX), DX
         .          .    10cc49e: MOVQ 0x20(CX), CX
         .          .    10cc4a2: MOVQ DX, 0(SP)
         .          .    10cc4a6: CALL CX
         .          .    10cc4a8: MOVQ 0x90(SP), AX                       ;index.go:83
         .          .    10cc4b0: MOVQ 0(AX), CX
         .          .    10cc4b3: MOVQ 0x8(AX), DX
         .          .    10cc4b7: MOVQ 0x40(CX), CX
         .          .    10cc4bb: MOVQ DX, 0(SP)
         .          .    10cc4bf: MOVQ 0x98(SP), DX
         .          .    10cc4c7: MOVQ DX, 0x8(SP)
         .          .    10cc4cc: MOVQ 0xa0(SP), BX
         .          .    10cc4d4: MOVQ BX, 0x10(SP)
         .          .    10cc4d9: MOVQ 0xa8(SP), SI
         .          .    10cc4e1: MOVQ SI, 0x18(SP)
         .       10ms    10cc4e6: CALL CX                                 ;main.(*index).near index.go:83
         .          .    10cc4e8: MOVQ 0x90(SP), AX                       ;index.go:84
         .          .    10cc4f0: MOVQ 0(AX), CX
         .          .    10cc4f3: MOVQ 0x8(AX), DX
         .          .    10cc4f7: MOVQ 0x38(CX), CX
         .          .    10cc4fb: MOVQ DX, 0(SP)
         .          .    10cc4ff: CALL CX
         .          .    10cc501: MOVQ 0x8(SP), AX
         .          .    10cc506: MOVQ 0x90(SP), CX
         .          .    10cc50e: MOVQ 0x40(CX), DX
         .          .    10cc512: TESTQ DX, DX
         .          .    10cc515: JE 0x10cc873
         .          .    10cc51b: MOVQ DX, BX
         .          .    10cc51e: XORL DX, DX
         .          .    10cc520: DIVQ BX
         .          .    10cc523: MOVQ 0x10(CX), BX                       ;index.go:85
         .          .    10cc527: MOVQ 0x18(CX), SI
         .          .    10cc52b: CMPQ SI, DX
         .          .    10cc52e: JAE 0x10cc868
         .          .    10cc534: LEAQ 0(DX)(DX*2), SI
         .          .    10cc538: MOVQ 0x8(BX)(SI*8), DI
         .          .    10cc53d: MOVQ 0xb8(SP), R8
         .          .    10cc545: CMPQ DI, R8
         .          .    10cc548: MOVQ R8, R9
         .          .    10cc54b: CMOVG DI, R8
         .          .    10cc54f: MOVQ 0(BX)(SI*8), BX
         .          .    10cc553: MOVQ 0xb0(SP), SI
         .          .    10cc55b: CMPQ SI, BX
         .          .    10cc55e: JNE 0x10cc7fa
         .          .    10cc564: MOVQ 0x38(CX), DX                       ;index.go:87
         .          .    10cc568: MOVQ 0x28(CX), BX
         .          .    10cc56c: MOVQ 0xa0(SP), DI
         .          .    10cc574: LEAQ -0x1(DI), R10
         .          .    10cc578: CMPQ DX, R10
         .          .    10cc57b: JA 0x10cc860
         .          .    10cc581: MOVQ R10, 0x58(SP)
         .          .    10cc586: MOVQ DX, 0x48(SP)
         .          .    10cc58b: MOVQ BX, 0x78(SP)
         .          .    10cc590: MOVQ 0x98(SP), R11                      ;index.go:88
         .          .    10cc598: XORL AX, AX
         .          .    10cc59a: JMP 0x10cc5e2
         .          .    10cc59c: MOVQ 0xa0(SP), R12
         .          .    10cc5a4: MOVQ 0x78(SP), R13
         .          .    10cc5a9: MOVQ 0x48(SP), R14
         .          .    10cc5ae: MOVQ 0x58(SP), R15
         .          .    10cc5b3: MOVQ 0x98(SP), AX
         .          .    10cc5bb: MOVQ 0x68(SP), DX
         .          .    10cc5c0: MOVQ R14, DX                            ;index.go:103
         .          .    10cc5c3: MOVQ R13, BX                            ;index.go:104
         .          .    10cc5c6: MOVQ R12, DI                            ;index.go:88
         .          .    10cc5c9: MOVQ R8, R9                             ;index.go:95
         .          .    10cc5cc: MOVQ R15, R10                           ;index.go:104
         .          .    10cc5cf: MOVQ AX, R11                            ;index.go:105
         .          .    10cc5d2: MOVQ 0x68(SP), AX                       ;index.go:88
         .          .    10cc5d7: MOVQ SI, R8                             ;index.go:95
         .          .    10cc5da: MOVQ 0xb0(SP), SI
         .          .    10cc5e2: CMPQ DI, AX                             ;index.go:88
         .          .    10cc5e5: JGE 0x10cc7ea
         .       20ms    10cc5eb: NOPL                                    ;main.(*index).near index.go:89
         .          .    10cc5ec: CMPQ DX, AX                             ;index.go:103
         .          .    10cc5ef: JA 0x10cc858
         .          .    10cc5f5: CMPQ R10, AX                            ;index.go:104
         .          .    10cc5f8: JA 0x10cc850
         .          .    10cc5fe: MOVQ AX, 0x40(SP)                       ;index.go:88
         .          .    10cc603: MOVQ R8, 0x50(SP)                       ;index.go:95
         .          .    10cc608: SUBQ AX, R10                            ;index.go:104
         .          .    10cc60b: MOVQ R10, 0x38(SP)
         .          .    10cc610: SUBQ AX, DX
         .          .    10cc613: NEGQ DX
         .          .    10cc616: SARQ $0x3f, DX
         .          .    10cc61a: ANDQ AX, DX
         .          .    10cc61d: ADDQ BX, DX
         .          .    10cc620: MOVQ DX, 0x70(SP)
         .          .    10cc625: CMPQ R11, BX                            ;index.go:105
         .          .    10cc628: JE 0x10cc63d
         .          .    10cc62a: MOVQ BX, 0(SP)
         .          .    10cc62e: MOVQ R11, 0x8(SP)
         .          .    10cc633: MOVQ AX, 0x10(SP)
         .          .    10cc638: CALL runtime.memmove(SB)
      10ms       10ms    10cc63d: MOVQ 0x40(SP), AX                       ;main.skipOneCopy index.go:106
         .          .    10cc642: INCQ AX                                 ;index.go:106
         .          .    10cc645: MOVQ AX, 0x68(SP)
         .          .    10cc64a: MOVQ 0xa0(SP), CX
         .          .    10cc652: SUBQ AX, CX
         .          .    10cc655: MOVQ 0x38(SP), BX
         .          .    10cc65a: CMPQ CX, BX
         .          .    10cc65d: CMOVG CX, BX
         .          .    10cc661: MOVQ 0xa8(SP), CX
         .          .    10cc669: SUBQ AX, CX
         .          .    10cc66c: NEGQ CX
         .          .    10cc66f: SARQ $0x3f, CX
         .          .    10cc673: ANDQ AX, CX
         .          .    10cc676: MOVQ 0x98(SP), DI
         .          .    10cc67e: ADDQ DI, CX
         .          .    10cc681: MOVQ 0x70(SP), R8
         .          .    10cc686: CMPQ R8, CX
         .          .    10cc689: JNE 0x10cc7d2
         .          .    10cc68f: MOVQ 0x90(SP), AX                       ;index.go:91
         .          .    10cc697: MOVQ 0(AX), CX
         .          .    10cc69a: MOVQ 0x8(AX), DX
         .          .    10cc69e: MOVQ 0x20(CX), CX
         .          .    10cc6a2: MOVQ DX, 0(SP)
         .          .    10cc6a6: CALL CX
         .          .    10cc6a8: MOVQ 0x90(SP), AX                       ;index.go:92
         .          .    10cc6b0: MOVQ 0(AX), CX
         .          .    10cc6b3: MOVQ 0x8(AX), DX
         .          .    10cc6b7: MOVQ 0x40(CX), CX
         .          .    10cc6bb: MOVQ DX, 0(SP)
         .          .    10cc6bf: MOVQ 0x78(SP), DX
         .          .    10cc6c4: MOVQ DX, 0x8(SP)
         .          .    10cc6c9: MOVQ 0x58(SP), BX
         .          .    10cc6ce: MOVQ BX, 0x10(SP)
         .          .    10cc6d3: MOVQ 0x48(SP), SI
         .          .    10cc6d8: MOVQ SI, 0x18(SP)
         .       60ms    10cc6dd: CALL CX                                 ;main.(*index).near index.go:92
         .          .    10cc6df: MOVQ 0x90(SP), AX                       ;index.go:93
         .          .    10cc6e7: MOVQ 0(AX), CX
         .          .    10cc6ea: MOVQ 0x8(AX), DX
         .          .    10cc6ee: MOVQ 0x38(CX), CX
         .          .    10cc6f2: MOVQ DX, 0(SP)
         .       30ms    10cc6f6: CALL CX                                 ;main.(*index).near index.go:93
         .          .    10cc6f8: MOVQ 0x8(SP), AX                        ;index.go:93
         .          .    10cc6fd: MOVQ 0x90(SP), CX
         .          .    10cc705: MOVQ 0x40(CX), DX
         .          .    10cc709: TESTQ DX, DX
         .          .    10cc70c: JE 0x10cc84b
         .          .    10cc712: MOVQ DX, BX
         .          .    10cc715: XORL DX, DX
         .          .    10cc717: DIVQ BX
      30ms       30ms    10cc71a: MOVQ 0x10(CX), BX                       ;main.(*index).near index.go:94
         .          .    10cc71e: MOVQ 0x18(CX), SI                       ;index.go:94
         .          .    10cc722: CMPQ SI, DX
         .          .    10cc725: JAE 0x10cc840
         .          .    10cc72b: LEAQ 0(DX)(DX*2), SI
         .          .    10cc72f: MOVQ 0(BX)(SI*8), DI
      30ms       30ms    10cc733: MOVQ 0x8(BX)(SI*8), BX                  ;main.(*index).near index.go:94
         .          .    10cc738: MOVQ 0x50(SP), AX                       ;index.go:95
         .          .    10cc73d: MOVQ 0xb8(SP), SI
         .          .    10cc745: CMPQ SI, AX
         .          .    10cc748: JA 0x10cc838
         .          .    10cc74e: MOVQ SI, R8
         .          .    10cc751: SUBQ AX, SI
         .          .    10cc754: CMPQ BX, SI
         .          .    10cc757: CMOVG BX, SI
         .          .    10cc75b: MOVQ 0xc0(SP), BX
         .          .    10cc763: MOVQ BX, R9
         .          .    10cc766: SUBQ AX, BX
         .          .    10cc769: NEGQ BX
         .          .    10cc76c: SHLQ $0x3, AX
         .          .    10cc770: SARQ $0x3f, BX
         .          .    10cc774: ANDQ BX, AX
         .          .    10cc777: MOVQ 0xb0(SP), BX
         .          .    10cc77f: LEAQ 0(BX)(AX*1), R10
         .          .    10cc783: CMPQ DI, R10
         .          .    10cc786: JE 0x10cc59c
         .          .    10cc78c: MOVQ SI, 0x60(SP)
         .          .    10cc791: MOVQ R10, 0(SP)
         .          .    10cc795: MOVQ DI, 0x8(SP)
         .          .    10cc79a: SHLQ $0x3, SI
         .          .    10cc79e: MOVQ SI, 0x10(SP)
         .      420ms    10cc7a3: CALL runtime.memmove(SB)                ;main.(*index).near index.go:95
         .          .    10cc7a8: MOVQ 0x90(SP), CX                       ;index.go:91
         .          .    10cc7b0: MOVQ 0xb0(SP), BX                       ;index.go:95
         .          .    10cc7b8: MOVQ 0x60(SP), SI
         .          .    10cc7bd: MOVQ 0xb8(SP), R8
         .          .    10cc7c5: MOVQ 0xc0(SP), R9
         .          .    10cc7cd: JMP 0x10cc59c
         .          .    10cc7d2: MOVQ R8, 0(SP)                          ;index.go:106
         .          .    10cc7d6: MOVQ CX, 0x8(SP)
         .          .    10cc7db: MOVQ BX, 0x10(SP)
         .       10ms    10cc7e0: CALL runtime.memmove(SB)                ;main.skipOneCopy index.go:106
         .          .    10cc7e5: JMP 0x10cc68f                           ;index.go:106
         .          .    10cc7ea: MOVQ 0x80(SP), BP
         .          .    10cc7f2: ADDQ $0x88, SP
         .          .    10cc7f9: RET
         .          .    10cc7fa: MOVQ R8, 0x50(SP)                       ;index.go:85
         .          .    10cc7ff: MOVQ SI, 0(SP)
         .          .    10cc803: MOVQ BX, 0x8(SP)
         .          .    10cc808: SHLQ $0x3, R8
         .          .    10cc80c: MOVQ R8, 0x10(SP)
         .      110ms    10cc811: CALL runtime.memmove(SB)                ;main.(*index).near index.go:85
         .          .    10cc816: MOVQ 0x90(SP), CX                       ;index.go:87
         .          .    10cc81e: MOVQ 0xb0(SP), SI                       ;index.go:95
         .          .    10cc826: MOVQ 0x50(SP), R8
         .          .    10cc82b: MOVQ 0xb8(SP), R9
         .          .    10cc833: JMP 0x10cc564                           ;index.go:85
         .          .    10cc838: MOVQ SI, CX                             ;index.go:95
         .          .    10cc83b: CALL runtime.panicSliceB(SB)
         .          .    10cc840: MOVQ DX, AX                             ;index.go:94
         .          .    10cc843: MOVQ SI, CX
         .          .    10cc846: CALL runtime.panicIndexU(SB)
         .          .    10cc84b: CALL runtime.panicdivide(SB)            ;index.go:93
         .          .    10cc850: MOVQ R10, CX                            ;index.go:104
         .          .    10cc853: CALL runtime.panicSliceB(SB)
         .          .    10cc858: MOVQ AX, CX                             ;index.go:103
         .          .    10cc85b: CALL runtime.panicSliceAcap(SB)
         .          .    10cc860: MOVQ R10, CX                            ;index.go:87
         .          .    10cc863: CALL runtime.panicSliceAcap(SB)
         .          .    10cc868: MOVQ DX, AX                             ;index.go:85
         .          .    10cc86b: MOVQ SI, CX
         .          .    10cc86e: CALL runtime.panicIndexU(SB)
         .          .    10cc873: CALL runtime.panicdivide(SB)            ;index.go:84
         .          .    10cc878: NOPL
         .          .    10cc879: CALL runtime.morestack_noctxt(SB)       ;index.go:81
         .          .    10cc87e: JMP main.(*index).near(SB)
         .          .    10cc883: INT $0x3
         .          .    10cc884: INT $0x3
         .          .    10cc885: INT $0x3
         .          .    10cc886: INT $0x3
         .          .    10cc887: INT $0x3
         .          .    10cc888: INT $0x3
         .          .    10cc889: INT $0x3
         .          .    10cc88a: INT $0x3
         .          .    10cc88b: INT $0x3
         .          .    10cc88c: INT $0x3
         .          .    10cc88d: INT $0x3
         .          .    10cc88e: INT $0x3
ROUTINE ======================== main.(*index).nearCount
     160ms      230ms (flat, cum)  3.81% of Total
         .          .    10cc0d0: MOVQ GS:0x30, CX                        ;index.go:57
         .          .    10cc0d9: LEAQ 0xfffffe80(SP), AX
         .          .    10cc0e1: CMPQ 0x10(CX), AX
         .          .    10cc0e5: JBE 0x10cc453
         .          .    10cc0eb: SUBQ $0x200, SP
         .          .    10cc0f2: MOVQ BP, 0x1f8(SP)
         .          .    10cc0fa: LEAQ 0x1f8(SP), BP
         .          .    10cc102: LEAQ 0x68(SP), DI                       ;index.go:58
         .          .    10cc107: XORPS X0, X0
         .          .    10cc10a: MOVQ BP, -0x10(SP)
         .          .    10cc10f: LEAQ -0x10(SP), BP
         .          .    10cc114: CALL 0x105866e
         .          .    10cc119: MOVQ 0(BP), BP
         .          .    10cc11d: MOVQ 0x218(SP), AX                      ;index.go:59
         .          .    10cc125: LEAQ 0x1(AX), CX
         .          .    10cc129: CMPQ $0x30, CX
         .          .    10cc12d: JA 0x10cc448
         .          .    10cc133: MOVQ CX, 0x50(SP)
         .          .    10cc138: MOVQ 0x208(SP), AX                      ;index.go:60
         .          .    10cc140: MOVQ 0(AX), CX
         .          .    10cc143: MOVQ 0x8(AX), DX
         .          .    10cc147: MOVQ 0x20(CX), CX
         .          .    10cc14b: MOVQ DX, 0(SP)
         .       10ms    10cc14f: CALL CX                                 ;main.(*index).nearCount index.go:60
         .          .    10cc151: MOVQ 0x208(SP), AX                      ;index.go:61
         .          .    10cc159: MOVQ 0(AX), CX
         .          .    10cc15c: MOVQ 0x8(AX), DX
         .          .    10cc160: MOVQ 0x40(CX), CX
         .          .    10cc164: MOVQ DX, 0(SP)
         .          .    10cc168: MOVQ 0x210(SP), DX
         .          .    10cc170: MOVQ DX, 0x8(SP)
         .          .    10cc175: MOVQ 0x218(SP), BX
         .          .    10cc17d: MOVQ BX, 0x10(SP)
         .          .    10cc182: MOVQ 0x220(SP), SI
      10ms       10ms    10cc18a: MOVQ SI, 0x18(SP)                       ;main.(*index).nearCount index.go:61
         .          .    10cc18f: CALL CX                                 ;index.go:61
         .          .    10cc191: MOVQ 0x208(SP), AX                      ;index.go:62
         .          .    10cc199: MOVQ 0(AX), CX
         .          .    10cc19c: MOVQ 0x8(AX), DX
         .          .    10cc1a0: MOVQ 0x38(CX), CX
         .          .    10cc1a4: MOVQ DX, 0(SP)
         .       10ms    10cc1a8: CALL CX                                 ;main.(*index).nearCount index.go:62
         .          .    10cc1aa: MOVQ 0x8(SP), AX                        ;index.go:62
         .          .    10cc1af: MOVQ 0x208(SP), CX
         .          .    10cc1b7: MOVQ 0x40(CX), DX
         .          .    10cc1bb: TESTQ DX, DX
         .          .    10cc1be: JE 0x10cc443
         .          .    10cc1c4: MOVQ DX, BX
         .          .    10cc1c7: XORL DX, DX
         .          .    10cc1c9: DIVQ BX
      10ms       10ms    10cc1cc: MOVQ 0x50(SP), BX                       ;main.(*index).nearCount index.go:62
         .          .    10cc1d1: TESTQ BX, BX                            ;index.go:62
         .          .    10cc1d4: JBE 0x10cc439
         .          .    10cc1da: MOVQ DX, 0x68(SP)
         .          .    10cc1df: MOVQ 0x38(CX), DX                       ;index.go:63
         .          .    10cc1e3: MOVQ 0x28(CX), SI
         .          .    10cc1e7: MOVQ 0x218(SP), DI
         .          .    10cc1ef: LEAQ -0x1(DI), R8
         .          .    10cc1f3: CMPQ DX, R8
         .          .    10cc1f6: JA 0x10cc431
         .          .    10cc1fc: MOVQ R8, 0x58(SP)
         .          .    10cc201: MOVQ DX, 0x48(SP)
         .          .    10cc206: MOVQ SI, 0x1f0(SP)
         .          .    10cc20e: MOVQ 0x210(SP), R9                      ;index.go:64
         .          .    10cc216: XORL AX, AX
         .          .    10cc218: JMP 0x10cc25a
         .          .    10cc21a: MOVQ AX, R10                            ;index.go:69
         .          .    10cc21d: SHLQ $0x3, AX
         .          .    10cc221: MOVQ DX, 0x68(SP)(AX*1)
         .          .    10cc226: MOVQ 0x218(SP), R11                     ;index.go:64
         .          .    10cc22e: MOVQ 0x1f0(SP), R12
         .          .    10cc236: MOVQ 0x48(SP), R13
         .          .    10cc23b: MOVQ 0x58(SP), R14
         .          .    10cc240: MOVQ 0x210(SP), R15
         .          .    10cc248: MOVQ R13, DX                            ;index.go:103
         .          .    10cc24b: MOVQ R12, SI                            ;index.go:104
         .          .    10cc24e: MOVQ R11, DI                            ;index.go:64
         .          .    10cc251: MOVQ R14, R8                            ;index.go:104
         .          .    10cc254: MOVQ R15, R9                            ;index.go:105
         .          .    10cc257: MOVQ R10, AX                            ;index.go:64
         .          .    10cc25a: CMPQ DI, AX
         .          .    10cc25d: JGE 0x10cc3c3
         .       10ms    10cc263: NOPL                                    ;main.(*index).nearCount index.go:65
         .          .    10cc264: CMPQ DX, AX                             ;index.go:103
         .          .    10cc267: JA 0x10cc429
         .          .    10cc26d: CMPQ R8, AX                             ;index.go:104
         .          .    10cc270: JA 0x10cc421
         .          .    10cc276: MOVQ AX, 0x40(SP)                       ;index.go:64
         .          .    10cc27b: SUBQ AX, R8                             ;index.go:104
         .          .    10cc27e: MOVQ R8, 0x38(SP)
         .          .    10cc283: SUBQ AX, DX
         .          .    10cc286: NEGQ DX
         .          .    10cc289: SARQ $0x3f, DX
         .          .    10cc28d: ANDQ AX, DX
         .          .    10cc290: ADDQ SI, DX
         .          .    10cc293: MOVQ DX, 0x1e8(SP)
         .          .    10cc29b: CMPQ R9, SI                             ;index.go:105
         .          .    10cc29e: JE 0x10cc2b3
         .          .    10cc2a0: MOVQ SI, 0(SP)
         .          .    10cc2a4: MOVQ R9, 0x8(SP)
         .          .    10cc2a9: MOVQ AX, 0x10(SP)
         .          .    10cc2ae: CALL runtime.memmove(SB)
         .          .    10cc2b3: MOVQ 0x40(SP), AX                       ;index.go:106
         .          .    10cc2b8: INCQ AX
         .          .    10cc2bb: MOVQ AX, 0x60(SP)
      10ms       10ms    10cc2c0: MOVQ 0x218(SP), CX                      ;main.skipOneCopy index.go:106
         .          .    10cc2c8: SUBQ AX, CX                             ;index.go:106
         .          .    10cc2cb: MOVQ 0x38(SP), BX
         .          .    10cc2d0: CMPQ CX, BX
         .          .    10cc2d3: CMOVG CX, BX
         .          .    10cc2d7: MOVQ 0x220(SP), CX
         .          .    10cc2df: SUBQ AX, CX
         .          .    10cc2e2: NEGQ CX
         .          .    10cc2e5: SARQ $0x3f, CX
         .          .    10cc2e9: ANDQ AX, CX
         .          .    10cc2ec: MOVQ 0x210(SP), DI
         .          .    10cc2f4: ADDQ DI, CX
         .          .    10cc2f7: MOVQ 0x1e8(SP), R8
         .          .    10cc2ff: CMPQ R8, CX
         .          .    10cc302: JNE 0x10cc3ab
         .          .    10cc308: MOVQ 0x208(SP), AX                      ;index.go:67
         .          .    10cc310: MOVQ 0(AX), CX
         .          .    10cc313: MOVQ 0x8(AX), DX
         .          .    10cc317: MOVQ 0x20(CX), CX
         .          .    10cc31b: MOVQ DX, 0(SP)
         .       10ms    10cc31f: CALL CX                                 ;main.(*index).nearCount index.go:67
      10ms       10ms    10cc321: MOVQ 0x208(SP), AX                      ;main.(*index).nearCount index.go:68
         .          .    10cc329: MOVQ 0(AX), CX                          ;index.go:68
         .          .    10cc32c: MOVQ 0x8(AX), DX
         .          .    10cc330: MOVQ 0x40(CX), CX
         .          .    10cc334: MOVQ DX, 0(SP)
         .          .    10cc338: MOVQ 0x1f0(SP), DX
         .          .    10cc340: MOVQ DX, 0x8(SP)
         .          .    10cc345: MOVQ 0x58(SP), BX
         .          .    10cc34a: MOVQ BX, 0x10(SP)
      10ms       10ms    10cc34f: MOVQ 0x48(SP), SI                       ;main.(*index).nearCount index.go:68
         .          .    10cc354: MOVQ SI, 0x18(SP)                       ;index.go:68
         .          .    10cc359: CALL CX
         .          .    10cc35b: MOVQ 0x208(SP), AX                      ;index.go:69
         .          .    10cc363: MOVQ 0(AX), CX
         .          .    10cc366: MOVQ 0x8(AX), DX
         .          .    10cc36a: MOVQ 0x38(CX), CX
         .          .    10cc36e: MOVQ DX, 0(SP)
         .       20ms    10cc372: CALL CX                                 ;main.(*index).nearCount index.go:69
         .          .    10cc374: MOVQ 0x8(SP), AX                        ;index.go:69
         .          .    10cc379: MOVQ 0x208(SP), CX
         .          .    10cc381: MOVQ 0x40(CX), DX
         .          .    10cc385: TESTQ DX, DX
         .          .    10cc388: JE 0x10cc41c
         .          .    10cc38e: MOVQ DX, BX
         .          .    10cc391: XORL DX, DX
         .          .    10cc393: DIVQ BX
      10ms       10ms    10cc396: MOVQ 0x60(SP), AX                       ;main.(*index).nearCount index.go:69
         .          .    10cc39b: MOVQ 0x50(SP), BX                       ;index.go:69
         .          .    10cc3a0: CMPQ BX, AX
         .          .    10cc3a3: JB 0x10cc21a
         .          .    10cc3a9: JMP 0x10cc414
         .          .    10cc3ab: MOVQ R8, 0(SP)                          ;index.go:106
         .          .    10cc3af: MOVQ CX, 0x8(SP)
         .          .    10cc3b4: MOVQ BX, 0x10(SP)
         .          .    10cc3b9: CALL runtime.memmove(SB)
         .          .    10cc3be: JMP 0x10cc308
         .          .    10cc3c3: XORL AX, AX
         .          .    10cc3c5: XORL DX, DX
         .          .    10cc3c7: JMP 0x10cc3d8                           ;index.go:73
         .          .    10cc3c9: INCQ AX
         .          .    10cc3cc: LEAQ 0(R8)(R8*2), SI                    ;index.go:74
         .          .    10cc3d0: MOVQ 0x8(DI)(SI*8), SI
     100ms      100ms    10cc3d5: ADDQ SI, DX                             ;main.(*index).nearCount index.go:75
         .          .    10cc3d8: CMPQ BX, AX                             ;index.go:73
         .          .    10cc3db: JGE 0x10cc3f1
         .          .    10cc3dd: MOVQ 0x18(CX), SI                       ;index.go:74
         .          .    10cc3e1: MOVQ 0x10(CX), DI
         .          .    10cc3e5: MOVQ 0x68(SP)(AX*8), R8
         .          .    10cc3ea: CMPQ SI, R8
         .          .    10cc3ed: JB 0x10cc3c9
         .          .    10cc3ef: JMP 0x10cc409
         .          .    10cc3f1: MOVQ DX, 0x228(SP)                      ;index.go:78
         .          .    10cc3f9: MOVQ 0x1f8(SP), BP
         .          .    10cc401: ADDQ $0x200, SP
         .          .    10cc408: RET
         .          .    10cc409: MOVQ R8, AX                             ;index.go:74
         .          .    10cc40c: MOVQ SI, CX
         .          .    10cc40f: CALL runtime.panicIndexU(SB)
         .          .    10cc414: MOVQ BX, CX                             ;index.go:69
         .          .    10cc417: CALL runtime.panicIndex(SB)
         .          .    10cc41c: CALL runtime.panicdivide(SB)
         .          .    10cc421: MOVQ R8, CX                             ;index.go:104
         .          .    10cc424: CALL runtime.panicSliceB(SB)
         .          .    10cc429: MOVQ AX, CX                             ;index.go:103
         .          .    10cc42c: CALL runtime.panicSliceAcap(SB)
         .          .    10cc431: MOVQ R8, CX                             ;index.go:63
         .          .    10cc434: CALL runtime.panicSliceAcap(SB)
         .          .    10cc439: XORL AX, AX                             ;index.go:62
         .          .    10cc43b: MOVQ BX, CX
         .          .    10cc43e: CALL runtime.panicIndex(SB)
         .          .    10cc443: CALL runtime.panicdivide(SB)
         .          .    10cc448: MOVL $0x30, DX                          ;index.go:59
         .          .    10cc44d: CALL runtime.panicSliceAlen(SB)
         .          .    10cc452: NOPL
         .       10ms    10cc453: CALL runtime.morestack_noctxt(SB)       ;main.(*index).nearCount index.go:57
         .          .    10cc458: JMP main.(*index).nearCount(SB)         ;index.go:57
         .          .    10cc45d: INT $0x3
         .          .    10cc45e: INT $0x3
ROUTINE ======================== main.LoadDictionary
      40ms      2.88s (flat, cum) 47.76% of Total
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
         .          .    10c9c05: LEAQ runtime.types+157344(SB), AX       ;graph.go:47
         .          .    10c9c0c: MOVQ AX, 0(SP)
         .          .    10c9c10: CALL runtime.newobject(SB)
         .          .    10c9c15: MOVQ 0x8(SP), AX
         .          .    10c9c1a: MOVQ AX, 0x120(SP)
         .          .    10c9c22: LEAQ runtime.types+141632(SB), CX       ;graph.go:48
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
         .       20ms    10c9cee: CALL bufio.(*Scanner).Scan(SB)          ;main.LoadDictionary graph.go:54
         .          .    10c9cf3: CMPB $0x0, 0x8(SP)                      ;graph.go:54
         .          .    10c9cf8: JE 0x10c9e3b
         .          .    10c9cfe: NOPL                                    ;graph.go:55
         .          .    10c9cff: MOVQ 0x160(SP), AX                      ;scan.go:106
         .          .    10c9d07: MOVQ AX, 0x40(SP)
         .          .    10c9d0c: MOVQ 0x158(SP), CX
         .          .    10c9d14: MOVQ CX, 0x100(SP)
         .          .    10c9d1c: LEAQ runtime.types+88832(SB), DX        ;graph.go:56
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
      30ms       30ms    10c9d95: MOVQ BX, 0x8(R8)(DX*8)                  ;main.LoadDictionary graph.go:58
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
         .          .    10c9ddb: LEAQ runtime.types+141632(SB), AX
         .          .    10c9de2: MOVQ AX, 0(SP)
         .          .    10c9de6: MOVQ R8, 0x8(SP)
         .          .    10c9deb: MOVQ DX, 0x10(SP)
         .          .    10c9df0: MOVQ BX, 0x18(SP)
         .          .    10c9df5: MOVQ SI, 0x20(SP)
         .       70ms    10c9dfa: CALL runtime.growslice(SB)              ;main.LoadDictionary graph.go:58
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
         .          .    10c9e5d: LEAQ runtime.types+77184(SB), DX
         .          .    10c9e64: MOVQ DX, 0(SP)
         .          .    10c9e68: MOVQ CX, 0x8(SP)
         .          .    10c9e6d: MOVQ CX, 0x10(SP)
         .          .    10c9e72: CALL runtime.makeslice(SB)
         .          .    10c9e77: MOVQ 0x18(SP), AX
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
         .          .    10c9ebf: LEAQ runtime.types+85824(SB), AX        ;graph.go:70
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
      10ms       10ms    10c9f1b: JNE 0x10c9f23                           ;main.LoadDictionary graph.go:70
         .          .    10c9f1d: MOVQ BX, 0(DX)(CX*8)                    ;graph.go:70
         .          .    10c9f21: JMP 0x10c9ea6
         .          .    10c9f23: MOVQ AX, CX                             ;graph.go:47
         .          .    10c9f26: MOVQ BX, AX                             ;graph.go:70
         .          .    10c9f29: CALL runtime.gcWriteBarrier(SB)
         .          .    10c9f2e: MOVQ CX, AX
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
         .      120ms    10c9f6e: CALL main.newIndex(SB)                  ;main.LoadDictionary graph.go:74
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
         .      560ms    10c9fe4: CALL main.(*index).add(SB)              ;main.LoadDictionary graph.go:76
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
         .      2.07s    10ca047: CALL main.(*Graph).buildAdjList(SB)     ;main.LoadDictionary graph.go:87
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
         .          .    10ca17d: LEAQ runtime.types+157344(SB), AX       ;graph.go:47
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
     120ms      120ms (flat, cum)  1.99% of Total
         .          .    10cae60: SUBQ $0x18, SP                          ;graph.go:283
         .          .    10cae64: MOVQ BP, 0x10(SP)
         .          .    10cae69: LEAQ 0x10(SP), BP
         .          .    10cae6e: MOVQ 0x28(SP), CX                       ;graph.go:289
         .          .    10cae73: MOVQ 0x40(SP), DX
         .          .    10cae78: CMPQ DX, CX
         .          .    10cae7b: MOVQ CX, BX                             ;graph.go:292
         .          .    10cae7e: CMOVG DX, CX
      10ms       10ms    10cae82: MOVQ BX, SI                             ;main.distance graph.go:284
         .          .    10cae85: SUBQ DX, BX                             ;graph.go:284
         .          .    10cae88: MOVQ DX, DI                             ;graph.go:286
         .          .    10cae8b: SUBQ SI, DX
         .          .    10cae8e: TESTQ BX, BX                            ;graph.go:285
         .          .    10cae91: CMOVL DX, BX                            ;graph.go:294
         .          .    10cae95: MOVQ 0x38(SP), DX                       ;graph.go:285
         .          .    10cae9a: MOVQ 0x20(SP), R8
         .          .    10cae9f: XORL AX, AX
         .          .    10caea1: JMP 0x10caeb6
      10ms       10ms    10caea3: MOVZX 0(DX)(AX*1), R10                  ;main.distance graph.go:293
      50ms       50ms    10caea8: LEAQ 0x1(BX), R11                       ;main.distance graph.go:294
         .          .    10caeac: CMPL R10, R9                            ;graph.go:293
         .          .    10caeaf: CMOVNE R11, BX                          ;graph.go:294
         .          .    10caeb3: INCQ AX                                 ;graph.go:292
         .          .    10caeb6: CMPQ CX, AX
         .          .    10caeb9: JGE 0x10caecc
         .          .    10caebb: CMPQ SI, AX                             ;graph.go:293
         .          .    10caebe: JAE 0x10caee3
         .          .    10caec0: MOVZX 0(R8)(AX*1), R9
      30ms       30ms    10caec5: CMPQ DI, AX                             ;main.distance graph.go:293
         .          .    10caec8: JB 0x10caea3                            ;graph.go:293
         .          .    10caeca: JMP 0x10caedb
      20ms       20ms    10caecc: MOVQ BX, 0x50(SP)                       ;main.distance graph.go:298
         .          .    10caed1: MOVQ 0x10(SP), BP                       ;graph.go:298
         .          .    10caed6: ADDQ $0x18, SP
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
         0      2.92s (flat, cum) 48.42% of Total
         .          .    10cc890: MOVQ GS:0x30, CX                        ;main.go:24
         .          .    10cc899: LEAQ 0xfffffd98(SP), AX
         .          .    10cc8a1: CMPQ 0x10(CX), AX
         .          .    10cc8a5: JBE 0x10cd58f
         .          .    10cc8ab: SUBQ $0x2e8, SP
         .          .    10cc8b2: MOVQ BP, 0x2e0(SP)
         .          .    10cc8ba: LEAQ 0x2e0(SP), BP
         .          .    10cc8c2: MOVQ os.Args+8(SB), CX                  ;main.go:25
         .          .    10cc8c9: MOVQ os.Args(SB), DX                    ;flag.go:996
         .          .    10cc8d0: MOVQ os.Args+16(SB), BX
         .          .    10cc8d7: CMPQ $0x1, CX
         .          .    10cc8db: JB 0x10cd584
         .          .    10cc8e1: MOVQ flag.CommandLine(SB), AX
         .          .    10cc8e8: MOVQ AX, 0(SP)
         .          .    10cc8ec: LEAQ -0x1(BX), AX
         .          .    10cc8f0: MOVQ AX, BX
         .          .    10cc8f3: NEGQ AX
         .          .    10cc8f6: SARQ $0x3f, AX
         .          .    10cc8fa: ANDQ $0x10, AX
         .          .    10cc8fe: ADDQ DX, AX
         .          .    10cc901: MOVQ AX, 0x8(SP)
         .          .    10cc906: LEAQ -0x1(CX), AX
         .          .    10cc90a: MOVQ AX, 0x10(SP)
         .          .    10cc90f: MOVQ BX, 0x18(SP)
         .          .    10cc914: CALL flag.(*FlagSet).Parse(SB)
         .          .    10cc919: MOVQ main.cpuprofile(SB), AX            ;main.go:27
         .          .    10cc920: MOVQ 0(AX), CX
         .          .    10cc923: MOVQ 0x8(AX), AX
         .          .    10cc927: TESTQ AX, AX
         .          .    10cc92a: JNE 0x10cd427
         .          .    10cc930: MOVQ main.traceprofile(SB), AX          ;main.go:37
         .          .    10cc937: MOVQ 0(AX), CX
         .          .    10cc93a: MOVQ 0x8(AX), AX
         .          .    10cc93e: TESTQ AX, AX
         .          .    10cc941: JNE 0x10cd2c5
         .          .    10cc947: MOVQ main.dump(SB), AX                  ;main.go:47
         .          .    10cc94e: MOVQ 0x8(AX), CX
         .          .    10cc952: MOVQ 0(AX), AX
         .          .    10cc955: TESTQ CX, CX
         .          .    10cc958: JNE 0x10cd2b2
         .          .    10cc95e: XORPS X0, X0                            ;main.go:51
         .          .    10cc961: MOVUPS X0, 0x250(SP)
         .          .    10cc969: LEAQ runtime.types+88512(SB), AX
         .          .    10cc970: MOVQ AX, 0x250(SP)
         .          .    10cc978: LEAQ internal/bytealg.IndexString.args_stackmap+640(SB), CX
         .          .    10cc97f: MOVQ CX, 0x258(SP)
         .          .    10cc987: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cc98e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cc995: MOVQ DX, 0(SP)
         .          .    10cc999: MOVQ CX, 0x8(SP)
         .          .    10cc99e: LEAQ 0x250(SP), CX
         .          .    10cc9a6: MOVQ CX, 0x10(SP)
         .          .    10cc9ab: MOVQ $0x1, 0x18(SP)
         .          .    10cc9b4: MOVQ $0x1, 0x20(SP)
         .          .    10cc9bd: CALL fmt.Fprintln(SB)
         .          .    10cc9c2: MOVQ main.dict(SB), AX                  ;main.go:52
         .          .    10cc9c9: MOVQ main.perfStats(SB), CX
         .          .    10cc9d0: MOVQ main.dump(SB), DX
         .          .    10cc9d7: MOVQ 0x8(AX), BX
         .          .    10cc9db: MOVQ 0(AX), AX
         .          .    10cc9de: MOVZX 0(CX), CX
         .          .    10cc9e1: MOVQ 0(DX), SI
         .          .    10cc9e4: MOVQ 0x8(DX), DX
         .          .    10cc9e8: MOVQ AX, 0(SP)
         .          .    10cc9ec: MOVQ BX, 0x8(SP)
         .          .    10cc9f1: MOVB CL, 0x10(SP)
         .          .    10cc9f5: MOVQ SI, 0x18(SP)
         .          .    10cc9fa: MOVQ DX, 0x20(SP)
         .      2.88s    10cc9ff: CALL main.LoadDictionary(SB)            ;main.main main.go:52
         .          .    10cca04: MOVQ 0x28(SP), AX                       ;main.go:52
         .          .    10cca09: MOVQ AX, 0x1d0(SP)
         .          .    10cca11: MOVQ 0x8(AX), CX                        ;graph.go:303
         .          .    10cca15: MOVQ CX, 0x78(SP)
         .          .    10cca1a: MOVQ AX, 0(SP)                          ;main.go:53
         .          .    10cca1e: CALL main.(*Graph).EdgeCount(SB)
         .          .    10cca23: MOVQ 0x8(SP), AX
         .          .    10cca28: MOVQ AX, 0x70(SP)
         .          .    10cca2d: MOVQ 0x78(SP), CX
         .          .    10cca32: MOVQ CX, 0(SP)
         .          .    10cca36: CALL runtime.convT64(SB)
         .          .    10cca3b: MOVQ 0x8(SP), AX
         .          .    10cca40: MOVQ AX, 0x1f8(SP)
         .          .    10cca48: MOVQ 0x70(SP), CX
         .          .    10cca4d: MOVQ CX, 0(SP)
         .          .    10cca51: CALL runtime.convT64(SB)
         .          .    10cca56: MOVQ 0x8(SP), AX
         .          .    10cca5b: XORPS X0, X0
         .          .    10cca5e: MOVUPS X0, 0x2c0(SP)
         .          .    10cca66: MOVUPS X0, 0x2d0(SP)
         .          .    10cca6e: LEAQ runtime.types+85824(SB), CX
         .          .    10cca75: MOVQ CX, 0x2c0(SP)
         .          .    10cca7d: MOVQ 0x1f8(SP), DX
         .          .    10cca85: MOVQ DX, 0x2c8(SP)
         .          .    10cca8d: MOVQ CX, 0x2d0(SP)
         .          .    10cca95: MOVQ AX, 0x2d8(SP)
         .          .    10cca9d: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ccaa4: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10ccaab: MOVQ CX, 0(SP)
         .          .    10ccaaf: MOVQ AX, 0x8(SP)
         .          .    10ccab4: LEAQ go.string.*+10897(SB), AX
         .          .    10ccabb: MOVQ AX, 0x10(SP)
         .          .    10ccac0: MOVQ $0x14, 0x18(SP)
         .          .    10ccac9: LEAQ 0x2c0(SP), AX
         .          .    10ccad1: MOVQ AX, 0x20(SP)
         .          .    10ccad6: MOVQ $0x2, 0x28(SP)
         .          .    10ccadf: MOVQ $0x2, 0x30(SP)
         .          .    10ccae8: CALL fmt.Fprintf(SB)
         .          .    10ccaed: MOVQ main.dictStats(SB), AX             ;main.go:55
         .          .    10ccaf4: CMPB $0x0, 0(AX)
         .          .    10ccaf7: JNE 0x10cd291
         .          .    10ccafd: MOVQ main.src(SB), AX                   ;main.go:59
         .          .    10ccb04: MOVQ 0(AX), CX
         .          .    10ccb07: MOVQ 0x8(AX), AX
         .          .    10ccb0b: TESTQ AX, AX
         .          .    10ccb0e: JE 0x10ccb22
         .          .    10ccb10: MOVQ main.dest(SB), DX
         .          .    10ccb17: CMPQ $0x0, 0x8(DX)
         .          .    10ccb1c: JNE 0x10ccd2e
         .          .    10ccb22: MOVQ main.printGraph(SB), AX            ;main.go:83
         .          .    10ccb29: CMPB $0x0, 0(AX)
         .          .    10ccb2c: JNE 0x10ccd18
         .          .    10ccb32: MOVQ main.memprofile(SB), AX            ;main.go:87
         .          .    10ccb39: CMPQ $0x0, 0x8(AX)
         .          .    10ccb3e: JNE 0x10ccb56
         .          .    10ccb40: NOPL                                    ;main.go:98
         .          .    10ccb41: CALL runtime.deferreturn(SB)
         .          .    10ccb46: MOVQ 0x2e0(SP), BP
         .          .    10ccb4e: ADDQ $0x2e8, SP
         .          .    10ccb55: RET
         .       10ms    10ccb56: CALL runtime.GC(SB)                     ;main.main main.go:88
         .          .    10ccb5b: MOVQ main.memprofile(SB), AX            ;main.go:89
         .          .    10ccb62: MOVQ 0(AX), CX
         .          .    10ccb65: MOVQ 0x8(AX), AX
         .          .    10ccb69: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10ccb6d: MOVQ AX, 0x8(SP)
         .          .    10ccb72: MOVQ $0x602, 0x10(SP)
         .          .    10ccb7b: MOVL $0x1b6, 0x18(SP)
         .          .    10ccb83: CALL os.OpenFile(SB)
         .          .    10ccb88: MOVQ 0x20(SP), AX
         .          .    10ccb8d: MOVQ AX, 0x1f0(SP)
         .          .    10ccb95: MOVQ 0x28(SP), CX
         .          .    10ccb9a: MOVQ 0x30(SP), DX
         .          .    10ccb9f: TESTQ CX, CX                            ;main.go:90
         .          .    10ccba2: JE 0x10ccc0e
         .          .    10ccba4: JE 0x10ccbaa                            ;main.go:91
         .          .    10ccba6: MOVQ 0x8(CX), CX
         .          .    10ccbaa: XORPS X0, X0
         .          .    10ccbad: MOVUPS X0, 0x260(SP)
         .          .    10ccbb5: MOVUPS X0, 0x270(SP)
         .          .    10ccbbd: LEAQ runtime.types+88512(SB), AX
         .          .    10ccbc4: MOVQ AX, 0x260(SP)
         .          .    10ccbcc: LEAQ internal/bytealg.IndexString.args_stackmap+672(SB), BX
         .          .    10ccbd3: MOVQ BX, 0x268(SP)
         .          .    10ccbdb: MOVQ CX, 0x270(SP)
         .          .    10ccbe3: MOVQ DX, 0x278(SP)
         .          .    10ccbeb: LEAQ 0x260(SP), CX
         .          .    10ccbf3: MOVQ CX, 0(SP)
         .          .    10ccbf7: MOVQ $0x2, 0x8(SP)
         .          .    10ccc00: MOVQ $0x2, 0x10(SP)
         .          .    10ccc09: CALL log.Fatal(SB)
         .          .    10ccc0e: MOVL $0x18, 0xf0(SP)                    ;main.go:93
         .          .    10ccc19: LEAQ go.func.*+293(SB), AX
         .          .    10ccc20: MOVQ AX, 0x108(SP)
         .          .    10ccc28: MOVQ 0x1f0(SP), AX
         .          .    10ccc30: MOVQ AX, 0x120(SP)
         .          .    10ccc38: LEAQ 0xf0(SP), CX
         .          .    10ccc40: MOVQ CX, 0(SP)
         .          .    10ccc44: CALL runtime.deferprocStack(SB)
         .          .    10ccc49: TESTL AX, AX
         .          .    10ccc4b: JNE 0x10ccd02
         .       10ms    10ccc51: NOPL                                    ;runtime/pprof.WriteHeapProfile pprof.go:522
         .          .    10ccc52: LEAQ go.itab.*os.File,io.Writer(SB), AX ;pprof.go:533
         .          .    10ccc59: MOVQ AX, 0(SP)
         .          .    10ccc5d: MOVQ 0x1f0(SP), AX
         .          .    10ccc65: MOVQ AX, 0x8(SP)
         .          .    10ccc6a: MOVQ $0x0, 0x10(SP)
         .          .    10ccc73: XORPS X0, X0
         .          .    10ccc76: MOVUPS X0, 0x18(SP)
                                                                          ;runtime/pprof.writeHeap pprof.go:533
         .       10ms    10ccc7b: CALL runtime/pprof.writeHeapInternal(SB)
         .          .    10ccc80: MOVQ 0x28(SP), AX                       ;pprof.go:533
         .          .    10ccc85: MOVQ 0x30(SP), CX
         .       10ms    10ccc8a: TESTQ AX, AX                            ;main.main main.go:94
         .          .    10ccc8d: JE 0x10ccb40                            ;main.go:94
         .          .    10ccc93: JE 0x10ccc99                            ;main.go:95
         .          .    10ccc95: MOVQ 0x8(AX), AX
         .          .    10ccc99: XORPS X0, X0
         .          .    10ccc9c: MOVUPS X0, 0x260(SP)
         .          .    10ccca4: MOVUPS X0, 0x270(SP)
         .          .    10cccac: LEAQ runtime.types+88512(SB), DX
         .          .    10cccb3: MOVQ DX, 0x260(SP)
         .          .    10cccbb: LEAQ internal/bytealg.IndexString.args_stackmap+688(SB), DX
         .          .    10cccc2: MOVQ DX, 0x268(SP)
         .          .    10cccca: MOVQ AX, 0x270(SP)
         .          .    10cccd2: MOVQ CX, 0x278(SP)
         .          .    10cccda: LEAQ 0x260(SP), AX
         .          .    10ccce2: MOVQ AX, 0(SP)
         .          .    10ccce6: MOVQ $0x2, 0x8(SP)
         .          .    10cccef: MOVQ $0x2, 0x10(SP)
         .          .    10cccf8: CALL log.Fatal(SB)
         .          .    10cccfd: JMP 0x10ccb40
         .          .    10ccd02: NOPL                                    ;main.go:93
         .          .    10ccd03: CALL runtime.deferreturn(SB)
         .          .    10ccd08: MOVQ 0x2e0(SP), BP
         .          .    10ccd10: ADDQ $0x2e8, SP
         .          .    10ccd17: RET
         .          .    10ccd18: MOVQ 0x1d0(SP), AX                      ;main.go:84
         .          .    10ccd20: MOVQ AX, 0(SP)
         .          .    10ccd24: CALL main.(*Graph).PrintAdjList(SB)
         .          .    10ccd29: JMP 0x10ccb32
         .          .    10ccd2e: MOVQ CX, 0(SP)                          ;main.go:60
         .          .    10ccd32: MOVQ AX, 0x8(SP)
         .          .    10ccd37: CALL runtime.convTstring(SB)
         .          .    10ccd3c: MOVQ main.dest(SB), AX
         .          .    10ccd43: MOVQ 0x10(SP), CX
         .          .    10ccd48: MOVQ CX, 0x1f8(SP)
         .          .    10ccd50: MOVQ 0(AX), DX
         .          .    10ccd53: MOVQ 0x8(AX), AX
         .          .    10ccd57: MOVQ DX, 0(SP)
         .          .    10ccd5b: MOVQ AX, 0x8(SP)
         .          .    10ccd60: CALL runtime.convTstring(SB)
         .          .    10ccd65: MOVQ 0x10(SP), AX
         .          .    10ccd6a: XORPS X0, X0
         .          .    10ccd6d: MOVUPS X0, 0x2a0(SP)
         .          .    10ccd75: MOVUPS X0, 0x2b0(SP)
         .          .    10ccd7d: LEAQ runtime.types+88512(SB), CX
         .          .    10ccd84: MOVQ CX, 0x2a0(SP)
         .          .    10ccd8c: MOVQ 0x1f8(SP), DX
         .          .    10ccd94: MOVQ DX, 0x2a8(SP)
         .          .    10ccd9c: MOVQ CX, 0x2b0(SP)
         .          .    10ccda4: MOVQ AX, 0x2b8(SP)
         .          .    10ccdac: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ccdb3: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ccdba: MOVQ DX, 0(SP)
         .          .    10ccdbe: MOVQ AX, 0x8(SP)
         .          .    10ccdc3: LEAQ go.string.*+16166(SB), AX
         .          .    10ccdca: MOVQ AX, 0x10(SP)
         .          .    10ccdcf: MOVQ $0x1b, 0x18(SP)
         .          .    10ccdd8: LEAQ 0x2a0(SP), AX
         .          .    10ccde0: MOVQ AX, 0x20(SP)
         .          .    10ccde5: MOVQ $0x2, 0x28(SP)
         .          .    10ccdee: MOVQ $0x2, 0x30(SP)
         .          .    10ccdf7: CALL fmt.Fprintf(SB)
         .          .    10ccdfc: MOVQ main.src(SB), AX                   ;main.go:61
         .          .    10cce03: MOVQ 0x8(AX), CX
         .          .    10cce07: MOVQ 0(AX), AX
         .          .    10cce0a: MOVQ 0x1d0(SP), DX
         .          .    10cce12: MOVQ DX, 0(SP)
         .          .    10cce16: MOVQ AX, 0x8(SP)
         .          .    10cce1b: MOVQ CX, 0x10(SP)
         .          .    10cce20: CALL main.(*Graph).Find(SB)
         .          .    10cce25: MOVQ main.dest(SB), AX                  ;main.go:62
         .          .    10cce2c: MOVQ 0x18(SP), CX                       ;main.go:61
         .          .    10cce31: MOVQ CX, 0x58(SP)
         .          .    10cce36: MOVQ 0x8(AX), DX                        ;main.go:62
         .          .    10cce3a: MOVQ 0(AX), AX
         .          .    10cce3d: MOVQ 0x1d0(SP), BX
         .          .    10cce45: MOVQ BX, 0(SP)
         .          .    10cce49: MOVQ AX, 0x8(SP)
         .          .    10cce4e: MOVQ DX, 0x10(SP)
         .          .    10cce53: CALL main.(*Graph).Find(SB)
         .          .    10cce58: MOVQ 0x18(SP), AX
         .          .    10cce5d: MOVQ 0x58(SP), CX                       ;main.go:64
         .          .    10cce62: TESTQ CX, CX
         .          .    10cce65: JL 0x10cd136
         .          .    10cce6b: TESTQ AX, AX
         .          .    10cce6e: JL 0x10cd133
         .          .    10cce74: XORPS X0, X0                            ;main.go:74
         .          .    10cce77: MOVUPS X0, 0x220(SP)
         .          .    10cce7f: LEAQ runtime.types+88512(SB), AX
         .          .    10cce86: MOVQ AX, 0x220(SP)
         .          .    10cce8e: LEAQ internal/bytealg.IndexString.args_stackmap+656(SB), CX
         .          .    10cce95: MOVQ CX, 0x228(SP)
         .          .    10cce9d: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10ccea4: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cceab: MOVQ DX, 0(SP)
         .          .    10cceaf: MOVQ CX, 0x8(SP)
         .          .    10cceb4: LEAQ 0x220(SP), CX
         .          .    10ccebc: MOVQ CX, 0x10(SP)
         .          .    10ccec1: MOVQ $0x1, 0x18(SP)
         .          .    10cceca: MOVQ $0x1, 0x20(SP)
         .          .    10cced3: CALL fmt.Fprintln(SB)
         .          .    10cced8: MOVQ 0x1d0(SP), AX                      ;main.go:75
         .          .    10ccee0: MOVQ AX, 0(SP)
         .          .    10ccee4: MOVQ 0x58(SP), CX
         .          .    10ccee9: MOVQ CX, 0x8(SP)
         .          .    10cceee: CALL main.(*Graph).AllPaths(SB)
         .          .    10ccef3: MOVQ main.dest(SB), AX                  ;main.go:76
         .          .    10ccefa: MOVQ 0x10(SP), CX                       ;main.go:75
         .          .    10cceff: MOVQ 0x8(AX), DX                        ;main.go:76
         .          .    10ccf03: MOVQ 0(AX), AX
         .          .    10ccf06: MOVQ CX, 0(SP)
         .          .    10ccf0a: MOVQ AX, 0x8(SP)
         .          .    10ccf0f: MOVQ DX, 0x10(SP)
         .          .    10ccf14: CALL main.(*Paths).To(SB)
         .          .    10ccf19: MOVQ 0x18(SP), AX
         .          .    10ccf1e: MOVQ AX, 0x1c8(SP)
         .          .    10ccf26: MOVQ 0x20(SP), CX
         .          .    10ccf2b: MOVQ CX, 0x60(SP)
         .          .    10ccf30: TESTQ CX, CX                            ;main.go:77
         .          .    10ccf33: JE 0x10cd045
         .          .    10ccf39: MOVQ 0x1d0(SP), DX                      ;main.go:80
         .          .    10ccf41: XORL BX, BX
         .          .    10ccf43: JMP 0x10cd023
         .          .    10ccf48: MOVQ BX, 0x78(SP)
         .          .    10ccf4d: LEAQ 0(SI)(SI*2), AX                    ;main.go:81
         .          .    10ccf51: MOVQ 0x10(R8)(AX*8), CX
         .          .    10ccf56: MOVQ 0(R8)(AX*8), DX
         .          .    10ccf5a: MOVQ 0x8(R8)(AX*8), AX
         .          .    10ccf5f: MOVQ $0x0, 0(SP)
         .          .    10ccf67: MOVQ DX, 0x8(SP)
         .          .    10ccf6c: MOVQ AX, 0x10(SP)
         .          .    10ccf71: MOVQ CX, 0x18(SP)
         .          .    10ccf76: CALL runtime.slicebytetostring(SB)
         .          .    10ccf7b: MOVQ 0x28(SP), AX
         .          .    10ccf80: MOVQ 0x20(SP), CX
         .          .    10ccf85: MOVQ CX, 0(SP)
         .          .    10ccf89: MOVQ AX, 0x8(SP)
         .          .    10ccf8e: CALL runtime.convTstring(SB)
         .          .    10ccf93: MOVQ 0x10(SP), AX
         .          .    10ccf98: XORPS X0, X0
         .          .    10ccf9b: MOVUPS X0, 0x210(SP)
         .          .    10ccfa3: LEAQ runtime.types+88512(SB), CX
         .          .    10ccfaa: MOVQ CX, 0x210(SP)
         .          .    10ccfb2: MOVQ AX, 0x218(SP)
         .          .    10ccfba: MOVQ os.Stdout(SB), AX                  ;print.go:274
         .          .    10ccfc1: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ccfc8: MOVQ DX, 0(SP)
         .          .    10ccfcc: MOVQ AX, 0x8(SP)
         .          .    10ccfd1: LEAQ 0x210(SP), AX
         .          .    10ccfd9: MOVQ AX, 0x10(SP)
         .          .    10ccfde: MOVQ $0x1, 0x18(SP)
         .          .    10ccfe7: MOVQ $0x1, 0x20(SP)
         .          .    10ccff0: CALL fmt.Fprintln(SB)
         .          .    10ccff5: MOVQ 0x78(SP), AX                       ;main.go:80
         .          .    10ccffa: LEAQ 0x1(AX), BX
         .          .    10ccffe: MOVQ 0x60(SP), AX
         .          .    10cd003: MOVQ 0x1d0(SP), CX
         .          .    10cd00b: MOVQ 0x1c8(SP), DX
         .          .    10cd013: MOVQ DX, AX
         .          .    10cd016: MOVQ 0x60(SP), CX
         .          .    10cd01b: MOVQ 0x1d0(SP), DX                      ;main.go:81
         .          .    10cd023: CMPQ CX, BX                             ;main.go:80
         .          .    10cd026: JGE 0x10ccb32
         .          .    10cd02c: MOVQ 0(AX)(BX*8), SI
         .          .    10cd030: MOVQ 0x8(DX), DI                        ;main.go:81
         .          .    10cd034: MOVQ 0(DX), R8
         .          .    10cd037: CMPQ DI, SI
         .          .    10cd03a: JB 0x10ccf48
         .          .    10cd040: JMP 0x10cd579
         .          .    10cd045: MOVQ main.src(SB), AX                   ;main.go:78
         .          .    10cd04c: MOVQ 0x8(AX), CX
         .          .    10cd050: MOVQ 0(AX), AX
         .          .    10cd053: MOVQ AX, 0(SP)
         .          .    10cd057: MOVQ CX, 0x8(SP)
         .          .    10cd05c: CALL runtime.convTstring(SB)
         .          .    10cd061: MOVQ main.dest(SB), AX
         .          .    10cd068: MOVQ 0x10(SP), CX
         .          .    10cd06d: MOVQ CX, 0x1f8(SP)
         .          .    10cd075: MOVQ 0x8(AX), DX
         .          .    10cd079: MOVQ 0(AX), AX
         .          .    10cd07c: MOVQ AX, 0(SP)
         .          .    10cd080: MOVQ DX, 0x8(SP)
         .          .    10cd085: CALL runtime.convTstring(SB)
         .          .    10cd08a: MOVQ 0x10(SP), AX
         .          .    10cd08f: XORPS X0, X0
         .          .    10cd092: MOVUPS X0, 0x280(SP)
         .          .    10cd09a: MOVUPS X0, 0x290(SP)
         .          .    10cd0a2: LEAQ runtime.types+88512(SB), CX
         .          .    10cd0a9: MOVQ CX, 0x280(SP)
         .          .    10cd0b1: MOVQ 0x1f8(SP), DX
         .          .    10cd0b9: MOVQ DX, 0x288(SP)
         .          .    10cd0c1: MOVQ CX, 0x290(SP)
         .          .    10cd0c9: MOVQ AX, 0x298(SP)
         .          .    10cd0d1: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd0d8: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd0df: MOVQ DX, 0(SP)
         .          .    10cd0e3: MOVQ AX, 0x8(SP)
         .          .    10cd0e8: LEAQ go.string.*+19932(SB), AX
         .          .    10cd0ef: MOVQ AX, 0x10(SP)
         .          .    10cd0f4: MOVQ $0x1f, 0x18(SP)
         .          .    10cd0fd: LEAQ 0x280(SP), AX
         .          .    10cd105: MOVQ AX, 0x20(SP)
         .          .    10cd10a: MOVQ $0x2, 0x28(SP)
         .          .    10cd113: MOVQ $0x2, 0x30(SP)
         .          .    10cd11c: CALL fmt.Fprintf(SB)
         .          .    10cd121: MOVQ 0x1c8(SP), AX                      ;main.go:80
         .          .    10cd129: MOVQ 0x60(SP), CX
         .          .    10cd12e: JMP 0x10ccf39
         .          .    10cd133: TESTQ CX, CX                            ;main.go:64
         .          .    10cd136: JL 0x10cd1ef                            ;main.go:65
         .          .    10cd13c: TESTQ AX, AX                            ;main.go:68
         .          .    10cd13f: JL 0x10cd157
         .          .    10cd141: NOPL                                    ;main.go:71
         .          .    10cd142: CALL runtime.deferreturn(SB)
         .          .    10cd147: MOVQ 0x2e0(SP), BP
         .          .    10cd14f: ADDQ $0x2e8, SP
         .          .    10cd156: RET
         .          .    10cd157: MOVQ main.dest(SB), AX                  ;main.go:69
         .          .    10cd15e: MOVQ 0(AX), CX
         .          .    10cd161: MOVQ 0x8(AX), AX
         .          .    10cd165: MOVQ CX, 0(SP)
         .          .    10cd169: MOVQ AX, 0x8(SP)
         .          .    10cd16e: CALL runtime.convTstring(SB)
         .          .    10cd173: MOVQ 0x10(SP), AX
         .          .    10cd178: XORPS X0, X0
         .          .    10cd17b: MOVUPS X0, 0x230(SP)
         .          .    10cd183: LEAQ runtime.types+88512(SB), CX
         .          .    10cd18a: MOVQ CX, 0x230(SP)
         .          .    10cd192: MOVQ AX, 0x238(SP)
         .          .    10cd19a: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd1a1: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cd1a8: MOVQ CX, 0(SP)
         .          .    10cd1ac: MOVQ AX, 0x8(SP)
         .          .    10cd1b1: LEAQ go.string.*+7812(SB), AX
         .          .    10cd1b8: MOVQ AX, 0x10(SP)
         .          .    10cd1bd: MOVQ $0x11, 0x18(SP)
         .          .    10cd1c6: LEAQ 0x230(SP), AX
         .          .    10cd1ce: MOVQ AX, 0x20(SP)
         .          .    10cd1d3: MOVQ $0x1, 0x28(SP)
         .          .    10cd1dc: MOVQ $0x1, 0x30(SP)
         .          .    10cd1e5: CALL fmt.Fprintf(SB)
         .          .    10cd1ea: JMP 0x10cd141                           ;main.go:71
         .          .    10cd1ef: MOVQ AX, 0x50(SP)                       ;main.go:62
         .          .    10cd1f4: MOVQ main.src(SB), AX                   ;main.go:66
         .          .    10cd1fb: MOVQ 0x8(AX), CX
         .          .    10cd1ff: MOVQ 0(AX), AX
         .          .    10cd202: MOVQ AX, 0(SP)
         .          .    10cd206: MOVQ CX, 0x8(SP)
         .          .    10cd20b: CALL runtime.convTstring(SB)
         .          .    10cd210: MOVQ 0x10(SP), AX
         .          .    10cd215: XORPS X0, X0
         .          .    10cd218: MOVUPS X0, 0x240(SP)
         .          .    10cd220: LEAQ runtime.types+88512(SB), CX
         .          .    10cd227: MOVQ CX, 0x240(SP)
         .          .    10cd22f: MOVQ AX, 0x248(SP)
         .          .    10cd237: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd23e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd245: MOVQ DX, 0(SP)
         .          .    10cd249: MOVQ AX, 0x8(SP)
         .          .    10cd24e: LEAQ go.string.*+7812(SB), AX
         .          .    10cd255: MOVQ AX, 0x10(SP)
         .          .    10cd25a: MOVQ $0x11, 0x18(SP)
         .          .    10cd263: LEAQ 0x240(SP), BX
         .          .    10cd26b: MOVQ BX, 0x20(SP)
         .          .    10cd270: MOVQ $0x1, 0x28(SP)
         .          .    10cd279: MOVQ $0x1, 0x30(SP)
         .          .    10cd282: CALL fmt.Fprintf(SB)
         .          .    10cd287: MOVQ 0x50(SP), AX                       ;main.go:68
         .          .    10cd28c: JMP 0x10cd13c
         .          .    10cd291: MOVQ main.dict(SB), AX                  ;main.go:56
         .          .    10cd298: MOVQ 0x8(AX), CX
         .          .    10cd29c: MOVQ 0(AX), AX
         .          .    10cd29f: MOVQ AX, 0(SP)
         .          .    10cd2a3: MOVQ CX, 0x8(SP)
         .          .    10cd2a8: CALL main.dictionaryStats(SB)
         .          .    10cd2ad: JMP 0x10ccafd
         .          .    10cd2b2: MOVQ AX, 0(SP)                          ;main.go:48
         .          .    10cd2b6: MOVQ CX, 0x8(SP)
         .          .    10cd2bb: CALL main.createPathIfNotExists(SB)
         .          .    10cd2c0: JMP 0x10cc95e
         .          .    10cd2c5: NOPL                                    ;main.go:38
         .          .    10cd2c6: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd2ca: MOVQ AX, 0x8(SP)
         .          .    10cd2cf: MOVQ $0x602, 0x10(SP)
         .          .    10cd2d8: MOVL $0x1b6, 0x18(SP)
         .          .    10cd2e0: CALL os.OpenFile(SB)
         .          .    10cd2e5: MOVQ 0x20(SP), AX
         .          .    10cd2ea: MOVQ AX, 0x1d8(SP)
         .          .    10cd2f2: MOVQ 0x30(SP), CX
         .          .    10cd2f7: MOVQ 0x28(SP), DX
         .          .    10cd2fc: TESTQ DX, DX                            ;main.go:39
         .          .    10cd2ff: JE 0x10cd36b
         .          .    10cd301: JE 0x10cd307                            ;main.go:40
         .          .    10cd303: MOVQ 0x8(DX), DX
         .          .    10cd307: XORPS X0, X0
         .          .    10cd30a: MOVUPS X0, 0x260(SP)
         .          .    10cd312: MOVUPS X0, 0x270(SP)
         .          .    10cd31a: LEAQ runtime.types+88512(SB), AX
         .          .    10cd321: MOVQ AX, 0x260(SP)
         .          .    10cd329: LEAQ internal/bytealg.IndexString.args_stackmap+624(SB), BX
         .          .    10cd330: MOVQ BX, 0x268(SP)
         .          .    10cd338: MOVQ DX, 0x270(SP)
         .          .    10cd340: MOVQ CX, 0x278(SP)
         .          .    10cd348: LEAQ 0x260(SP), CX
         .          .    10cd350: MOVQ CX, 0(SP)
         .          .    10cd354: MOVQ $0x2, 0x8(SP)
         .          .    10cd35d: MOVQ $0x2, 0x10(SP)
         .          .    10cd366: CALL log.Fatal(SB)
         .          .    10cd36b: MOVL $0x18, 0x138(SP)                   ;main.go:42
         .          .    10cd376: LEAQ go.func.*+293(SB), AX
         .          .    10cd37d: MOVQ AX, 0x150(SP)
         .          .    10cd385: MOVQ 0x1d8(SP), CX
         .          .    10cd38d: MOVQ CX, 0x168(SP)
         .          .    10cd395: LEAQ 0x138(SP), DX
         .          .    10cd39d: MOVQ DX, 0(SP)
         .          .    10cd3a1: CALL runtime.deferprocStack(SB)
         .          .    10cd3a6: TESTL AX, AX
         .          .    10cd3a8: JNE 0x10cd411
         .          .    10cd3aa: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:43
         .          .    10cd3b1: MOVQ AX, 0(SP)
         .          .    10cd3b5: MOVQ 0x1d8(SP), CX
         .          .    10cd3bd: MOVQ CX, 0x8(SP)
         .          .    10cd3c2: CALL runtime/trace.Start(SB)
         .          .    10cd3c7: MOVL $0x0, 0x80(SP)                     ;main.go:44
         .          .    10cd3d2: LEAQ go.func.*+1597(SB), AX
         .          .    10cd3d9: MOVQ AX, 0x98(SP)
         .          .    10cd3e1: LEAQ 0x80(SP), AX
         .          .    10cd3e9: MOVQ AX, 0(SP)
         .          .    10cd3ed: CALL runtime.deferprocStack(SB)
         .          .    10cd3f2: TESTL AX, AX
         .          .    10cd3f4: JNE 0x10cd3fb
         .          .    10cd3f6: JMP 0x10cc947
         .          .    10cd3fb: NOPL
         .          .    10cd3fc: CALL runtime.deferreturn(SB)
         .          .    10cd401: MOVQ 0x2e0(SP), BP
         .          .    10cd409: ADDQ $0x2e8, SP
         .          .    10cd410: RET
         .          .    10cd411: NOPL                                    ;main.go:42
         .          .    10cd412: CALL runtime.deferreturn(SB)
         .          .    10cd417: MOVQ 0x2e0(SP), BP
         .          .    10cd41f: ADDQ $0x2e8, SP
         .          .    10cd426: RET
         .          .    10cd427: NOPL                                    ;main.go:28
         .          .    10cd428: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd42c: MOVQ AX, 0x8(SP)
         .          .    10cd431: MOVQ $0x602, 0x10(SP)
         .          .    10cd43a: MOVL $0x1b6, 0x18(SP)
         .          .    10cd442: CALL os.OpenFile(SB)
         .          .    10cd447: MOVQ 0x20(SP), AX
         .          .    10cd44c: MOVQ AX, 0x1e0(SP)
         .          .    10cd454: MOVQ 0x28(SP), CX
         .          .    10cd459: MOVQ CX, 0x68(SP)
         .          .    10cd45e: MOVQ 0x30(SP), DX
         .          .    10cd463: MOVQ DX, 0x1e8(SP)
         .          .    10cd46b: MOVL $0x18, 0x180(SP)                   ;main.go:29
         .          .    10cd476: LEAQ go.func.*+293(SB), BX
         .          .    10cd47d: MOVQ BX, 0x198(SP)
         .          .    10cd485: MOVQ AX, 0x1b0(SP)
         .          .    10cd48d: LEAQ 0x180(SP), SI
         .          .    10cd495: MOVQ SI, 0(SP)
         .          .    10cd499: CALL runtime.deferprocStack(SB)
         .          .    10cd49e: TESTL AX, AX
         .          .    10cd4a0: JNE 0x10cd563
         .          .    10cd4a6: MOVQ 0x68(SP), AX                       ;main.go:30
         .          .    10cd4ab: TESTQ AX, AX
         .          .    10cd4ae: JE 0x10cd4fc
         .          .    10cd4b0: JE 0x10cd4b6                            ;main.go:31
         .          .    10cd4b2: MOVQ 0x8(AX), AX
         .          .    10cd4b6: XORPS X0, X0
         .          .    10cd4b9: MOVUPS X0, 0x200(SP)
         .          .    10cd4c1: MOVQ AX, 0x200(SP)
         .          .    10cd4c9: MOVQ 0x1e8(SP), AX
         .          .    10cd4d1: MOVQ AX, 0x208(SP)
         .          .    10cd4d9: LEAQ 0x200(SP), AX
         .          .    10cd4e1: MOVQ AX, 0(SP)
         .          .    10cd4e5: MOVQ $0x1, 0x8(SP)
         .          .    10cd4ee: MOVQ $0x1, 0x10(SP)
         .          .    10cd4f7: CALL log.Fatal(SB)
         .          .    10cd4fc: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:33
         .          .    10cd503: MOVQ AX, 0(SP)
         .          .    10cd507: MOVQ 0x1e0(SP), CX
         .          .    10cd50f: MOVQ CX, 0x8(SP)
         .          .    10cd514: CALL runtime/pprof.StartCPUProfile(SB)
         .          .    10cd519: MOVL $0x0, 0xb8(SP)                     ;main.go:34
         .          .    10cd524: LEAQ go.func.*+1565(SB), AX
         .          .    10cd52b: MOVQ AX, 0xd0(SP)
         .          .    10cd533: LEAQ 0xb8(SP), AX
         .          .    10cd53b: MOVQ AX, 0(SP)
         .          .    10cd53f: CALL runtime.deferprocStack(SB)
         .          .    10cd544: TESTL AX, AX
         .          .    10cd546: JNE 0x10cd54d
         .          .    10cd548: JMP 0x10cc930
         .          .    10cd54d: NOPL
         .          .    10cd54e: CALL runtime.deferreturn(SB)
         .          .    10cd553: MOVQ 0x2e0(SP), BP
         .          .    10cd55b: ADDQ $0x2e8, SP
         .          .    10cd562: RET
         .          .    10cd563: NOPL                                    ;main.go:29
         .          .    10cd564: CALL runtime.deferreturn(SB)
         .          .    10cd569: MOVQ 0x2e0(SP), BP
         .          .    10cd571: ADDQ $0x2e8, SP
         .          .    10cd578: RET
         .          .    10cd579: MOVQ SI, AX                             ;main.go:81
         .          .    10cd57c: MOVQ DI, CX
         .          .    10cd57f: CALL runtime.panicIndex(SB)
         .          .    10cd584: MOVL $0x1, AX                           ;flag.go:996
         .          .    10cd589: CALL runtime.panicSliceB(SB)
         .          .    10cd58e: NOPL
         .          .    10cd58f: CALL runtime.morestack_noctxt(SB)       ;main.go:24
         .          .    10cd594: JMP main.main(SB)
         .          .    10cd599: INT $0x3
         .          .    10cd59a: INT $0x3
         .          .    10cd59b: INT $0x3
         .          .    10cd59c: INT $0x3
         .          .    10cd59d: INT $0x3
         .          .    10cd59e: INT $0x3
ROUTINE ======================== main.newIndex
      40ms      120ms (flat, cum)  1.99% of Total
         .          .    10cbba0: MOVQ GS:0x30, CX                        ;index.go:16
         .          .    10cbba9: CMPQ 0x10(CX), SP
         .          .    10cbbad: JBE 0x10cbdae
         .          .    10cbbb3: SUBQ $0x48, SP
         .          .    10cbbb7: MOVQ BP, 0x40(SP)
         .          .    10cbbbc: LEAQ 0x40(SP), BP
         .          .    10cbbc1: LEAQ runtime.types+77184(SB), AX        ;index.go:17
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
      10ms       10ms    10cbbf2: MOVQ BX, AX                             ;main.newIndex index.go:19
         .          .    10cbbf5: MOVQ 0x50(SP), DX                       ;index.go:18
         .          .    10cbbfa: CMPQ DX, CX
         .          .    10cbbfd: JGE 0x10cbc64
         .          .    10cbbff: MOVQ CX, 0x20(SP)
         .          .    10cbc04: LEAQ runtime.types+85824(SB), AX        ;index.go:19
         .          .    10cbc0b: MOVQ AX, 0(SP)
         .          .    10cbc0f: XORPS X0, X0
         .          .    10cbc12: MOVUPS X0, 0x8(SP)
         .       40ms    10cbc17: CALL runtime.makeslice(SB)              ;main.newIndex index.go:19
         .          .    10cbc1c: MOVQ 0x20(SP), AX                       ;index.go:19
         .          .    10cbc21: LEAQ 0(AX)(AX*2), CX
         .          .    10cbc25: MOVQ 0x18(SP), DX
         .          .    10cbc2a: MOVQ 0x38(SP), BX
      10ms       10ms    10cbc2f: MOVQ $0x0, 0x8(BX)(CX*8)                ;main.newIndex index.go:19
      10ms       10ms    10cbc38: MOVQ $0x0, 0x10(BX)(CX*8)
         .          .    10cbc41: LEAQ 0(BX)(CX*8), DI                    ;index.go:19
         .          .    10cbc45: CMPL $0x0, runtime.writeBarrier(SB)
      10ms       10ms    10cbc4c: JNE 0x10cbc54                           ;main.newIndex index.go:19
         .          .    10cbc4e: MOVQ DX, 0(BX)(CX*8)                    ;index.go:19
         .          .    10cbc52: JMP 0x10cbbee
         .          .    10cbc54: MOVQ AX, CX                             ;index.go:18
         .          .    10cbc57: MOVQ DX, AX                             ;index.go:19
         .       20ms    10cbc5a: CALL runtime.gcWriteBarrier(SB)         ;main.newIndex index.go:19
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
         .          .    10cbc90: LEAQ runtime.types+88832(SB), AX        ;index.go:23
         .          .    10cbc97: MOVQ AX, 0(SP)
         .          .    10cbc9b: MOVQ $0x0, 0x8(SP)
         .          .    10cbca4: MOVQ 0x58(SP), AX
         .          .    10cbca9: MOVQ AX, 0x10(SP)
         .          .    10cbcae: CALL runtime.makeslice(SB)
         .          .    10cbcb3: MOVQ 0x18(SP), AX
         .          .    10cbcb8: MOVQ AX, 0x30(SP)
         .          .    10cbcbd: LEAQ runtime.types+195232(SB), CX       ;index.go:25
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
         .          .    10cbd90: LEAQ runtime.types+200128(SB), AX
         .          .    10cbd97: MOVQ AX, 0x8(SP)
         .          .    10cbd9c: LEAQ runtime.types+156224(SB), AX
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
         0      2.90s (flat, cum) 48.09% of Total
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
         .          .    102cc11: LEAQ runtime.types+83072(SB), AX        ;proc.go:168
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
         .      2.90s    102cd0c: CALL AX                                 ;runtime.main proc.go:203
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
