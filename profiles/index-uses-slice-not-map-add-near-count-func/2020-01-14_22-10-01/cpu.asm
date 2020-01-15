Total: 5.86s
ROUTINE ======================== main.(*Graph).buildAdjList
     580ms      1.86s (flat, cum) 31.74% of Total
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
     470ms      470ms    10ca288: MOVQ 0(R8)(R9*8), R10                   ;main.(*Graph).buildAdjList graph.go:109
         .          .    10ca28c: MOVQ 0x8(BX), R11                       ;graph.go:110
         .          .    10ca290: MOVQ 0(BX), R12
         .          .    10ca293: CMPQ R11, R10
         .          .    10ca296: JAE 0x10ca6b2
      10ms       10ms    10ca29c: MOVQ R9, 0x88(SP)                       ;main.(*Graph).buildAdjList graph.go:109
         .          .    10ca2a4: MOVQ R10, 0x58(SP)                      ;graph.go:109
         .          .    10ca2a9: LEAQ 0(R10)(R10*2), AX                  ;graph.go:110
         .          .    10ca2ad: MOVQ AX, 0x80(SP)
         .          .    10ca2b5: MOVQ 0(R12)(AX*8), CX
      30ms       30ms    10ca2b9: MOVQ 0x10(R12)(AX*8), BX                ;main.(*Graph).buildAdjList graph.go:110
      10ms       10ms    10ca2be: MOVQ 0x8(R12)(AX*8), R8
         .          .    10ca2c3: MOVQ SI, 0(SP)                          ;graph.go:110
         .          .    10ca2c7: MOVQ DI, 0x8(SP)
         .          .    10ca2cc: MOVQ DX, 0x10(SP)
         .          .    10ca2d1: MOVQ CX, 0x18(SP)
         .          .    10ca2d6: MOVQ R8, 0x20(SP)
         .          .    10ca2db: MOVQ BX, 0x28(SP)
         .      190ms    10ca2e0: CALL main.distance(SB)                  ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca2e5: CMPQ $0x1, 0x30(SP)                     ;graph.go:110
      40ms       40ms    10ca2eb: JNE 0x10ca4bc                           ;main.(*Graph).buildAdjList graph.go:110
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
      10ms       10ms    10ca380: MOVQ R9, 0x8(DI)(BX*8)                  ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca385: MOVQ AX, 0(R8)(R10*8)                   ;graph.go:112
         .          .    10ca389: JMP 0x10ca238
         .          .    10ca38e: MOVQ R12, 0xb8(SP)
         .          .    10ca396: MOVQ DI, 0xb0(SP)
         .          .    10ca39e: LEAQ runtime.types+85824(SB), AX
         .          .    10ca3a5: MOVQ AX, 0(SP)
         .          .    10ca3a9: MOVQ R8, 0x8(SP)
         .          .    10ca3ae: MOVQ R10, 0x10(SP)
         .          .    10ca3b3: MOVQ R9, 0x18(SP)
         .          .    10ca3b8: MOVQ R11, 0x20(SP)
         .       60ms    10ca3bd: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:112
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
         .          .    10ca435: LEAQ runtime.types+85824(SB), AX
         .          .    10ca43c: MOVQ AX, 0(SP)
         .          .    10ca440: MOVQ R9, 0x8(SP)
         .          .    10ca445: MOVQ R8, 0x10(SP)
         .          .    10ca44a: MOVQ DI, 0x18(SP)
         .          .    10ca44f: MOVQ R10, 0x20(SP)
         .      170ms    10ca454: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:111
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
         .      240ms    10ca548: CALL main.(*index).nearCount(SB)        ;main.(*Graph).buildAdjList graph.go:105
         .          .    10ca54d: MOVQ 0x20(SP), AX                       ;graph.go:105
         .          .    10ca552: MOVQ AX, 0x78(SP)
         .          .    10ca557: LEAQ runtime.types+85824(SB), CX        ;graph.go:107
         .          .    10ca55e: MOVQ CX, 0(SP)
         .          .    10ca562: MOVQ AX, 0x8(SP)
         .          .    10ca567: MOVQ AX, 0x10(SP)
         .      160ms    10ca56c: CALL runtime.makeslice(SB)              ;main.(*Graph).buildAdjList graph.go:107
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
         .      460ms    10ca5bf: CALL main.(*index).near(SB)             ;main.(*Graph).buildAdjList graph.go:108
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
     140ms      960ms (flat, cum) 16.38% of Total
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
      10ms       10ms    10cbe44: MOVQ 0x78(SP), R9                       ;main.(*index).add index.go:33
         .          .    10cbe49: MOVQ 0x50(SP), R11                      ;index.go:33
         .          .    10cbe4e: MOVQ 0x58(SP), R12
         .          .    10cbe53: MOVQ 0xb8(SP), R13
         .          .    10cbe5b: MOVQ 0xb0(SP), R14
         .          .    10cbe63: MOVQ 0x68(SP), R15
         .          .    10cbe68: MOVQ R12, CX                            ;index.go:122
         .          .    10cbe6b: MOVQ R11, DX                            ;index.go:121
         .          .    10cbe6e: MOVQ 0xa0(SP), BX                       ;index.go:36
         .          .    10cbe76: MOVQ R9, SI                             ;index.go:122
         .          .    10cbe79: MOVQ R13, DI                            ;index.go:33
         .          .    10cbe7c: MOVQ R14, R8                            ;index.go:123
         .          .    10cbe7f: MOVQ R15, AX                            ;index.go:33
         .          .    10cbe82: CMPQ DI, AX
         .          .    10cbe85: JGE 0x10cc093
         .       10ms    10cbe8b: NOPL                                    ;main.(*index).add index.go:34
         .          .    10cbe8c: CMPQ DX, AX                             ;index.go:121
         .          .    10cbe8f: JA 0x10cc0b8
         .          .    10cbe95: CMPQ CX, AX                             ;index.go:122
         .          .    10cbe98: JA 0x10cc0b3
         .          .    10cbe9e: MOVQ AX, 0x48(SP)                       ;index.go:33
         .          .    10cbea3: SUBQ AX, CX                             ;index.go:122
         .          .    10cbea6: MOVQ CX, 0x40(SP)
         .          .    10cbeab: SUBQ AX, DX
         .          .    10cbeae: NEGQ DX
         .          .    10cbeb1: SARQ $0x3f, DX
         .          .    10cbeb5: ANDQ AX, DX
         .          .    10cbeb8: ADDQ SI, DX
         .          .    10cbebb: MOVQ DX, 0x70(SP)
         .          .    10cbec0: CMPQ R8, SI                             ;index.go:123
         .          .    10cbec3: JE 0x10cbed8
         .          .    10cbec5: MOVQ SI, 0(SP)
         .          .    10cbec9: MOVQ R8, 0x8(SP)
         .          .    10cbece: MOVQ AX, 0x10(SP)
         .          .    10cbed3: CALL runtime.memmove(SB)
         .          .    10cbed8: MOVQ 0x48(SP), AX                       ;index.go:124
         .          .    10cbedd: INCQ AX
         .          .    10cbee0: MOVQ AX, 0x68(SP)
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
      10ms       10ms    10cbf19: ADDQ DI, CX                             ;main.skipOneCopy index.go:124
         .          .    10cbf1c: MOVQ 0x70(SP), R8                       ;index.go:124
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
         .          .    10cbf78: CALL CX
         .          .    10cbf7a: MOVQ 0xa0(SP), AX                       ;index.go:38
         .          .    10cbf82: MOVQ 0(AX), CX
         .          .    10cbf85: MOVQ 0x8(AX), DX
      10ms       10ms    10cbf89: MOVQ 0x38(CX), CX                       ;main.(*index).add index.go:38
         .          .    10cbf8d: MOVQ DX, 0(SP)                          ;index.go:38
         .       30ms    10cbf91: CALL CX                                 ;main.(*index).add index.go:38
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
      80ms       80ms    10cbfcf: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*index).add index.go:39
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
         .      770ms    10cc01d: CALL runtime.growslice(SB)              ;main.(*index).add index.go:39
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
         .          .    10cc07b: MOVQ R8, 0(SP)                          ;index.go:124
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
         .          .    10cc0b3: CALL runtime.panicSliceB(SB)            ;index.go:122
         .          .    10cc0b8: MOVQ AX, CX                             ;index.go:121
         .          .    10cc0bb: CALL runtime.panicSliceAcap(SB)
         .          .    10cc0c0: CALL runtime.panicSliceAcap(SB)         ;index.go:32
         .          .    10cc0c5: NOPL
         .          .    10cc0c6: CALL runtime.morestack_noctxt(SB)       ;index.go:29
         .          .    10cc0cb: ?
         .          .    10cc0cc: LOCK CLD
         .          .    10cc0ce: ?
ROUTINE ======================== main.(*index).near
      10ms      470ms (flat, cum)  8.02% of Total
         .          .    10cc460: MOVQ GS:0x30, CX                        ;index.go:95
         .          .    10cc469: LEAQ 0xfffffe70(SP), AX
         .          .    10cc471: CMPQ 0x10(CX), AX
         .          .    10cc475: JBE 0x10cc89a
         .          .    10cc47b: SUBQ $0x210, SP
         .          .    10cc482: MOVQ BP, 0x208(SP)
         .          .    10cc48a: LEAQ 0x208(SP), BP
         .          .    10cc492: LEAQ 0x78(SP), DI                       ;index.go:96
         .          .    10cc497: XORPS X0, X0
         .          .    10cc49a: MOVQ BP, -0x10(SP)
         .          .    10cc49f: LEAQ -0x10(SP), BP
         .       10ms    10cc4a4: CALL 0x105866e                          ;main.(*index).near index.go:96
         .          .    10cc4a9: MOVQ 0(BP), BP                          ;index.go:96
         .          .    10cc4ad: MOVQ 0x228(SP), AX                      ;index.go:97
         .          .    10cc4b5: LEAQ 0x1(AX), CX
         .          .    10cc4b9: CMPQ $0x30, CX
         .          .    10cc4bd: JA 0x10cc88f
         .          .    10cc4c3: MOVQ CX, 0x60(SP)
         .          .    10cc4c8: MOVQ 0x218(SP), AX                      ;index.go:98
         .          .    10cc4d0: MOVQ 0(AX), CX
         .          .    10cc4d3: MOVQ 0x8(AX), DX
         .          .    10cc4d7: MOVQ 0x20(CX), CX
         .          .    10cc4db: MOVQ DX, 0(SP)
         .          .    10cc4df: CALL CX
         .          .    10cc4e1: MOVQ 0x218(SP), AX                      ;index.go:99
         .          .    10cc4e9: MOVQ 0(AX), CX
         .          .    10cc4ec: MOVQ 0x8(AX), DX
         .          .    10cc4f0: MOVQ 0x40(CX), CX
         .          .    10cc4f4: MOVQ DX, 0(SP)
         .          .    10cc4f8: MOVQ 0x220(SP), DX
         .          .    10cc500: MOVQ DX, 0x8(SP)
         .          .    10cc505: MOVQ 0x228(SP), BX
         .          .    10cc50d: MOVQ BX, 0x10(SP)
         .          .    10cc512: MOVQ 0x230(SP), SI
         .          .    10cc51a: MOVQ SI, 0x18(SP)
         .       10ms    10cc51f: CALL CX                                 ;main.(*index).near index.go:99
         .          .    10cc521: MOVQ 0x218(SP), AX                      ;index.go:100
         .          .    10cc529: MOVQ 0(AX), CX
         .          .    10cc52c: MOVQ 0x8(AX), DX
         .          .    10cc530: MOVQ 0x38(CX), CX
         .          .    10cc534: MOVQ DX, 0(SP)
         .          .    10cc538: CALL CX
         .          .    10cc53a: MOVQ 0x8(SP), AX
         .          .    10cc53f: MOVQ 0x218(SP), CX
         .          .    10cc547: MOVQ 0x40(CX), DX
         .          .    10cc54b: TESTQ DX, DX
         .          .    10cc54e: JE 0x10cc88a
         .          .    10cc554: MOVQ DX, BX
         .          .    10cc557: XORL DX, DX
         .          .    10cc559: DIVQ BX
         .          .    10cc55c: MOVQ 0x60(SP), BX
         .          .    10cc561: TESTQ BX, BX
         .          .    10cc564: JBE 0x10cc880
         .          .    10cc56a: MOVQ DX, 0x78(SP)
         .          .    10cc56f: MOVQ 0x28(CX), SI                       ;index.go:101
         .          .    10cc573: MOVQ 0x38(CX), DX
         .          .    10cc577: MOVQ 0x228(SP), DI
         .          .    10cc57f: LEAQ -0x1(DI), R8
         .          .    10cc583: CMPQ DX, R8
         .          .    10cc586: JA 0x10cc878
         .          .    10cc58c: MOVQ R8, 0x68(SP)
         .          .    10cc591: MOVQ SI, 0x200(SP)
         .          .    10cc599: MOVQ DX, 0x48(SP)
         .          .    10cc59e: MOVQ 0x220(SP), R9                      ;index.go:102
         .          .    10cc5a6: XORL AX, AX
         .          .    10cc5a8: JMP 0x10cc5ea
         .          .    10cc5aa: MOVQ AX, R10                            ;index.go:107
         .          .    10cc5ad: SHLQ $0x3, AX
         .          .    10cc5b1: MOVQ DX, 0x78(SP)(AX*1)
         .          .    10cc5b6: MOVQ 0x228(SP), R11                     ;index.go:102
         .          .    10cc5be: MOVQ 0x200(SP), R12
         .          .    10cc5c6: MOVQ 0x48(SP), R13
         .          .    10cc5cb: MOVQ 0x68(SP), R14
         .          .    10cc5d0: MOVQ 0x220(SP), R15
         .          .    10cc5d8: MOVQ R13, DX                            ;index.go:121
         .          .    10cc5db: MOVQ R12, SI                            ;index.go:122
         .          .    10cc5de: MOVQ R11, DI                            ;index.go:102
         .          .    10cc5e1: MOVQ R14, R8                            ;index.go:122
         .          .    10cc5e4: MOVQ R15, R9                            ;index.go:123
         .          .    10cc5e7: MOVQ R10, AX                            ;index.go:102
         .          .    10cc5ea: CMPQ DI, AX
         .          .    10cc5ed: JGE 0x10cc756
         .       10ms    10cc5f3: NOPL                                    ;main.(*index).near index.go:103
         .          .    10cc5f4: CMPQ DX, AX                             ;index.go:121
         .          .    10cc5f7: JA 0x10cc870
         .          .    10cc5fd: CMPQ R8, AX                             ;index.go:122
         .          .    10cc600: JA 0x10cc868
         .          .    10cc606: MOVQ AX, 0x40(SP)                       ;index.go:102
         .          .    10cc60b: SUBQ AX, R8                             ;index.go:122
         .          .    10cc60e: MOVQ R8, 0x38(SP)
         .          .    10cc613: SUBQ AX, DX
         .          .    10cc616: NEGQ DX
         .          .    10cc619: SARQ $0x3f, DX
         .          .    10cc61d: ANDQ AX, DX
         .          .    10cc620: ADDQ SI, DX
         .          .    10cc623: MOVQ DX, 0x1f8(SP)
         .          .    10cc62b: CMPQ R9, SI                             ;index.go:123
         .          .    10cc62e: JE 0x10cc643
         .          .    10cc630: MOVQ SI, 0(SP)
         .          .    10cc634: MOVQ R9, 0x8(SP)
         .          .    10cc639: MOVQ AX, 0x10(SP)
         .          .    10cc63e: CALL runtime.memmove(SB)
         .          .    10cc643: MOVQ 0x40(SP), AX                       ;index.go:124
         .          .    10cc648: INCQ AX
         .          .    10cc64b: MOVQ AX, 0x70(SP)
         .          .    10cc650: MOVQ 0x228(SP), CX
         .          .    10cc658: SUBQ AX, CX
         .          .    10cc65b: MOVQ 0x38(SP), BX
      10ms       10ms    10cc660: CMPQ CX, BX                             ;main.skipOneCopy index.go:124
         .          .    10cc663: CMOVG CX, BX                            ;index.go:124
         .          .    10cc667: MOVQ 0x230(SP), CX
         .          .    10cc66f: SUBQ AX, CX
         .          .    10cc672: NEGQ CX
         .          .    10cc675: SARQ $0x3f, CX
         .          .    10cc679: ANDQ AX, CX
         .          .    10cc67c: MOVQ 0x220(SP), DI
         .          .    10cc684: ADDQ DI, CX
         .          .    10cc687: MOVQ 0x1f8(SP), R8
         .          .    10cc68f: CMPQ R8, CX
         .          .    10cc692: JNE 0x10cc73e
         .          .    10cc698: MOVQ 0x218(SP), AX                      ;index.go:105
         .          .    10cc6a0: MOVQ 0(AX), CX
         .          .    10cc6a3: MOVQ 0x8(AX), DX
         .          .    10cc6a7: MOVQ 0x20(CX), CX
         .          .    10cc6ab: MOVQ DX, 0(SP)
         .       10ms    10cc6af: CALL CX                                 ;main.(*index).near index.go:105
         .          .    10cc6b1: MOVQ 0x218(SP), AX                      ;index.go:106
         .          .    10cc6b9: MOVQ 0(AX), CX
         .          .    10cc6bc: MOVQ 0x8(AX), DX
         .          .    10cc6c0: MOVQ 0x40(CX), CX
         .          .    10cc6c4: MOVQ DX, 0(SP)
         .          .    10cc6c8: MOVQ 0x200(SP), DX
         .          .    10cc6d0: MOVQ DX, 0x8(SP)
         .          .    10cc6d5: MOVQ 0x68(SP), BX
         .          .    10cc6da: MOVQ BX, 0x10(SP)
         .          .    10cc6df: MOVQ 0x48(SP), SI
         .          .    10cc6e4: MOVQ SI, 0x18(SP)
         .       10ms    10cc6e9: CALL CX                                 ;main.(*index).near index.go:106
         .          .    10cc6eb: MOVQ 0x218(SP), AX                      ;index.go:107
         .          .    10cc6f3: MOVQ 0(AX), CX
         .          .    10cc6f6: MOVQ 0x8(AX), DX
         .          .    10cc6fa: MOVQ 0x38(CX), CX
         .          .    10cc6fe: MOVQ DX, 0(SP)
         .          .    10cc702: CALL CX
         .          .    10cc704: MOVQ 0x8(SP), AX
         .          .    10cc709: MOVQ 0x218(SP), CX
         .          .    10cc711: MOVQ 0x40(CX), DX
         .          .    10cc715: TESTQ DX, DX
         .          .    10cc718: JE 0x10cc863
         .          .    10cc71e: MOVQ DX, BX
         .          .    10cc721: XORL DX, DX
         .          .    10cc723: DIVQ BX
         .          .    10cc726: MOVQ 0x70(SP), AX
         .          .    10cc72b: MOVQ 0x60(SP), BX
         .          .    10cc730: CMPQ BX, AX
         .          .    10cc733: JB 0x10cc5aa
         .          .    10cc739: JMP 0x10cc85b
         .          .    10cc73e: MOVQ R8, 0(SP)                          ;index.go:124
         .          .    10cc742: MOVQ CX, 0x8(SP)
         .          .    10cc747: MOVQ BX, 0x10(SP)
         .          .    10cc74c: CALL runtime.memmove(SB)
         .          .    10cc751: JMP 0x10cc698
         .          .    10cc756: MOVQ 0x248(SP), DX                      ;index.go:111
         .          .    10cc75e: MOVQ 0x240(SP), SI
         .          .    10cc766: MOVQ 0x238(SP), DI
         .          .    10cc76e: XORL AX, AX
         .          .    10cc770: XORL R8, R8
         .          .    10cc773: JMP 0x10cc781
         .          .    10cc775: INCQ AX
         .          .    10cc778: MOVQ R11, DX                            ;index.go:114
         .          .    10cc77b: MOVQ SI, R8
         .          .    10cc77e: MOVQ R10, SI
         .          .    10cc781: CMPQ BX, AX                             ;index.go:111
         .          .    10cc784: JGE 0x10cc835
         .          .    10cc78a: MOVQ 0x78(SP)(AX*8), R9                 ;index.go:112
         .          .    10cc78f: MOVQ 0x10(CX), R10                      ;index.go:113
         .          .    10cc793: MOVQ 0x18(CX), R11
         .          .    10cc797: CMPQ R11, R9
         .          .    10cc79a: JAE 0x10cc850
         .          .    10cc7a0: LEAQ 0(R9)(R9*2), R9
         .          .    10cc7a4: MOVQ 0x8(R10)(R9*8), R11
         .          .    10cc7a9: MOVQ 0(R10)(R9*8), R9
         .          .    10cc7ad: CMPQ SI, R8                             ;index.go:114
         .          .    10cc7b0: JA 0x10cc845
         .          .    10cc7b6: MOVQ SI, R10
         .          .    10cc7b9: SUBQ R8, SI
         .          .    10cc7bc: CMPQ R11, SI
         .          .    10cc7bf: CMOVG R11, SI
         .          .    10cc7c3: MOVQ DX, R11
         .          .    10cc7c6: SUBQ R8, DX
         .          .    10cc7c9: NEGQ DX
         .          .    10cc7cc: SHLQ $0x3, R8
         .          .    10cc7d0: SARQ $0x3f, DX
         .          .    10cc7d4: ANDQ DX, R8
         .          .    10cc7d7: LEAQ 0(DI)(R8*1), DX
         .          .    10cc7db: CMPQ R9, DX
         .          .    10cc7de: JE 0x10cc775
         .          .    10cc7e0: MOVQ AX, 0x58(SP)                       ;index.go:111
         .          .    10cc7e5: MOVQ SI, 0x50(SP)                       ;index.go:114
         .          .    10cc7ea: MOVQ DX, 0(SP)
         .          .    10cc7ee: MOVQ R9, 0x8(SP)
         .          .    10cc7f3: SHLQ $0x3, SI
         .          .    10cc7f7: MOVQ SI, 0x10(SP)
         .      410ms    10cc7fc: CALL runtime.memmove(SB)                ;main.(*index).near index.go:114
         .          .    10cc801: MOVQ 0x58(SP), AX                       ;index.go:111
         .          .    10cc806: MOVQ 0x218(SP), CX                      ;index.go:113
         .          .    10cc80e: MOVQ 0x60(SP), BX                       ;index.go:111
         .          .    10cc813: MOVQ 0x50(SP), SI                       ;index.go:114
         .          .    10cc818: MOVQ 0x238(SP), DI
         .          .    10cc820: MOVQ 0x240(SP), R10
         .          .    10cc828: MOVQ 0x248(SP), R11
         .          .    10cc830: JMP 0x10cc775
         .          .    10cc835: MOVQ 0x208(SP), BP
         .          .    10cc83d: ADDQ $0x210, SP
         .          .    10cc844: RET
         .          .    10cc845: MOVQ R8, AX
         .          .    10cc848: MOVQ SI, CX
         .          .    10cc84b: CALL runtime.panicSliceB(SB)
         .          .    10cc850: MOVQ R9, AX                             ;index.go:113
         .          .    10cc853: MOVQ R11, CX
         .          .    10cc856: CALL runtime.panicIndexU(SB)
         .          .    10cc85b: MOVQ BX, CX                             ;index.go:107
         .          .    10cc85e: CALL runtime.panicIndex(SB)
         .          .    10cc863: CALL runtime.panicdivide(SB)
         .          .    10cc868: MOVQ R8, CX                             ;index.go:122
         .          .    10cc86b: CALL runtime.panicSliceB(SB)
         .          .    10cc870: MOVQ AX, CX                             ;index.go:121
         .          .    10cc873: CALL runtime.panicSliceAcap(SB)
         .          .    10cc878: MOVQ R8, CX                             ;index.go:101
         .          .    10cc87b: CALL runtime.panicSliceAcap(SB)
         .          .    10cc880: XORL AX, AX                             ;index.go:100
         .          .    10cc882: MOVQ BX, CX
         .          .    10cc885: CALL runtime.panicIndex(SB)
         .          .    10cc88a: CALL runtime.panicdivide(SB)
         .          .    10cc88f: MOVL $0x30, DX                          ;index.go:97
         .          .    10cc894: CALL runtime.panicSliceAlen(SB)
         .          .    10cc899: NOPL
         .          .    10cc89a: CALL runtime.morestack_noctxt(SB)       ;index.go:95
         .          .    10cc89f: JMP main.(*index).near(SB)
         .          .    10cc8a4: INT $0x3
         .          .    10cc8a5: INT $0x3
         .          .    10cc8a6: INT $0x3
         .          .    10cc8a7: INT $0x3
         .          .    10cc8a8: INT $0x3
         .          .    10cc8a9: INT $0x3
         .          .    10cc8aa: INT $0x3
         .          .    10cc8ab: INT $0x3
         .          .    10cc8ac: INT $0x3
         .          .    10cc8ad: INT $0x3
         .          .    10cc8ae: INT $0x3
ROUTINE ======================== main.(*index).nearCount
     190ms      260ms (flat, cum)  4.44% of Total
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
         .          .    10cc14f: CALL CX
         .          .    10cc151: MOVQ 0x208(SP), AX                      ;index.go:61
         .          .    10cc159: MOVQ 0(AX), CX
         .          .    10cc15c: MOVQ 0x8(AX), DX
         .          .    10cc160: MOVQ 0x40(CX), CX
         .          .    10cc164: MOVQ DX, 0(SP)
         .          .    10cc168: MOVQ 0x210(SP), DX
      10ms       10ms    10cc170: MOVQ DX, 0x8(SP)                        ;main.(*index).nearCount index.go:61
         .          .    10cc175: MOVQ 0x218(SP), BX                      ;index.go:61
         .          .    10cc17d: MOVQ BX, 0x10(SP)
         .          .    10cc182: MOVQ 0x220(SP), SI
         .          .    10cc18a: MOVQ SI, 0x18(SP)
         .       10ms    10cc18f: CALL CX                                 ;main.(*index).nearCount index.go:61
         .          .    10cc191: MOVQ 0x208(SP), AX                      ;index.go:62
         .          .    10cc199: MOVQ 0(AX), CX
         .          .    10cc19c: MOVQ 0x8(AX), DX
         .          .    10cc1a0: MOVQ 0x38(CX), CX
         .          .    10cc1a4: MOVQ DX, 0(SP)
         .          .    10cc1a8: CALL CX
         .          .    10cc1aa: MOVQ 0x8(SP), AX
      10ms       10ms    10cc1af: MOVQ 0x208(SP), CX                      ;main.(*index).nearCount index.go:62
         .          .    10cc1b7: MOVQ 0x40(CX), DX                       ;index.go:62
         .          .    10cc1bb: TESTQ DX, DX
         .          .    10cc1be: JE 0x10cc443
         .          .    10cc1c4: MOVQ DX, BX
         .          .    10cc1c7: XORL DX, DX
         .          .    10cc1c9: DIVQ BX
         .          .    10cc1cc: MOVQ 0x50(SP), BX
         .          .    10cc1d1: TESTQ BX, BX
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
         .          .    10cc248: MOVQ R13, DX                            ;index.go:121
         .          .    10cc24b: MOVQ R12, SI                            ;index.go:122
         .          .    10cc24e: MOVQ R11, DI                            ;index.go:64
         .          .    10cc251: MOVQ R14, R8                            ;index.go:122
         .          .    10cc254: MOVQ R15, R9                            ;index.go:123
         .          .    10cc257: MOVQ R10, AX                            ;index.go:64
         .          .    10cc25a: CMPQ DI, AX
         .          .    10cc25d: JGE 0x10cc3c3
         .       20ms    10cc263: NOPL                                    ;main.(*index).nearCount index.go:65
      10ms       10ms    10cc264: CMPQ DX, AX                             ;main.skipOneCopy index.go:121
         .          .    10cc267: JA 0x10cc429                            ;index.go:121
         .          .    10cc26d: CMPQ R8, AX                             ;index.go:122
         .          .    10cc270: JA 0x10cc421
         .          .    10cc276: MOVQ AX, 0x40(SP)                       ;index.go:64
         .          .    10cc27b: SUBQ AX, R8                             ;index.go:122
         .          .    10cc27e: MOVQ R8, 0x38(SP)
         .          .    10cc283: SUBQ AX, DX
         .          .    10cc286: NEGQ DX
         .          .    10cc289: SARQ $0x3f, DX
         .          .    10cc28d: ANDQ AX, DX
         .          .    10cc290: ADDQ SI, DX
         .          .    10cc293: MOVQ DX, 0x1e8(SP)
         .          .    10cc29b: CMPQ R9, SI                             ;index.go:123
         .          .    10cc29e: JE 0x10cc2b3
         .          .    10cc2a0: MOVQ SI, 0(SP)
         .          .    10cc2a4: MOVQ R9, 0x8(SP)
         .          .    10cc2a9: MOVQ AX, 0x10(SP)
         .          .    10cc2ae: CALL runtime.memmove(SB)
         .          .    10cc2b3: MOVQ 0x40(SP), AX                       ;index.go:124
         .          .    10cc2b8: INCQ AX
         .          .    10cc2bb: MOVQ AX, 0x60(SP)
         .          .    10cc2c0: MOVQ 0x218(SP), CX
         .          .    10cc2c8: SUBQ AX, CX
         .          .    10cc2cb: MOVQ 0x38(SP), BX
         .          .    10cc2d0: CMPQ CX, BX
      10ms       10ms    10cc2d3: CMOVG CX, BX                            ;main.skipOneCopy index.go:124
         .          .    10cc2d7: MOVQ 0x220(SP), CX                      ;index.go:124
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
         .          .    10cc321: MOVQ 0x208(SP), AX                      ;index.go:68
         .          .    10cc329: MOVQ 0(AX), CX
         .          .    10cc32c: MOVQ 0x8(AX), DX
         .          .    10cc330: MOVQ 0x40(CX), CX
         .          .    10cc334: MOVQ DX, 0(SP)
         .          .    10cc338: MOVQ 0x1f0(SP), DX
         .          .    10cc340: MOVQ DX, 0x8(SP)
         .          .    10cc345: MOVQ 0x58(SP), BX
         .          .    10cc34a: MOVQ BX, 0x10(SP)
         .          .    10cc34f: MOVQ 0x48(SP), SI
         .          .    10cc354: MOVQ SI, 0x18(SP)
         .       20ms    10cc359: CALL CX                                 ;main.(*index).nearCount index.go:68
         .          .    10cc35b: MOVQ 0x208(SP), AX                      ;index.go:69
         .          .    10cc363: MOVQ 0(AX), CX
         .          .    10cc366: MOVQ 0x8(AX), DX
         .          .    10cc36a: MOVQ 0x38(CX), CX
         .          .    10cc36e: MOVQ DX, 0(SP)
         .       10ms    10cc372: CALL CX                                 ;main.(*index).nearCount index.go:69
         .          .    10cc374: MOVQ 0x8(SP), AX                        ;index.go:69
         .          .    10cc379: MOVQ 0x208(SP), CX
         .          .    10cc381: MOVQ 0x40(CX), DX
         .          .    10cc385: TESTQ DX, DX
         .          .    10cc388: JE 0x10cc41c
         .          .    10cc38e: MOVQ DX, BX
         .          .    10cc391: XORL DX, DX
         .          .    10cc393: DIVQ BX
      60ms       60ms    10cc396: MOVQ 0x60(SP), AX                       ;main.(*index).nearCount index.go:69
         .          .    10cc39b: MOVQ 0x50(SP), BX                       ;index.go:69
         .          .    10cc3a0: CMPQ BX, AX
         .          .    10cc3a3: JB 0x10cc21a
         .          .    10cc3a9: JMP 0x10cc414
         .          .    10cc3ab: MOVQ R8, 0(SP)                          ;index.go:124
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
      90ms       90ms    10cc3d5: ADDQ SI, DX                             ;main.(*index).nearCount index.go:75
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
         .          .    10cc421: MOVQ R8, CX                             ;index.go:122
         .          .    10cc424: CALL runtime.panicSliceB(SB)
         .          .    10cc429: MOVQ AX, CX                             ;index.go:121
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
         .          .    10cc453: CALL runtime.morestack_noctxt(SB)       ;index.go:57
         .          .    10cc458: JMP main.(*index).nearCount(SB)
         .          .    10cc45d: INT $0x3
         .          .    10cc45e: INT $0x3
ROUTINE ======================== main.LoadDictionary
      30ms      3.06s (flat, cum) 52.22% of Total
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
         .      100ms    10c9dfa: CALL runtime.growslice(SB)              ;main.LoadDictionary graph.go:58
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
         .          .    10c9f1b: JNE 0x10c9f23
         .          .    10c9f1d: MOVQ BX, 0(DX)(CX*8)
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
         .       90ms    10c9f6e: CALL main.newIndex(SB)                  ;main.LoadDictionary graph.go:74
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
         .      950ms    10c9fe4: CALL main.(*index).add(SB)              ;main.LoadDictionary graph.go:76
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
         .      1.86s    10ca047: CALL main.(*Graph).buildAdjList(SB)     ;main.LoadDictionary graph.go:87
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
     190ms      190ms (flat, cum)  3.24% of Total
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
      20ms       20ms    10caea3: MOVZX 0(DX)(AX*1), R10                  ;main.distance graph.go:293
     110ms      110ms    10caea8: LEAQ 0x1(BX), R11                       ;main.distance graph.go:294
         .          .    10caeac: CMPL R10, R9                            ;graph.go:293
      20ms       20ms    10caeaf: CMOVNE R11, BX                          ;main.distance graph.go:294
         .          .    10caeb3: INCQ AX                                 ;graph.go:292
         .          .    10caeb6: CMPQ CX, AX
         .          .    10caeb9: JGE 0x10caecc
      10ms       10ms    10caebb: CMPQ SI, AX                             ;main.distance graph.go:293
         .          .    10caebe: JAE 0x10caee3                           ;graph.go:293
         .          .    10caec0: MOVZX 0(R8)(AX*1), R9
      20ms       20ms    10caec5: CMPQ DI, AX                             ;main.distance graph.go:293
         .          .    10caec8: JB 0x10caea3                            ;graph.go:293
         .          .    10caeca: JMP 0x10caedb
         .          .    10caecc: MOVQ BX, 0x50(SP)                       ;graph.go:298
         .          .    10caed1: MOVQ 0x10(SP), BP
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
         0      3.07s (flat, cum) 52.39% of Total
         .          .    10cc8b0: MOVQ GS:0x30, CX                        ;main.go:24
         .          .    10cc8b9: LEAQ 0xfffffd98(SP), AX
         .          .    10cc8c1: CMPQ 0x10(CX), AX
         .          .    10cc8c5: JBE 0x10cd5af
         .          .    10cc8cb: SUBQ $0x2e8, SP
         .          .    10cc8d2: MOVQ BP, 0x2e0(SP)
         .          .    10cc8da: LEAQ 0x2e0(SP), BP
         .          .    10cc8e2: MOVQ os.Args+8(SB), CX                  ;main.go:25
         .          .    10cc8e9: MOVQ os.Args(SB), DX                    ;flag.go:996
         .          .    10cc8f0: MOVQ os.Args+16(SB), BX
         .          .    10cc8f7: CMPQ $0x1, CX
         .          .    10cc8fb: JB 0x10cd5a4
         .          .    10cc901: MOVQ flag.CommandLine(SB), AX
         .          .    10cc908: MOVQ AX, 0(SP)
         .          .    10cc90c: LEAQ -0x1(BX), AX
         .          .    10cc910: MOVQ AX, BX
         .          .    10cc913: NEGQ AX
         .          .    10cc916: SARQ $0x3f, AX
         .          .    10cc91a: ANDQ $0x10, AX
         .          .    10cc91e: ADDQ DX, AX
         .          .    10cc921: MOVQ AX, 0x8(SP)
         .          .    10cc926: LEAQ -0x1(CX), AX
         .          .    10cc92a: MOVQ AX, 0x10(SP)
         .          .    10cc92f: MOVQ BX, 0x18(SP)
         .          .    10cc934: CALL flag.(*FlagSet).Parse(SB)
         .          .    10cc939: MOVQ main.cpuprofile(SB), AX            ;main.go:27
         .          .    10cc940: MOVQ 0(AX), CX
         .          .    10cc943: MOVQ 0x8(AX), AX
         .          .    10cc947: TESTQ AX, AX
         .          .    10cc94a: JNE 0x10cd447
         .          .    10cc950: MOVQ main.traceprofile(SB), AX          ;main.go:37
         .          .    10cc957: MOVQ 0(AX), CX
         .          .    10cc95a: MOVQ 0x8(AX), AX
         .          .    10cc95e: TESTQ AX, AX
         .          .    10cc961: JNE 0x10cd2e5
         .          .    10cc967: MOVQ main.dump(SB), AX                  ;main.go:47
         .          .    10cc96e: MOVQ 0x8(AX), CX
         .          .    10cc972: MOVQ 0(AX), AX
         .          .    10cc975: TESTQ CX, CX
         .          .    10cc978: JNE 0x10cd2d2
         .          .    10cc97e: XORPS X0, X0                            ;main.go:51
         .          .    10cc981: MOVUPS X0, 0x250(SP)
         .          .    10cc989: LEAQ runtime.types+88512(SB), AX
         .          .    10cc990: MOVQ AX, 0x250(SP)
         .          .    10cc998: LEAQ internal/bytealg.IndexString.args_stackmap+640(SB), CX
         .          .    10cc99f: MOVQ CX, 0x258(SP)
         .          .    10cc9a7: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cc9ae: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cc9b5: MOVQ DX, 0(SP)
         .          .    10cc9b9: MOVQ CX, 0x8(SP)
         .          .    10cc9be: LEAQ 0x250(SP), CX
         .          .    10cc9c6: MOVQ CX, 0x10(SP)
         .          .    10cc9cb: MOVQ $0x1, 0x18(SP)
         .          .    10cc9d4: MOVQ $0x1, 0x20(SP)
         .          .    10cc9dd: CALL fmt.Fprintln(SB)
         .          .    10cc9e2: MOVQ main.dict(SB), AX                  ;main.go:52
         .          .    10cc9e9: MOVQ main.perfStats(SB), CX
         .          .    10cc9f0: MOVQ main.dump(SB), DX
         .          .    10cc9f7: MOVQ 0x8(AX), BX
         .          .    10cc9fb: MOVQ 0(AX), AX
         .          .    10cc9fe: MOVZX 0(CX), CX
         .          .    10cca01: MOVQ 0(DX), SI
         .          .    10cca04: MOVQ 0x8(DX), DX
         .          .    10cca08: MOVQ AX, 0(SP)
         .          .    10cca0c: MOVQ BX, 0x8(SP)
         .          .    10cca11: MOVB CL, 0x10(SP)
         .          .    10cca15: MOVQ SI, 0x18(SP)
         .          .    10cca1a: MOVQ DX, 0x20(SP)
         .      3.06s    10cca1f: CALL main.LoadDictionary(SB)            ;main.main main.go:52
         .          .    10cca24: MOVQ 0x28(SP), AX                       ;main.go:52
         .          .    10cca29: MOVQ AX, 0x1d0(SP)
         .          .    10cca31: MOVQ 0x8(AX), CX                        ;graph.go:303
         .          .    10cca35: MOVQ CX, 0x78(SP)
         .          .    10cca3a: MOVQ AX, 0(SP)                          ;main.go:53
         .          .    10cca3e: CALL main.(*Graph).EdgeCount(SB)
         .          .    10cca43: MOVQ 0x8(SP), AX
         .          .    10cca48: MOVQ AX, 0x70(SP)
         .          .    10cca4d: MOVQ 0x78(SP), CX
         .          .    10cca52: MOVQ CX, 0(SP)
         .          .    10cca56: CALL runtime.convT64(SB)
         .          .    10cca5b: MOVQ 0x8(SP), AX
         .          .    10cca60: MOVQ AX, 0x1f8(SP)
         .          .    10cca68: MOVQ 0x70(SP), CX
         .          .    10cca6d: MOVQ CX, 0(SP)
         .          .    10cca71: CALL runtime.convT64(SB)
         .          .    10cca76: MOVQ 0x8(SP), AX
         .          .    10cca7b: XORPS X0, X0
         .          .    10cca7e: MOVUPS X0, 0x2c0(SP)
         .          .    10cca86: MOVUPS X0, 0x2d0(SP)
         .          .    10cca8e: LEAQ runtime.types+85824(SB), CX
         .          .    10cca95: MOVQ CX, 0x2c0(SP)
         .          .    10cca9d: MOVQ 0x1f8(SP), DX
         .          .    10ccaa5: MOVQ DX, 0x2c8(SP)
         .          .    10ccaad: MOVQ CX, 0x2d0(SP)
         .          .    10ccab5: MOVQ AX, 0x2d8(SP)
         .          .    10ccabd: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ccac4: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10ccacb: MOVQ CX, 0(SP)
         .          .    10ccacf: MOVQ AX, 0x8(SP)
         .          .    10ccad4: LEAQ go.string.*+10897(SB), AX
         .          .    10ccadb: MOVQ AX, 0x10(SP)
         .          .    10ccae0: MOVQ $0x14, 0x18(SP)
         .          .    10ccae9: LEAQ 0x2c0(SP), AX
         .          .    10ccaf1: MOVQ AX, 0x20(SP)
         .          .    10ccaf6: MOVQ $0x2, 0x28(SP)
         .          .    10ccaff: MOVQ $0x2, 0x30(SP)
         .          .    10ccb08: CALL fmt.Fprintf(SB)
         .          .    10ccb0d: MOVQ main.dictStats(SB), AX             ;main.go:55
         .          .    10ccb14: CMPB $0x0, 0(AX)
         .          .    10ccb17: JNE 0x10cd2b1
         .          .    10ccb1d: MOVQ main.src(SB), AX                   ;main.go:59
         .          .    10ccb24: MOVQ 0(AX), CX
         .          .    10ccb27: MOVQ 0x8(AX), AX
         .          .    10ccb2b: TESTQ AX, AX
         .          .    10ccb2e: JE 0x10ccb42
         .          .    10ccb30: MOVQ main.dest(SB), DX
         .          .    10ccb37: CMPQ $0x0, 0x8(DX)
         .          .    10ccb3c: JNE 0x10ccd4e
         .          .    10ccb42: MOVQ main.printGraph(SB), AX            ;main.go:83
         .          .    10ccb49: CMPB $0x0, 0(AX)
         .          .    10ccb4c: JNE 0x10ccd38
         .          .    10ccb52: MOVQ main.memprofile(SB), AX            ;main.go:87
         .          .    10ccb59: CMPQ $0x0, 0x8(AX)
         .          .    10ccb5e: JNE 0x10ccb76
         .          .    10ccb60: NOPL                                    ;main.go:98
         .          .    10ccb61: CALL runtime.deferreturn(SB)
         .          .    10ccb66: MOVQ 0x2e0(SP), BP
         .          .    10ccb6e: ADDQ $0x2e8, SP
         .          .    10ccb75: RET
         .       10ms    10ccb76: CALL runtime.GC(SB)                     ;main.main main.go:88
         .          .    10ccb7b: MOVQ main.memprofile(SB), AX            ;main.go:89
         .          .    10ccb82: MOVQ 0(AX), CX
         .          .    10ccb85: MOVQ 0x8(AX), AX
         .          .    10ccb89: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10ccb8d: MOVQ AX, 0x8(SP)
         .          .    10ccb92: MOVQ $0x602, 0x10(SP)
         .          .    10ccb9b: MOVL $0x1b6, 0x18(SP)
         .          .    10ccba3: CALL os.OpenFile(SB)
         .          .    10ccba8: MOVQ 0x20(SP), AX
         .          .    10ccbad: MOVQ AX, 0x1f0(SP)
         .          .    10ccbb5: MOVQ 0x28(SP), CX
         .          .    10ccbba: MOVQ 0x30(SP), DX
         .          .    10ccbbf: TESTQ CX, CX                            ;main.go:90
         .          .    10ccbc2: JE 0x10ccc2e
         .          .    10ccbc4: JE 0x10ccbca                            ;main.go:91
         .          .    10ccbc6: MOVQ 0x8(CX), CX
         .          .    10ccbca: XORPS X0, X0
         .          .    10ccbcd: MOVUPS X0, 0x260(SP)
         .          .    10ccbd5: MOVUPS X0, 0x270(SP)
         .          .    10ccbdd: LEAQ runtime.types+88512(SB), AX
         .          .    10ccbe4: MOVQ AX, 0x260(SP)
         .          .    10ccbec: LEAQ internal/bytealg.IndexString.args_stackmap+672(SB), BX
         .          .    10ccbf3: MOVQ BX, 0x268(SP)
         .          .    10ccbfb: MOVQ CX, 0x270(SP)
         .          .    10ccc03: MOVQ DX, 0x278(SP)
         .          .    10ccc0b: LEAQ 0x260(SP), CX
         .          .    10ccc13: MOVQ CX, 0(SP)
         .          .    10ccc17: MOVQ $0x2, 0x8(SP)
         .          .    10ccc20: MOVQ $0x2, 0x10(SP)
         .          .    10ccc29: CALL log.Fatal(SB)
         .          .    10ccc2e: MOVL $0x18, 0xf0(SP)                    ;main.go:93
         .          .    10ccc39: LEAQ go.func.*+293(SB), AX
         .          .    10ccc40: MOVQ AX, 0x108(SP)
         .          .    10ccc48: MOVQ 0x1f0(SP), AX
         .          .    10ccc50: MOVQ AX, 0x120(SP)
         .          .    10ccc58: LEAQ 0xf0(SP), CX
         .          .    10ccc60: MOVQ CX, 0(SP)
         .          .    10ccc64: CALL runtime.deferprocStack(SB)
         .          .    10ccc69: TESTL AX, AX
         .          .    10ccc6b: JNE 0x10ccd22
         .          .    10ccc71: NOPL                                    ;pprof.go:522
         .          .    10ccc72: LEAQ go.itab.*os.File,io.Writer(SB), AX ;pprof.go:533
         .          .    10ccc79: MOVQ AX, 0(SP)
         .          .    10ccc7d: MOVQ 0x1f0(SP), AX
         .          .    10ccc85: MOVQ AX, 0x8(SP)
         .          .    10ccc8a: MOVQ $0x0, 0x10(SP)
         .          .    10ccc93: XORPS X0, X0
         .          .    10ccc96: MOVUPS X0, 0x18(SP)
         .          .    10ccc9b: CALL runtime/pprof.writeHeapInternal(SB)
         .          .    10ccca0: MOVQ 0x28(SP), AX
         .          .    10ccca5: MOVQ 0x30(SP), CX
         .          .    10cccaa: TESTQ AX, AX                            ;main.go:94
         .          .    10cccad: JE 0x10ccb60
         .          .    10cccb3: JE 0x10cccb9                            ;main.go:95
         .          .    10cccb5: MOVQ 0x8(AX), AX
         .          .    10cccb9: XORPS X0, X0
         .          .    10cccbc: MOVUPS X0, 0x260(SP)
         .          .    10cccc4: MOVUPS X0, 0x270(SP)
         .          .    10ccccc: LEAQ runtime.types+88512(SB), DX
         .          .    10cccd3: MOVQ DX, 0x260(SP)
         .          .    10cccdb: LEAQ internal/bytealg.IndexString.args_stackmap+688(SB), DX
         .          .    10ccce2: MOVQ DX, 0x268(SP)
         .          .    10cccea: MOVQ AX, 0x270(SP)
         .          .    10cccf2: MOVQ CX, 0x278(SP)
         .          .    10cccfa: LEAQ 0x260(SP), AX
         .          .    10ccd02: MOVQ AX, 0(SP)
         .          .    10ccd06: MOVQ $0x2, 0x8(SP)
         .          .    10ccd0f: MOVQ $0x2, 0x10(SP)
         .          .    10ccd18: CALL log.Fatal(SB)
         .          .    10ccd1d: JMP 0x10ccb60
         .          .    10ccd22: NOPL                                    ;main.go:93
         .          .    10ccd23: CALL runtime.deferreturn(SB)
         .          .    10ccd28: MOVQ 0x2e0(SP), BP
         .          .    10ccd30: ADDQ $0x2e8, SP
         .          .    10ccd37: RET
         .          .    10ccd38: MOVQ 0x1d0(SP), AX                      ;main.go:84
         .          .    10ccd40: MOVQ AX, 0(SP)
         .          .    10ccd44: CALL main.(*Graph).PrintAdjList(SB)
         .          .    10ccd49: JMP 0x10ccb52
         .          .    10ccd4e: MOVQ CX, 0(SP)                          ;main.go:60
         .          .    10ccd52: MOVQ AX, 0x8(SP)
         .          .    10ccd57: CALL runtime.convTstring(SB)
         .          .    10ccd5c: MOVQ main.dest(SB), AX
         .          .    10ccd63: MOVQ 0x10(SP), CX
         .          .    10ccd68: MOVQ CX, 0x1f8(SP)
         .          .    10ccd70: MOVQ 0(AX), DX
         .          .    10ccd73: MOVQ 0x8(AX), AX
         .          .    10ccd77: MOVQ DX, 0(SP)
         .          .    10ccd7b: MOVQ AX, 0x8(SP)
         .          .    10ccd80: CALL runtime.convTstring(SB)
         .          .    10ccd85: MOVQ 0x10(SP), AX
         .          .    10ccd8a: XORPS X0, X0
         .          .    10ccd8d: MOVUPS X0, 0x2a0(SP)
         .          .    10ccd95: MOVUPS X0, 0x2b0(SP)
         .          .    10ccd9d: LEAQ runtime.types+88512(SB), CX
         .          .    10ccda4: MOVQ CX, 0x2a0(SP)
         .          .    10ccdac: MOVQ 0x1f8(SP), DX
         .          .    10ccdb4: MOVQ DX, 0x2a8(SP)
         .          .    10ccdbc: MOVQ CX, 0x2b0(SP)
         .          .    10ccdc4: MOVQ AX, 0x2b8(SP)
         .          .    10ccdcc: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ccdd3: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ccdda: MOVQ DX, 0(SP)
         .          .    10ccdde: MOVQ AX, 0x8(SP)
         .          .    10ccde3: LEAQ go.string.*+16166(SB), AX
         .          .    10ccdea: MOVQ AX, 0x10(SP)
         .          .    10ccdef: MOVQ $0x1b, 0x18(SP)
         .          .    10ccdf8: LEAQ 0x2a0(SP), AX
         .          .    10cce00: MOVQ AX, 0x20(SP)
         .          .    10cce05: MOVQ $0x2, 0x28(SP)
         .          .    10cce0e: MOVQ $0x2, 0x30(SP)
         .          .    10cce17: CALL fmt.Fprintf(SB)
         .          .    10cce1c: MOVQ main.src(SB), AX                   ;main.go:61
         .          .    10cce23: MOVQ 0x8(AX), CX
         .          .    10cce27: MOVQ 0(AX), AX
         .          .    10cce2a: MOVQ 0x1d0(SP), DX
         .          .    10cce32: MOVQ DX, 0(SP)
         .          .    10cce36: MOVQ AX, 0x8(SP)
         .          .    10cce3b: MOVQ CX, 0x10(SP)
         .          .    10cce40: CALL main.(*Graph).Find(SB)
         .          .    10cce45: MOVQ main.dest(SB), AX                  ;main.go:62
         .          .    10cce4c: MOVQ 0x18(SP), CX                       ;main.go:61
         .          .    10cce51: MOVQ CX, 0x58(SP)
         .          .    10cce56: MOVQ 0x8(AX), DX                        ;main.go:62
         .          .    10cce5a: MOVQ 0(AX), AX
         .          .    10cce5d: MOVQ 0x1d0(SP), BX
         .          .    10cce65: MOVQ BX, 0(SP)
         .          .    10cce69: MOVQ AX, 0x8(SP)
         .          .    10cce6e: MOVQ DX, 0x10(SP)
         .          .    10cce73: CALL main.(*Graph).Find(SB)
         .          .    10cce78: MOVQ 0x18(SP), AX
         .          .    10cce7d: MOVQ 0x58(SP), CX                       ;main.go:64
         .          .    10cce82: TESTQ CX, CX
         .          .    10cce85: JL 0x10cd156
         .          .    10cce8b: TESTQ AX, AX
         .          .    10cce8e: JL 0x10cd153
         .          .    10cce94: XORPS X0, X0                            ;main.go:74
         .          .    10cce97: MOVUPS X0, 0x220(SP)
         .          .    10cce9f: LEAQ runtime.types+88512(SB), AX
         .          .    10ccea6: MOVQ AX, 0x220(SP)
         .          .    10cceae: LEAQ internal/bytealg.IndexString.args_stackmap+656(SB), CX
         .          .    10cceb5: MOVQ CX, 0x228(SP)
         .          .    10ccebd: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10ccec4: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ccecb: MOVQ DX, 0(SP)
         .          .    10ccecf: MOVQ CX, 0x8(SP)
         .          .    10cced4: LEAQ 0x220(SP), CX
         .          .    10ccedc: MOVQ CX, 0x10(SP)
         .          .    10ccee1: MOVQ $0x1, 0x18(SP)
         .          .    10cceea: MOVQ $0x1, 0x20(SP)
         .          .    10ccef3: CALL fmt.Fprintln(SB)
         .          .    10ccef8: MOVQ 0x1d0(SP), AX                      ;main.go:75
         .          .    10ccf00: MOVQ AX, 0(SP)
         .          .    10ccf04: MOVQ 0x58(SP), CX
         .          .    10ccf09: MOVQ CX, 0x8(SP)
         .          .    10ccf0e: CALL main.(*Graph).AllPaths(SB)
         .          .    10ccf13: MOVQ main.dest(SB), AX                  ;main.go:76
         .          .    10ccf1a: MOVQ 0x10(SP), CX                       ;main.go:75
         .          .    10ccf1f: MOVQ 0x8(AX), DX                        ;main.go:76
         .          .    10ccf23: MOVQ 0(AX), AX
         .          .    10ccf26: MOVQ CX, 0(SP)
         .          .    10ccf2a: MOVQ AX, 0x8(SP)
         .          .    10ccf2f: MOVQ DX, 0x10(SP)
         .          .    10ccf34: CALL main.(*Paths).To(SB)
         .          .    10ccf39: MOVQ 0x18(SP), AX
         .          .    10ccf3e: MOVQ AX, 0x1c8(SP)
         .          .    10ccf46: MOVQ 0x20(SP), CX
         .          .    10ccf4b: MOVQ CX, 0x60(SP)
         .          .    10ccf50: TESTQ CX, CX                            ;main.go:77
         .          .    10ccf53: JE 0x10cd065
         .          .    10ccf59: MOVQ 0x1d0(SP), DX                      ;main.go:80
         .          .    10ccf61: XORL BX, BX
         .          .    10ccf63: JMP 0x10cd043
         .          .    10ccf68: MOVQ BX, 0x78(SP)
         .          .    10ccf6d: LEAQ 0(SI)(SI*2), AX                    ;main.go:81
         .          .    10ccf71: MOVQ 0x10(R8)(AX*8), CX
         .          .    10ccf76: MOVQ 0(R8)(AX*8), DX
         .          .    10ccf7a: MOVQ 0x8(R8)(AX*8), AX
         .          .    10ccf7f: MOVQ $0x0, 0(SP)
         .          .    10ccf87: MOVQ DX, 0x8(SP)
         .          .    10ccf8c: MOVQ AX, 0x10(SP)
         .          .    10ccf91: MOVQ CX, 0x18(SP)
         .          .    10ccf96: CALL runtime.slicebytetostring(SB)
         .          .    10ccf9b: MOVQ 0x28(SP), AX
         .          .    10ccfa0: MOVQ 0x20(SP), CX
         .          .    10ccfa5: MOVQ CX, 0(SP)
         .          .    10ccfa9: MOVQ AX, 0x8(SP)
         .          .    10ccfae: CALL runtime.convTstring(SB)
         .          .    10ccfb3: MOVQ 0x10(SP), AX
         .          .    10ccfb8: XORPS X0, X0
         .          .    10ccfbb: MOVUPS X0, 0x210(SP)
         .          .    10ccfc3: LEAQ runtime.types+88512(SB), CX
         .          .    10ccfca: MOVQ CX, 0x210(SP)
         .          .    10ccfd2: MOVQ AX, 0x218(SP)
         .          .    10ccfda: MOVQ os.Stdout(SB), AX                  ;print.go:274
         .          .    10ccfe1: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ccfe8: MOVQ DX, 0(SP)
         .          .    10ccfec: MOVQ AX, 0x8(SP)
         .          .    10ccff1: LEAQ 0x210(SP), AX
         .          .    10ccff9: MOVQ AX, 0x10(SP)
         .          .    10ccffe: MOVQ $0x1, 0x18(SP)
         .          .    10cd007: MOVQ $0x1, 0x20(SP)
         .          .    10cd010: CALL fmt.Fprintln(SB)
         .          .    10cd015: MOVQ 0x78(SP), AX                       ;main.go:80
         .          .    10cd01a: LEAQ 0x1(AX), BX
         .          .    10cd01e: MOVQ 0x60(SP), AX
         .          .    10cd023: MOVQ 0x1d0(SP), CX
         .          .    10cd02b: MOVQ 0x1c8(SP), DX
         .          .    10cd033: MOVQ DX, AX
         .          .    10cd036: MOVQ 0x60(SP), CX
         .          .    10cd03b: MOVQ 0x1d0(SP), DX                      ;main.go:81
         .          .    10cd043: CMPQ CX, BX                             ;main.go:80
         .          .    10cd046: JGE 0x10ccb52
         .          .    10cd04c: MOVQ 0(AX)(BX*8), SI
         .          .    10cd050: MOVQ 0x8(DX), DI                        ;main.go:81
         .          .    10cd054: MOVQ 0(DX), R8
         .          .    10cd057: CMPQ DI, SI
         .          .    10cd05a: JB 0x10ccf68
         .          .    10cd060: JMP 0x10cd599
         .          .    10cd065: MOVQ main.src(SB), AX                   ;main.go:78
         .          .    10cd06c: MOVQ 0x8(AX), CX
         .          .    10cd070: MOVQ 0(AX), AX
         .          .    10cd073: MOVQ AX, 0(SP)
         .          .    10cd077: MOVQ CX, 0x8(SP)
         .          .    10cd07c: CALL runtime.convTstring(SB)
         .          .    10cd081: MOVQ main.dest(SB), AX
         .          .    10cd088: MOVQ 0x10(SP), CX
         .          .    10cd08d: MOVQ CX, 0x1f8(SP)
         .          .    10cd095: MOVQ 0x8(AX), DX
         .          .    10cd099: MOVQ 0(AX), AX
         .          .    10cd09c: MOVQ AX, 0(SP)
         .          .    10cd0a0: MOVQ DX, 0x8(SP)
         .          .    10cd0a5: CALL runtime.convTstring(SB)
         .          .    10cd0aa: MOVQ 0x10(SP), AX
         .          .    10cd0af: XORPS X0, X0
         .          .    10cd0b2: MOVUPS X0, 0x280(SP)
         .          .    10cd0ba: MOVUPS X0, 0x290(SP)
         .          .    10cd0c2: LEAQ runtime.types+88512(SB), CX
         .          .    10cd0c9: MOVQ CX, 0x280(SP)
         .          .    10cd0d1: MOVQ 0x1f8(SP), DX
         .          .    10cd0d9: MOVQ DX, 0x288(SP)
         .          .    10cd0e1: MOVQ CX, 0x290(SP)
         .          .    10cd0e9: MOVQ AX, 0x298(SP)
         .          .    10cd0f1: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd0f8: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd0ff: MOVQ DX, 0(SP)
         .          .    10cd103: MOVQ AX, 0x8(SP)
         .          .    10cd108: LEAQ go.string.*+19932(SB), AX
         .          .    10cd10f: MOVQ AX, 0x10(SP)
         .          .    10cd114: MOVQ $0x1f, 0x18(SP)
         .          .    10cd11d: LEAQ 0x280(SP), AX
         .          .    10cd125: MOVQ AX, 0x20(SP)
         .          .    10cd12a: MOVQ $0x2, 0x28(SP)
         .          .    10cd133: MOVQ $0x2, 0x30(SP)
         .          .    10cd13c: CALL fmt.Fprintf(SB)
         .          .    10cd141: MOVQ 0x1c8(SP), AX                      ;main.go:80
         .          .    10cd149: MOVQ 0x60(SP), CX
         .          .    10cd14e: JMP 0x10ccf59
         .          .    10cd153: TESTQ CX, CX                            ;main.go:64
         .          .    10cd156: JL 0x10cd20f                            ;main.go:65
         .          .    10cd15c: TESTQ AX, AX                            ;main.go:68
         .          .    10cd15f: JL 0x10cd177
         .          .    10cd161: NOPL                                    ;main.go:71
         .          .    10cd162: CALL runtime.deferreturn(SB)
         .          .    10cd167: MOVQ 0x2e0(SP), BP
         .          .    10cd16f: ADDQ $0x2e8, SP
         .          .    10cd176: RET
         .          .    10cd177: MOVQ main.dest(SB), AX                  ;main.go:69
         .          .    10cd17e: MOVQ 0(AX), CX
         .          .    10cd181: MOVQ 0x8(AX), AX
         .          .    10cd185: MOVQ CX, 0(SP)
         .          .    10cd189: MOVQ AX, 0x8(SP)
         .          .    10cd18e: CALL runtime.convTstring(SB)
         .          .    10cd193: MOVQ 0x10(SP), AX
         .          .    10cd198: XORPS X0, X0
         .          .    10cd19b: MOVUPS X0, 0x230(SP)
         .          .    10cd1a3: LEAQ runtime.types+88512(SB), CX
         .          .    10cd1aa: MOVQ CX, 0x230(SP)
         .          .    10cd1b2: MOVQ AX, 0x238(SP)
         .          .    10cd1ba: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd1c1: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cd1c8: MOVQ CX, 0(SP)
         .          .    10cd1cc: MOVQ AX, 0x8(SP)
         .          .    10cd1d1: LEAQ go.string.*+7812(SB), AX
         .          .    10cd1d8: MOVQ AX, 0x10(SP)
         .          .    10cd1dd: MOVQ $0x11, 0x18(SP)
         .          .    10cd1e6: LEAQ 0x230(SP), AX
         .          .    10cd1ee: MOVQ AX, 0x20(SP)
         .          .    10cd1f3: MOVQ $0x1, 0x28(SP)
         .          .    10cd1fc: MOVQ $0x1, 0x30(SP)
         .          .    10cd205: CALL fmt.Fprintf(SB)
         .          .    10cd20a: JMP 0x10cd161                           ;main.go:71
         .          .    10cd20f: MOVQ AX, 0x50(SP)                       ;main.go:62
         .          .    10cd214: MOVQ main.src(SB), AX                   ;main.go:66
         .          .    10cd21b: MOVQ 0x8(AX), CX
         .          .    10cd21f: MOVQ 0(AX), AX
         .          .    10cd222: MOVQ AX, 0(SP)
         .          .    10cd226: MOVQ CX, 0x8(SP)
         .          .    10cd22b: CALL runtime.convTstring(SB)
         .          .    10cd230: MOVQ 0x10(SP), AX
         .          .    10cd235: XORPS X0, X0
         .          .    10cd238: MOVUPS X0, 0x240(SP)
         .          .    10cd240: LEAQ runtime.types+88512(SB), CX
         .          .    10cd247: MOVQ CX, 0x240(SP)
         .          .    10cd24f: MOVQ AX, 0x248(SP)
         .          .    10cd257: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd25e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd265: MOVQ DX, 0(SP)
         .          .    10cd269: MOVQ AX, 0x8(SP)
         .          .    10cd26e: LEAQ go.string.*+7812(SB), AX
         .          .    10cd275: MOVQ AX, 0x10(SP)
         .          .    10cd27a: MOVQ $0x11, 0x18(SP)
         .          .    10cd283: LEAQ 0x240(SP), BX
         .          .    10cd28b: MOVQ BX, 0x20(SP)
         .          .    10cd290: MOVQ $0x1, 0x28(SP)
         .          .    10cd299: MOVQ $0x1, 0x30(SP)
         .          .    10cd2a2: CALL fmt.Fprintf(SB)
         .          .    10cd2a7: MOVQ 0x50(SP), AX                       ;main.go:68
         .          .    10cd2ac: JMP 0x10cd15c
         .          .    10cd2b1: MOVQ main.dict(SB), AX                  ;main.go:56
         .          .    10cd2b8: MOVQ 0x8(AX), CX
         .          .    10cd2bc: MOVQ 0(AX), AX
         .          .    10cd2bf: MOVQ AX, 0(SP)
         .          .    10cd2c3: MOVQ CX, 0x8(SP)
         .          .    10cd2c8: CALL main.dictionaryStats(SB)
         .          .    10cd2cd: JMP 0x10ccb1d
         .          .    10cd2d2: MOVQ AX, 0(SP)                          ;main.go:48
         .          .    10cd2d6: MOVQ CX, 0x8(SP)
         .          .    10cd2db: CALL main.createPathIfNotExists(SB)
         .          .    10cd2e0: JMP 0x10cc97e
         .          .    10cd2e5: NOPL                                    ;main.go:38
         .          .    10cd2e6: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd2ea: MOVQ AX, 0x8(SP)
         .          .    10cd2ef: MOVQ $0x602, 0x10(SP)
         .          .    10cd2f8: MOVL $0x1b6, 0x18(SP)
         .          .    10cd300: CALL os.OpenFile(SB)
         .          .    10cd305: MOVQ 0x20(SP), AX
         .          .    10cd30a: MOVQ AX, 0x1d8(SP)
         .          .    10cd312: MOVQ 0x30(SP), CX
         .          .    10cd317: MOVQ 0x28(SP), DX
         .          .    10cd31c: TESTQ DX, DX                            ;main.go:39
         .          .    10cd31f: JE 0x10cd38b
         .          .    10cd321: JE 0x10cd327                            ;main.go:40
         .          .    10cd323: MOVQ 0x8(DX), DX
         .          .    10cd327: XORPS X0, X0
         .          .    10cd32a: MOVUPS X0, 0x260(SP)
         .          .    10cd332: MOVUPS X0, 0x270(SP)
         .          .    10cd33a: LEAQ runtime.types+88512(SB), AX
         .          .    10cd341: MOVQ AX, 0x260(SP)
         .          .    10cd349: LEAQ internal/bytealg.IndexString.args_stackmap+624(SB), BX
         .          .    10cd350: MOVQ BX, 0x268(SP)
         .          .    10cd358: MOVQ DX, 0x270(SP)
         .          .    10cd360: MOVQ CX, 0x278(SP)
         .          .    10cd368: LEAQ 0x260(SP), CX
         .          .    10cd370: MOVQ CX, 0(SP)
         .          .    10cd374: MOVQ $0x2, 0x8(SP)
         .          .    10cd37d: MOVQ $0x2, 0x10(SP)
         .          .    10cd386: CALL log.Fatal(SB)
         .          .    10cd38b: MOVL $0x18, 0x138(SP)                   ;main.go:42
         .          .    10cd396: LEAQ go.func.*+293(SB), AX
         .          .    10cd39d: MOVQ AX, 0x150(SP)
         .          .    10cd3a5: MOVQ 0x1d8(SP), CX
         .          .    10cd3ad: MOVQ CX, 0x168(SP)
         .          .    10cd3b5: LEAQ 0x138(SP), DX
         .          .    10cd3bd: MOVQ DX, 0(SP)
         .          .    10cd3c1: CALL runtime.deferprocStack(SB)
         .          .    10cd3c6: TESTL AX, AX
         .          .    10cd3c8: JNE 0x10cd431
         .          .    10cd3ca: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:43
         .          .    10cd3d1: MOVQ AX, 0(SP)
         .          .    10cd3d5: MOVQ 0x1d8(SP), CX
         .          .    10cd3dd: MOVQ CX, 0x8(SP)
         .          .    10cd3e2: CALL runtime/trace.Start(SB)
         .          .    10cd3e7: MOVL $0x0, 0x80(SP)                     ;main.go:44
         .          .    10cd3f2: LEAQ go.func.*+1597(SB), AX
         .          .    10cd3f9: MOVQ AX, 0x98(SP)
         .          .    10cd401: LEAQ 0x80(SP), AX
         .          .    10cd409: MOVQ AX, 0(SP)
         .          .    10cd40d: CALL runtime.deferprocStack(SB)
         .          .    10cd412: TESTL AX, AX
         .          .    10cd414: JNE 0x10cd41b
         .          .    10cd416: JMP 0x10cc967
         .          .    10cd41b: NOPL
         .          .    10cd41c: CALL runtime.deferreturn(SB)
         .          .    10cd421: MOVQ 0x2e0(SP), BP
         .          .    10cd429: ADDQ $0x2e8, SP
         .          .    10cd430: RET
         .          .    10cd431: NOPL                                    ;main.go:42
         .          .    10cd432: CALL runtime.deferreturn(SB)
         .          .    10cd437: MOVQ 0x2e0(SP), BP
         .          .    10cd43f: ADDQ $0x2e8, SP
         .          .    10cd446: RET
         .          .    10cd447: NOPL                                    ;main.go:28
         .          .    10cd448: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd44c: MOVQ AX, 0x8(SP)
         .          .    10cd451: MOVQ $0x602, 0x10(SP)
         .          .    10cd45a: MOVL $0x1b6, 0x18(SP)
         .          .    10cd462: CALL os.OpenFile(SB)
         .          .    10cd467: MOVQ 0x20(SP), AX
         .          .    10cd46c: MOVQ AX, 0x1e0(SP)
         .          .    10cd474: MOVQ 0x28(SP), CX
         .          .    10cd479: MOVQ CX, 0x68(SP)
         .          .    10cd47e: MOVQ 0x30(SP), DX
         .          .    10cd483: MOVQ DX, 0x1e8(SP)
         .          .    10cd48b: MOVL $0x18, 0x180(SP)                   ;main.go:29
         .          .    10cd496: LEAQ go.func.*+293(SB), BX
         .          .    10cd49d: MOVQ BX, 0x198(SP)
         .          .    10cd4a5: MOVQ AX, 0x1b0(SP)
         .          .    10cd4ad: LEAQ 0x180(SP), SI
         .          .    10cd4b5: MOVQ SI, 0(SP)
         .          .    10cd4b9: CALL runtime.deferprocStack(SB)
         .          .    10cd4be: TESTL AX, AX
         .          .    10cd4c0: JNE 0x10cd583
         .          .    10cd4c6: MOVQ 0x68(SP), AX                       ;main.go:30
         .          .    10cd4cb: TESTQ AX, AX
         .          .    10cd4ce: JE 0x10cd51c
         .          .    10cd4d0: JE 0x10cd4d6                            ;main.go:31
         .          .    10cd4d2: MOVQ 0x8(AX), AX
         .          .    10cd4d6: XORPS X0, X0
         .          .    10cd4d9: MOVUPS X0, 0x200(SP)
         .          .    10cd4e1: MOVQ AX, 0x200(SP)
         .          .    10cd4e9: MOVQ 0x1e8(SP), AX
         .          .    10cd4f1: MOVQ AX, 0x208(SP)
         .          .    10cd4f9: LEAQ 0x200(SP), AX
         .          .    10cd501: MOVQ AX, 0(SP)
         .          .    10cd505: MOVQ $0x1, 0x8(SP)
         .          .    10cd50e: MOVQ $0x1, 0x10(SP)
         .          .    10cd517: CALL log.Fatal(SB)
         .          .    10cd51c: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:33
         .          .    10cd523: MOVQ AX, 0(SP)
         .          .    10cd527: MOVQ 0x1e0(SP), CX
         .          .    10cd52f: MOVQ CX, 0x8(SP)
         .          .    10cd534: CALL runtime/pprof.StartCPUProfile(SB)
         .          .    10cd539: MOVL $0x0, 0xb8(SP)                     ;main.go:34
         .          .    10cd544: LEAQ go.func.*+1565(SB), AX
         .          .    10cd54b: MOVQ AX, 0xd0(SP)
         .          .    10cd553: LEAQ 0xb8(SP), AX
         .          .    10cd55b: MOVQ AX, 0(SP)
         .          .    10cd55f: CALL runtime.deferprocStack(SB)
         .          .    10cd564: TESTL AX, AX
         .          .    10cd566: JNE 0x10cd56d
         .          .    10cd568: JMP 0x10cc950
         .          .    10cd56d: NOPL
         .          .    10cd56e: CALL runtime.deferreturn(SB)
         .          .    10cd573: MOVQ 0x2e0(SP), BP
         .          .    10cd57b: ADDQ $0x2e8, SP
         .          .    10cd582: RET
         .          .    10cd583: NOPL                                    ;main.go:29
         .          .    10cd584: CALL runtime.deferreturn(SB)
         .          .    10cd589: MOVQ 0x2e0(SP), BP
         .          .    10cd591: ADDQ $0x2e8, SP
         .          .    10cd598: RET
         .          .    10cd599: MOVQ SI, AX                             ;main.go:81
         .          .    10cd59c: MOVQ DI, CX
         .          .    10cd59f: CALL runtime.panicIndex(SB)
         .          .    10cd5a4: MOVL $0x1, AX                           ;flag.go:996
         .          .    10cd5a9: CALL runtime.panicSliceB(SB)
         .          .    10cd5ae: NOPL
         .          .    10cd5af: CALL runtime.morestack_noctxt(SB)       ;main.go:24
         .          .    10cd5b4: JMP main.main(SB)
         .          .    10cd5b9: INT $0x3
         .          .    10cd5ba: INT $0x3
         .          .    10cd5bb: INT $0x3
         .          .    10cd5bc: INT $0x3
         .          .    10cd5bd: INT $0x3
         .          .    10cd5be: INT $0x3
ROUTINE ======================== main.newIndex
      40ms       90ms (flat, cum)  1.54% of Total
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
         .          .    10cbbf2: MOVQ BX, AX                             ;index.go:19
         .          .    10cbbf5: MOVQ 0x50(SP), DX                       ;index.go:18
         .          .    10cbbfa: CMPQ DX, CX
         .          .    10cbbfd: JGE 0x10cbc64
         .          .    10cbbff: MOVQ CX, 0x20(SP)
         .          .    10cbc04: LEAQ runtime.types+85824(SB), AX        ;index.go:19
         .          .    10cbc0b: MOVQ AX, 0(SP)
      10ms       10ms    10cbc0f: XORPS X0, X0                            ;main.newIndex index.go:19
         .          .    10cbc12: MOVUPS X0, 0x8(SP)                      ;index.go:19
         .       30ms    10cbc17: CALL runtime.makeslice(SB)              ;main.newIndex index.go:19
         .          .    10cbc1c: MOVQ 0x20(SP), AX                       ;index.go:19
         .          .    10cbc21: LEAQ 0(AX)(AX*2), CX
         .          .    10cbc25: MOVQ 0x18(SP), DX
         .          .    10cbc2a: MOVQ 0x38(SP), BX
      10ms       10ms    10cbc2f: MOVQ $0x0, 0x8(BX)(CX*8)                ;main.newIndex index.go:19
      20ms       20ms    10cbc38: MOVQ $0x0, 0x10(BX)(CX*8)
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
         0      3.07s (flat, cum) 52.39% of Total
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
         .      3.07s    102cd0c: CALL AX                                 ;runtime.main proc.go:203
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
