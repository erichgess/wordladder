Total: 5.86s
ROUTINE ======================== main.(*Graph).EdgeCount
      10ms       10ms (flat, cum)  0.17% of Total
         .          .    10cb150: MOVQ 0x8(SP), AX                        ;graph.go:310
         .          .    10cb155: MOVQ 0x20(AX), CX
         .          .    10cb159: MOVQ 0x18(AX), AX
         .          .    10cb15d: XORL DX, DX
         .          .    10cb15f: XORL BX, BX
         .          .    10cb161: JMP 0x10cb176
         .          .    10cb163: LEAQ 0x1(DX), SI
         .          .    10cb167: LEAQ 0(DX)(DX*2), DI                    ;graph.go:311
         .          .    10cb16b: MOVQ 0x8(AX)(DI*8), DI
      10ms       10ms    10cb170: ADDQ DI, BX                             ;main.(*Graph).EdgeCount graph.go:311
         .          .    10cb173: MOVQ SI, DX                             ;graph.go:310
         .          .    10cb176: CMPQ CX, DX
         .          .    10cb179: JL 0x10cb163
         .          .    10cb17b: MOVQ BX, AX                             ;graph.go:314
         .          .    10cb17e: SHRQ $0x3f, BX
         .          .    10cb182: ADDQ BX, AX
         .          .    10cb185: SARQ $0x1, AX
         .          .    10cb188: MOVQ AX, 0x10(SP)
         .          .    10cb18d: RET
         .          .    10cb18e: INT $0x3
ROUTINE ======================== main.(*Graph).buildAdjList
     500ms      1.87s (flat, cum) 31.91% of Total
         .          .    10ca460: MOVQ GS:0x30, CX                        ;graph.go:102
         .          .    10ca469: LEAQ -0x60(SP), AX
         .          .    10ca46e: CMPQ 0x10(CX), AX
         .          .    10ca472: JBE 0x10ca91e
         .          .    10ca478: SUBQ $0xe0, SP
         .          .    10ca47f: MOVQ BP, 0xd8(SP)
         .          .    10ca487: LEAQ 0xd8(SP), BP
         .          .    10ca48f: XORL AX, AX
         .          .    10ca491: XORL CX, CX
         .          .    10ca493: JMP 0x10ca73f                           ;graph.go:104
         .          .    10ca498: MOVQ 0x88(SP), R10                      ;graph.go:110
         .          .    10ca4a0: LEAQ 0x1(R10), R9
         .          .    10ca4a4: MOVQ 0x78(SP), R10
         .          .    10ca4a9: MOVQ 0x70(SP), R11
         .          .    10ca4ae: MOVQ 0x98(SP), R12
         .          .    10ca4b6: MOVQ 0x68(SP), R13
         .          .    10ca4bb: MOVQ 0xc0(SP), R14
         .          .    10ca4c3: MOVQ R10, AX
         .          .    10ca4c6: MOVQ 0x50(SP), CX                       ;graph.go:107
         .          .    10ca4cb: MOVQ R11, DX                            ;graph.go:111
         .          .    10ca4ce: MOVQ 0xe8(SP), BX
         .          .    10ca4d6: MOVQ R12, SI
         .          .    10ca4d9: MOVQ R13, DI
         .          .    10ca4dc: MOVQ R14, R8                            ;graph.go:110
         .          .    10ca4df: CMPQ AX, R9
         .          .    10ca4e2: JGE 0x10ca736
     410ms      410ms    10ca4e8: MOVQ 0(R8)(R9*8), R10                   ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca4ec: MOVQ 0x8(BX), R11                       ;graph.go:111
         .          .    10ca4f0: MOVQ 0(BX), R12
         .          .    10ca4f3: CMPQ R11, R10
         .          .    10ca4f6: JAE 0x10ca912
         .          .    10ca4fc: MOVQ R9, 0x88(SP)                       ;graph.go:110
         .          .    10ca504: MOVQ R10, 0x58(SP)
         .          .    10ca509: LEAQ 0(R10)(R10*2), AX                  ;graph.go:111
         .          .    10ca50d: MOVQ AX, 0x80(SP)
         .          .    10ca515: MOVQ 0(R12)(AX*8), CX
      30ms       30ms    10ca519: MOVQ 0x10(R12)(AX*8), BX                ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca51e: MOVQ 0x8(R12)(AX*8), R8                 ;graph.go:111
      10ms       10ms    10ca523: MOVQ SI, 0(SP)                          ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca527: MOVQ DI, 0x8(SP)                        ;graph.go:111
         .          .    10ca52c: MOVQ DX, 0x10(SP)
         .          .    10ca531: MOVQ CX, 0x18(SP)
         .          .    10ca536: MOVQ R8, 0x20(SP)
         .          .    10ca53b: MOVQ BX, 0x28(SP)
         .      140ms    10ca540: CALL main.distance(SB)                  ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca545: CMPQ $0x1, 0x30(SP)                     ;graph.go:111
      10ms       10ms    10ca54b: JNE 0x10ca71c                           ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca551: MOVQ 0xe8(SP), DX                       ;graph.go:112
         .          .    10ca559: MOVQ 0x18(DX), BX
         .          .    10ca55d: MOVQ 0x20(DX), CX
         .          .    10ca561: MOVQ 0x60(SP), AX
         .          .    10ca566: CMPQ CX, AX
         .          .    10ca569: JAE 0x10ca90d
         .          .    10ca56f: MOVQ 0x90(SP), SI
         .          .    10ca577: MOVQ 0x10(BX)(SI*8), DI
      20ms       20ms    10ca57c: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca581: MOVQ 0(BX)(SI*8), R9                    ;graph.go:112
         .          .    10ca585: LEAQ 0x1(R8), R10
         .          .    10ca589: LEAQ 0(BX)(SI*8), R11
         .          .    10ca58d: CMPQ DI, R10
         .          .    10ca590: JA 0x10ca685
         .          .    10ca596: LEAQ 0x1(R8), DI
         .          .    10ca59a: MOVQ DI, 0x8(BX)(SI*8)
         .          .    10ca59f: MOVQ 0x58(SP), BX
         .          .    10ca5a4: MOVQ BX, 0(R9)(R8*8)
         .          .    10ca5a8: MOVQ 0x20(DX), CX                       ;graph.go:113
         .          .    10ca5ac: MOVQ 0x18(DX), DI
         .          .    10ca5b0: CMPQ CX, BX
         .          .    10ca5b3: JAE 0x10ca905
         .          .    10ca5b9: MOVQ 0x80(SP), BX
         .          .    10ca5c1: MOVQ 0(DI)(BX*8), R8
      10ms       10ms    10ca5c5: MOVQ 0x10(DI)(BX*8), R9                 ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca5ca: MOVQ 0x8(DI)(BX*8), R10                 ;graph.go:113
         .          .    10ca5cf: LEAQ 0x1(R10), R11
         .          .    10ca5d3: LEAQ 0(DI)(BX*8), R12
         .          .    10ca5d7: CMPQ R9, R11
         .          .    10ca5da: JA 0x10ca5ee
         .          .    10ca5dc: LEAQ 0x1(R10), R9
         .          .    10ca5e0: MOVQ R9, 0x8(DI)(BX*8)
         .          .    10ca5e5: MOVQ AX, 0(R8)(R10*8)
         .          .    10ca5e9: JMP 0x10ca498
         .          .    10ca5ee: MOVQ R12, 0xb8(SP)
      10ms       10ms    10ca5f6: MOVQ DI, 0xb0(SP)                       ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca5fe: LEAQ type.*+85856(SB), AX               ;graph.go:113
         .          .    10ca605: MOVQ AX, 0(SP)
         .          .    10ca609: MOVQ R8, 0x8(SP)
         .          .    10ca60e: MOVQ R10, 0x10(SP)
         .          .    10ca613: MOVQ R9, 0x18(SP)
         .          .    10ca618: MOVQ R11, 0x20(SP)
         .      140ms    10ca61d: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca622: MOVQ 0x28(SP), AX                       ;graph.go:113
         .          .    10ca627: MOVQ 0x30(SP), CX
         .          .    10ca62c: MOVQ 0x38(SP), DX
         .          .    10ca631: MOVQ 0x80(SP), BX
         .          .    10ca639: MOVQ 0xb0(SP), SI
         .          .    10ca641: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca646: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca64d: JNE 0x10ca676
         .          .    10ca64f: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca653: MOVQ 0xe8(SP), DX                       ;graph.go:111
         .          .    10ca65b: MOVQ SI, DI                             ;graph.go:113
         .          .    10ca65e: MOVQ CX, R10
         .          .    10ca661: MOVQ AX, R8
         .          .    10ca664: MOVQ 0x60(SP), AX
         .          .    10ca669: MOVQ 0x90(SP), SI                       ;graph.go:112
         .          .    10ca671: JMP 0x10ca5dc                           ;graph.go:113
         .          .    10ca676: MOVQ 0xb8(SP), DI
         .          .    10ca67e: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca683: JMP 0x10ca653
         .          .    10ca685: MOVQ BX, 0xa8(SP)                       ;graph.go:112
         .          .    10ca68d: MOVQ R11, 0xa0(SP)
         .          .    10ca695: LEAQ type.*+85856(SB), AX
         .          .    10ca69c: MOVQ AX, 0(SP)
         .          .    10ca6a0: MOVQ R9, 0x8(SP)
         .          .    10ca6a5: MOVQ R8, 0x10(SP)
         .          .    10ca6aa: MOVQ DI, 0x18(SP)
         .          .    10ca6af: MOVQ R10, 0x20(SP)
         .      220ms    10ca6b4: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca6b9: MOVQ 0x28(SP), AX                       ;graph.go:112
         .          .    10ca6be: MOVQ 0x30(SP), CX
         .          .    10ca6c3: MOVQ 0x38(SP), DX
         .          .    10ca6c8: MOVQ 0x90(SP), BX
         .          .    10ca6d0: MOVQ 0xa8(SP), SI
         .          .    10ca6d8: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca6dd: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca6e4: JNE 0x10ca70d
         .          .    10ca6e6: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca6ea: MOVQ 0xe8(SP), DX                       ;graph.go:113
         .          .    10ca6f2: MOVQ SI, BX                             ;graph.go:112
         .          .    10ca6f5: MOVQ 0x90(SP), SI
         .          .    10ca6fd: MOVQ CX, R8
         .          .    10ca700: MOVQ AX, R9
         .          .    10ca703: MOVQ 0x60(SP), AX                       ;graph.go:113
         .          .    10ca708: JMP 0x10ca596                           ;graph.go:112
         .          .    10ca70d: MOVQ 0xa0(SP), DI
         .          .    10ca715: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca71a: JMP 0x10ca6ea
         .          .    10ca71c: MOVQ 0x60(SP), AX                       ;graph.go:104
         .          .    10ca721: MOVQ 0xe8(SP), DX                       ;graph.go:111
         .          .    10ca729: MOVQ 0x90(SP), SI                       ;graph.go:112
         .          .    10ca731: JMP 0x10ca498                           ;graph.go:110
         .          .    10ca736: MOVQ 0x60(SP), DX                       ;graph.go:104
         .          .    10ca73b: LEAQ 0x1(DX), AX
         .          .    10ca73f: MOVQ 0xe8(SP), DX
         .          .    10ca747: MOVQ 0x8(DX), BX
         .          .    10ca74b: MOVQ 0(DX), SI
         .          .    10ca74e: CMPQ BX, AX
         .          .    10ca751: JGE 0x10ca860
         .          .    10ca757: MOVQ AX, 0x60(SP)
         .          .    10ca75c: MOVQ CX, 0x50(SP)                       ;graph.go:107
         .          .    10ca761: LEAQ 0(AX)(AX*2), CX                    ;graph.go:105
         .          .    10ca765: MOVQ CX, 0x90(SP)
         .          .    10ca76d: MOVQ 0x10(SI)(CX*8), DX
         .          .    10ca772: MOVQ DX, 0x70(SP)
         .          .    10ca777: MOVQ 0x8(SI)(CX*8), BX
         .          .    10ca77c: MOVQ BX, 0x68(SP)
         .          .    10ca781: MOVQ 0(SI)(CX*8), SI
         .          .    10ca785: MOVQ SI, 0x98(SP)
         .          .    10ca78d: MOVQ 0xf0(SP), DI                       ;graph.go:106
         .          .    10ca795: MOVQ DI, 0(SP)
         .          .    10ca799: MOVQ SI, 0x8(SP)
         .          .    10ca79e: MOVQ BX, 0x10(SP)
         .          .    10ca7a3: MOVQ DX, 0x18(SP)
         .      190ms    10ca7a8: CALL main.(*index).nearCount(SB)        ;main.(*Graph).buildAdjList graph.go:106
         .          .    10ca7ad: MOVQ 0x20(SP), AX                       ;graph.go:106
         .          .    10ca7b2: MOVQ AX, 0x78(SP)
         .          .    10ca7b7: LEAQ type.*+85856(SB), CX               ;graph.go:108
         .          .    10ca7be: MOVQ CX, 0(SP)
         .          .    10ca7c2: MOVQ AX, 0x8(SP)
         .          .    10ca7c7: MOVQ AX, 0x10(SP)
         .      170ms    10ca7cc: CALL runtime.makeslice(SB)              ;main.(*Graph).buildAdjList graph.go:108
         .          .    10ca7d1: MOVQ 0x18(SP), AX                       ;graph.go:108
         .          .    10ca7d6: MOVQ AX, 0xc0(SP)
         .          .    10ca7de: MOVQ 0xf0(SP), CX                       ;graph.go:109
         .          .    10ca7e6: MOVQ CX, 0(SP)
         .          .    10ca7ea: MOVQ 0x98(SP), DX
         .          .    10ca7f2: MOVQ DX, 0x8(SP)
         .          .    10ca7f7: MOVQ 0x68(SP), BX
         .          .    10ca7fc: MOVQ BX, 0x10(SP)
         .          .    10ca801: MOVQ 0x70(SP), SI
         .          .    10ca806: MOVQ SI, 0x18(SP)
         .          .    10ca80b: MOVQ AX, 0x20(SP)
         .          .    10ca810: MOVQ 0x78(SP), DI
         .          .    10ca815: MOVQ DI, 0x28(SP)
         .          .    10ca81a: MOVQ DI, 0x30(SP)
         .      510ms    10ca81f: CALL main.(*index).near(SB)             ;main.(*Graph).buildAdjList graph.go:109
         .          .    10ca824: MOVQ 0x78(SP), AX                       ;graph.go:107
         .          .    10ca829: MOVQ 0x50(SP), CX
         .          .    10ca82e: ADDQ AX, CX
         .          .    10ca831: MOVQ CX, 0x50(SP)
         .          .    10ca836: MOVQ 0x70(SP), DX                       ;graph.go:110
         .          .    10ca83b: MOVQ 0xe8(SP), BX
         .          .    10ca843: MOVQ 0x98(SP), SI
         .          .    10ca84b: MOVQ 0x68(SP), DI
         .          .    10ca850: MOVQ 0xc0(SP), R8
         .          .    10ca858: XORL R9, R9
         .          .    10ca85b: JMP 0x10ca4df
         .          .    10ca860: XORPS X0, X0                            ;graph.go:117
         .          .    10ca863: CVTSI2SDQ CX, X0
         .          .    10ca868: XORPS X1, X1
         .          .    10ca86b: CVTSI2SDQ BX, X1
         .          .    10ca870: DIVSD X1, X0
         .          .    10ca874: MOVSD_XMM X0, 0(SP)
         .          .    10ca879: CALL runtime.convT64(SB)
         .          .    10ca87e: MOVQ 0x8(SP), AX
         .          .    10ca883: XORPS X0, X0
         .          .    10ca886: MOVUPS X0, 0xc8(SP)
         .          .    10ca88e: LEAQ type.*+84128(SB), CX
         .          .    10ca895: MOVQ CX, 0xc8(SP)
         .          .    10ca89d: MOVQ AX, 0xd0(SP)
         .          .    10ca8a5: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ca8ac: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10ca8b3: MOVQ CX, 0(SP)
         .          .    10ca8b7: MOVQ AX, 0x8(SP)
         .          .    10ca8bc: LEAQ go.string.*+3293(SB), AX
         .          .    10ca8c3: MOVQ AX, 0x10(SP)
         .          .    10ca8c8: MOVQ $0xa, 0x18(SP)
         .          .    10ca8d1: LEAQ 0xc8(SP), AX
         .          .    10ca8d9: MOVQ AX, 0x20(SP)
         .          .    10ca8de: MOVQ $0x1, 0x28(SP)
         .          .    10ca8e7: MOVQ $0x1, 0x30(SP)
         .          .    10ca8f0: CALL fmt.Fprintf(SB)
         .          .    10ca8f5: MOVQ 0xd8(SP), BP
         .          .    10ca8fd: ADDQ $0xe0, SP
         .          .    10ca904: RET
         .          .    10ca905: MOVQ BX, AX                             ;graph.go:113
         .          .    10ca908: CALL runtime.panicIndex(SB)
         .          .    10ca90d: CALL runtime.panicIndex(SB)             ;graph.go:112
         .          .    10ca912: MOVQ R10, AX                            ;graph.go:111
         .          .    10ca915: MOVQ R11, CX
         .          .    10ca918: CALL runtime.panicIndex(SB)
         .          .    10ca91d: NOPL
         .          .    10ca91e: CALL runtime.morestack_noctxt(SB)       ;graph.go:102
         .          .    10ca923: JMP main.(*Graph).buildAdjList(SB)
         .          .    10ca928: INT $0x3
         .          .    10ca929: INT $0x3
         .          .    10ca92a: INT $0x3
         .          .    10ca92b: INT $0x3
         .          .    10ca92c: INT $0x3
         .          .    10ca92d: INT $0x3
         .          .    10ca92e: INT $0x3
ROUTINE ======================== main.(*index).add
     120ms      730ms (flat, cum) 12.46% of Total
         .          .    10cc020: MOVQ GS:0x30, CX                        ;index.go:31
         .          .    10cc029: LEAQ -0x18(SP), AX
         .          .    10cc02e: CMPQ 0x10(CX), AX
         .          .    10cc032: JBE 0x10cc326
         .          .    10cc038: SUBQ $0x98, SP
         .          .    10cc03f: MOVQ BP, 0x90(SP)
         .          .    10cc047: LEAQ 0x90(SP), BP
         .          .    10cc04f: MOVQ 0xa0(SP), BX                       ;index.go:34
         .          .    10cc057: MOVQ 0x38(BX), DX
         .          .    10cc05b: MOVQ 0x28(BX), SI
         .          .    10cc05f: MOVQ 0xb8(SP), DI
         .          .    10cc067: LEAQ -0x1(DI), CX
         .          .    10cc06b: CMPQ DX, CX
         .          .    10cc06e: JA 0x10cc320
         .          .    10cc074: MOVQ CX, 0x58(SP)
         .          .    10cc079: MOVQ DX, 0x50(SP)
         .          .    10cc07e: MOVQ SI, 0x78(SP)
         .          .    10cc083: MOVQ 0xb0(SP), R8                       ;index.go:35
         .          .    10cc08b: XORL AX, AX
         .          .    10cc08d: JMP 0x10cc0e2
         .          .    10cc08f: LEAQ 0x1(R8), R10                       ;index.go:41
         .          .    10cc093: MOVQ R10, 0x8(BX)(SI*8)
         .          .    10cc098: MOVQ 0xa8(SP), R10
         .          .    10cc0a0: MOVQ R10, 0(R9)(R8*8)
         .          .    10cc0a4: MOVQ 0x78(SP), R9                       ;index.go:35
         .          .    10cc0a9: MOVQ 0x50(SP), R11
         .          .    10cc0ae: MOVQ 0x58(SP), R12
         .          .    10cc0b3: MOVQ 0xb8(SP), R13
         .          .    10cc0bb: MOVQ 0xb0(SP), R14
         .          .    10cc0c3: MOVQ 0x68(SP), R15
         .          .    10cc0c8: MOVQ R12, CX                            ;index.go:125
         .          .    10cc0cb: MOVQ R11, DX                            ;index.go:124
         .          .    10cc0ce: MOVQ 0xa0(SP), BX                       ;index.go:38
         .          .    10cc0d6: MOVQ R9, SI                             ;index.go:125
         .          .    10cc0d9: MOVQ R13, DI                            ;index.go:35
         .          .    10cc0dc: MOVQ R14, R8                            ;index.go:126
         .          .    10cc0df: MOVQ R15, AX                            ;index.go:35
         .          .    10cc0e2: CMPQ DI, AX
         .          .    10cc0e5: JGE 0x10cc2f3
         .       30ms    10cc0eb: NOPL                                    ;main.(*index).add index.go:36
         .          .    10cc0ec: CMPQ DX, AX                             ;index.go:124
         .          .    10cc0ef: JA 0x10cc318
         .          .    10cc0f5: CMPQ CX, AX                             ;index.go:125
         .          .    10cc0f8: JA 0x10cc313
         .          .    10cc0fe: MOVQ AX, 0x48(SP)                       ;index.go:35
         .          .    10cc103: SUBQ AX, CX                             ;index.go:125
         .          .    10cc106: MOVQ CX, 0x40(SP)
         .          .    10cc10b: SUBQ AX, DX
         .          .    10cc10e: NEGQ DX
         .          .    10cc111: SARQ $0x3f, DX
         .          .    10cc115: ANDQ AX, DX
         .          .    10cc118: ADDQ SI, DX
         .          .    10cc11b: MOVQ DX, 0x70(SP)
         .          .    10cc120: CMPQ R8, SI                             ;index.go:126
         .          .    10cc123: JE 0x10cc138
         .          .    10cc125: MOVQ SI, 0(SP)
         .          .    10cc129: MOVQ R8, 0x8(SP)
         .          .    10cc12e: MOVQ AX, 0x10(SP)
         .          .    10cc133: CALL runtime.memmove(SB)
         .          .    10cc138: MOVQ 0x48(SP), AX                       ;index.go:127
         .          .    10cc13d: INCQ AX
         .          .    10cc140: MOVQ AX, 0x68(SP)
         .          .    10cc145: MOVQ 0xb8(SP), CX
         .          .    10cc14d: SUBQ AX, CX
         .          .    10cc150: MOVQ 0x40(SP), BX
         .          .    10cc155: CMPQ CX, BX
         .          .    10cc158: CMOVG CX, BX
      10ms       10ms    10cc15c: MOVQ 0xc0(SP), CX                       ;main.skipOneCopy index.go:127
         .          .    10cc164: SUBQ AX, CX                             ;index.go:127
         .          .    10cc167: NEGQ CX
         .          .    10cc16a: SARQ $0x3f, CX
         .          .    10cc16e: ANDQ AX, CX
         .          .    10cc171: MOVQ 0xb0(SP), DI
         .          .    10cc179: ADDQ DI, CX
         .          .    10cc17c: MOVQ 0x70(SP), R8
         .          .    10cc181: CMPQ R8, CX
         .          .    10cc184: JNE 0x10cc2db
         .          .    10cc18a: MOVQ 0xa0(SP), AX                       ;index.go:38
         .          .    10cc192: MOVQ 0(AX), CX
         .          .    10cc195: MOVQ 0x8(AX), DX
         .          .    10cc199: MOVQ 0x20(CX), CX
         .          .    10cc19d: MOVQ DX, 0(SP)
         .       20ms    10cc1a1: CALL CX                                 ;main.(*index).add index.go:38
         .          .    10cc1a3: MOVQ 0xa0(SP), AX                       ;index.go:39
         .          .    10cc1ab: MOVQ 0(AX), CX
         .          .    10cc1ae: MOVQ 0x8(AX), DX
         .          .    10cc1b2: MOVQ 0x40(CX), CX
         .          .    10cc1b6: MOVQ DX, 0(SP)
         .          .    10cc1ba: MOVQ 0x78(SP), DX
         .          .    10cc1bf: MOVQ DX, 0x8(SP)
         .          .    10cc1c4: MOVQ 0x58(SP), BX
         .          .    10cc1c9: MOVQ BX, 0x10(SP)
         .          .    10cc1ce: MOVQ 0x50(SP), SI
         .          .    10cc1d3: MOVQ SI, 0x18(SP)
         .       30ms    10cc1d8: CALL CX                                 ;main.(*index).add index.go:39
         .          .    10cc1da: MOVQ 0xa0(SP), AX                       ;index.go:40
         .          .    10cc1e2: MOVQ 0(AX), CX
         .          .    10cc1e5: MOVQ 0x8(AX), DX
         .          .    10cc1e9: MOVQ 0x38(CX), CX
         .          .    10cc1ed: MOVQ DX, 0(SP)
         .       20ms    10cc1f1: CALL CX                                 ;main.(*index).add index.go:40
         .          .    10cc1f3: MOVQ 0x8(SP), AX                        ;index.go:40
         .          .    10cc1f8: MOVQ 0xa0(SP), CX
         .          .    10cc200: MOVQ 0x40(CX), DX
         .          .    10cc204: TESTQ DX, DX
         .          .    10cc207: JE 0x10cc30e
         .          .    10cc20d: MOVQ DX, BX
         .          .    10cc210: XORL DX, DX
         .          .    10cc212: DIVQ BX
      20ms       20ms    10cc215: MOVQ 0x10(CX), BX                       ;main.(*index).add index.go:41
         .          .    10cc219: MOVQ 0x18(CX), SI                       ;index.go:41
         .          .    10cc21d: CMPQ SI, DX
         .          .    10cc220: JAE 0x10cc303
         .          .    10cc226: LEAQ 0(DX)(DX*2), SI
         .          .    10cc22a: MOVQ 0x10(BX)(SI*8), DI
      90ms       90ms    10cc22f: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*index).add index.go:41
         .          .    10cc234: MOVQ 0(BX)(SI*8), R9                    ;index.go:41
         .          .    10cc238: LEAQ 0x1(R8), R10
         .          .    10cc23c: LEAQ 0(BX)(SI*8), R11
         .          .    10cc240: CMPQ DI, R10
         .          .    10cc243: JBE 0x10cc08f
         .          .    10cc249: MOVQ BX, 0x88(SP)
         .          .    10cc251: MOVQ SI, 0x60(SP)
         .          .    10cc256: MOVQ R11, 0x80(SP)
         .          .    10cc25e: LEAQ type.*+85856(SB), AX
         .          .    10cc265: MOVQ AX, 0(SP)
         .          .    10cc269: MOVQ R9, 0x8(SP)
         .          .    10cc26e: MOVQ R8, 0x10(SP)
         .          .    10cc273: MOVQ DI, 0x18(SP)
         .          .    10cc278: MOVQ R10, 0x20(SP)
         .      490ms    10cc27d: CALL runtime.growslice(SB)              ;main.(*index).add index.go:41
         .          .    10cc282: MOVQ 0x28(SP), AX                       ;index.go:41
         .          .    10cc287: MOVQ 0x30(SP), CX
         .          .    10cc28c: MOVQ 0x38(SP), DX
         .          .    10cc291: MOVQ 0x60(SP), BX
         .          .    10cc296: MOVQ 0x88(SP), SI
         .          .    10cc29e: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10cc2a3: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc2aa: JNE 0x10cc2cc
         .          .    10cc2ac: MOVQ AX, 0(SI)(BX*8)
         .          .    10cc2b0: MOVQ CX, R8
         .          .    10cc2b3: MOVQ AX, R9
         .          .    10cc2b6: MOVQ 0xa0(SP), CX                       ;index.go:38
         .          .    10cc2be: MOVQ BX, DX                             ;index.go:41
         .          .    10cc2c1: MOVQ SI, BX
         .          .    10cc2c4: MOVQ DX, SI
         .          .    10cc2c7: JMP 0x10cc08f
         .          .    10cc2cc: MOVQ 0x80(SP), DI
         .          .    10cc2d4: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc2d9: JMP 0x10cc2b0
         .          .    10cc2db: MOVQ R8, 0(SP)                          ;index.go:127
         .          .    10cc2df: MOVQ CX, 0x8(SP)
         .          .    10cc2e4: MOVQ BX, 0x10(SP)
         .       20ms    10cc2e9: CALL runtime.memmove(SB)                ;main.skipOneCopy index.go:127
         .          .    10cc2ee: JMP 0x10cc18a                           ;index.go:127
         .          .    10cc2f3: MOVQ 0x90(SP), BP
         .          .    10cc2fb: ADDQ $0x98, SP
         .          .    10cc302: RET
         .          .    10cc303: MOVQ DX, AX                             ;index.go:41
         .          .    10cc306: MOVQ SI, CX
         .          .    10cc309: CALL runtime.panicIndexU(SB)
         .          .    10cc30e: CALL runtime.panicdivide(SB)            ;index.go:40
         .          .    10cc313: CALL runtime.panicSliceB(SB)            ;index.go:125
         .          .    10cc318: MOVQ AX, CX                             ;index.go:124
         .          .    10cc31b: CALL runtime.panicSliceAcap(SB)
         .          .    10cc320: CALL runtime.panicSliceAcap(SB)         ;index.go:34
         .          .    10cc325: NOPL
         .          .    10cc326: CALL runtime.morestack_noctxt(SB)       ;index.go:31
         .          .    10cc32b: ?
         .          .    10cc32c: LOCK CLD
         .          .    10cc32e: ?
ROUTINE ======================== main.(*index).near
      40ms      510ms (flat, cum)  8.70% of Total
         .          .    10cc6c0: MOVQ GS:0x30, CX                        ;index.go:97
         .          .    10cc6c9: LEAQ 0xfffffe70(SP), AX
         .          .    10cc6d1: CMPQ 0x10(CX), AX
         .          .    10cc6d5: JBE 0x10ccafa
         .          .    10cc6db: SUBQ $0x210, SP
         .          .    10cc6e2: MOVQ BP, 0x208(SP)
         .          .    10cc6ea: LEAQ 0x208(SP), BP
         .          .    10cc6f2: LEAQ 0x78(SP), DI                       ;index.go:98
         .          .    10cc6f7: XORPS X0, X0
         .          .    10cc6fa: MOVQ BP, -0x10(SP)
         .          .    10cc6ff: LEAQ -0x10(SP), BP
         .          .    10cc704: CALL 0x105866e
         .          .    10cc709: MOVQ 0(BP), BP
         .          .    10cc70d: MOVQ 0x228(SP), AX                      ;index.go:99
         .          .    10cc715: LEAQ 0x1(AX), CX
         .          .    10cc719: CMPQ $0x30, CX
         .          .    10cc71d: JA 0x10ccaef
         .          .    10cc723: MOVQ CX, 0x60(SP)
         .          .    10cc728: MOVQ 0x218(SP), AX                      ;index.go:100
         .          .    10cc730: MOVQ 0(AX), CX
         .          .    10cc733: MOVQ 0x8(AX), DX
         .          .    10cc737: MOVQ 0x20(CX), CX
         .          .    10cc73b: MOVQ DX, 0(SP)
         .          .    10cc73f: CALL CX
         .          .    10cc741: MOVQ 0x218(SP), AX                      ;index.go:101
         .          .    10cc749: MOVQ 0(AX), CX
         .          .    10cc74c: MOVQ 0x8(AX), DX
         .          .    10cc750: MOVQ 0x40(CX), CX
         .          .    10cc754: MOVQ DX, 0(SP)
         .          .    10cc758: MOVQ 0x220(SP), DX
         .          .    10cc760: MOVQ DX, 0x8(SP)
         .          .    10cc765: MOVQ 0x228(SP), BX
         .          .    10cc76d: MOVQ BX, 0x10(SP)
         .          .    10cc772: MOVQ 0x230(SP), SI
         .          .    10cc77a: MOVQ SI, 0x18(SP)
         .          .    10cc77f: CALL CX
         .          .    10cc781: MOVQ 0x218(SP), AX                      ;index.go:102
         .          .    10cc789: MOVQ 0(AX), CX
         .          .    10cc78c: MOVQ 0x8(AX), DX
         .          .    10cc790: MOVQ 0x38(CX), CX
         .          .    10cc794: MOVQ DX, 0(SP)
         .       10ms    10cc798: CALL CX                                 ;main.(*index).near index.go:102
         .          .    10cc79a: MOVQ 0x8(SP), AX                        ;index.go:102
         .          .    10cc79f: MOVQ 0x218(SP), CX
         .          .    10cc7a7: MOVQ 0x40(CX), DX
         .          .    10cc7ab: TESTQ DX, DX
         .          .    10cc7ae: JE 0x10ccaea
         .          .    10cc7b4: MOVQ DX, BX
         .          .    10cc7b7: XORL DX, DX
         .          .    10cc7b9: DIVQ BX
      10ms       10ms    10cc7bc: MOVQ 0x60(SP), BX                       ;main.(*index).near index.go:102
         .          .    10cc7c1: TESTQ BX, BX                            ;index.go:102
         .          .    10cc7c4: JBE 0x10ccae0
         .          .    10cc7ca: MOVQ DX, 0x78(SP)
         .          .    10cc7cf: MOVQ 0x28(CX), SI                       ;index.go:103
         .          .    10cc7d3: MOVQ 0x38(CX), DX
         .          .    10cc7d7: MOVQ 0x228(SP), DI
         .          .    10cc7df: LEAQ -0x1(DI), R8
         .          .    10cc7e3: CMPQ DX, R8
         .          .    10cc7e6: JA 0x10ccad8
         .          .    10cc7ec: MOVQ R8, 0x68(SP)
         .          .    10cc7f1: MOVQ SI, 0x200(SP)
         .          .    10cc7f9: MOVQ DX, 0x48(SP)
         .          .    10cc7fe: MOVQ 0x220(SP), R9                      ;index.go:104
         .          .    10cc806: XORL AX, AX
         .          .    10cc808: JMP 0x10cc84a
         .          .    10cc80a: MOVQ AX, R10                            ;index.go:109
         .          .    10cc80d: SHLQ $0x3, AX
         .          .    10cc811: MOVQ DX, 0x78(SP)(AX*1)
         .          .    10cc816: MOVQ 0x228(SP), R11                     ;index.go:104
         .          .    10cc81e: MOVQ 0x200(SP), R12
         .          .    10cc826: MOVQ 0x48(SP), R13
         .          .    10cc82b: MOVQ 0x68(SP), R14
         .          .    10cc830: MOVQ 0x220(SP), R15
         .          .    10cc838: MOVQ R13, DX                            ;index.go:124
         .          .    10cc83b: MOVQ R12, SI                            ;index.go:125
         .          .    10cc83e: MOVQ R11, DI                            ;index.go:104
         .          .    10cc841: MOVQ R14, R8                            ;index.go:125
         .          .    10cc844: MOVQ R15, R9                            ;index.go:126
         .          .    10cc847: MOVQ R10, AX                            ;index.go:104
         .          .    10cc84a: CMPQ DI, AX
         .          .    10cc84d: JGE 0x10cc9b6
         .          .    10cc853: NOPL                                    ;index.go:105
         .          .    10cc854: CMPQ DX, AX                             ;index.go:124
         .          .    10cc857: JA 0x10ccad0
         .          .    10cc85d: CMPQ R8, AX                             ;index.go:125
         .          .    10cc860: JA 0x10ccac8
         .          .    10cc866: MOVQ AX, 0x40(SP)                       ;index.go:104
         .          .    10cc86b: SUBQ AX, R8                             ;index.go:125
         .          .    10cc86e: MOVQ R8, 0x38(SP)
         .          .    10cc873: SUBQ AX, DX
         .          .    10cc876: NEGQ DX
         .          .    10cc879: SARQ $0x3f, DX
         .          .    10cc87d: ANDQ AX, DX
         .          .    10cc880: ADDQ SI, DX
         .          .    10cc883: MOVQ DX, 0x1f8(SP)
         .          .    10cc88b: CMPQ R9, SI                             ;index.go:126
         .          .    10cc88e: JE 0x10cc8a3
         .          .    10cc890: MOVQ SI, 0(SP)
         .          .    10cc894: MOVQ R9, 0x8(SP)
         .          .    10cc899: MOVQ AX, 0x10(SP)
         .          .    10cc89e: CALL runtime.memmove(SB)
         .          .    10cc8a3: MOVQ 0x40(SP), AX                       ;index.go:127
         .          .    10cc8a8: INCQ AX
         .          .    10cc8ab: MOVQ AX, 0x70(SP)
         .          .    10cc8b0: MOVQ 0x228(SP), CX
         .          .    10cc8b8: SUBQ AX, CX
         .          .    10cc8bb: MOVQ 0x38(SP), BX
         .          .    10cc8c0: CMPQ CX, BX
         .          .    10cc8c3: CMOVG CX, BX
         .          .    10cc8c7: MOVQ 0x230(SP), CX
         .          .    10cc8cf: SUBQ AX, CX
         .          .    10cc8d2: NEGQ CX
         .          .    10cc8d5: SARQ $0x3f, CX
         .          .    10cc8d9: ANDQ AX, CX
         .          .    10cc8dc: MOVQ 0x220(SP), DI
         .          .    10cc8e4: ADDQ DI, CX
         .          .    10cc8e7: MOVQ 0x1f8(SP), R8
         .          .    10cc8ef: CMPQ R8, CX
         .          .    10cc8f2: JNE 0x10cc99e
      10ms       10ms    10cc8f8: MOVQ 0x218(SP), AX                      ;main.(*index).near index.go:107
         .          .    10cc900: MOVQ 0(AX), CX                          ;index.go:107
         .          .    10cc903: MOVQ 0x8(AX), DX
         .          .    10cc907: MOVQ 0x20(CX), CX
         .          .    10cc90b: MOVQ DX, 0(SP)
         .          .    10cc90f: CALL CX
         .          .    10cc911: MOVQ 0x218(SP), AX                      ;index.go:108
         .          .    10cc919: MOVQ 0(AX), CX
         .          .    10cc91c: MOVQ 0x8(AX), DX
         .          .    10cc920: MOVQ 0x40(CX), CX
         .          .    10cc924: MOVQ DX, 0(SP)
         .          .    10cc928: MOVQ 0x200(SP), DX
         .          .    10cc930: MOVQ DX, 0x8(SP)
         .          .    10cc935: MOVQ 0x68(SP), BX
         .          .    10cc93a: MOVQ BX, 0x10(SP)
         .          .    10cc93f: MOVQ 0x48(SP), SI
         .          .    10cc944: MOVQ SI, 0x18(SP)
         .       20ms    10cc949: CALL CX                                 ;main.(*index).near index.go:108
         .          .    10cc94b: MOVQ 0x218(SP), AX                      ;index.go:109
         .          .    10cc953: MOVQ 0(AX), CX
         .          .    10cc956: MOVQ 0x8(AX), DX
         .          .    10cc95a: MOVQ 0x38(CX), CX
         .          .    10cc95e: MOVQ DX, 0(SP)
         .       40ms    10cc962: CALL CX                                 ;main.(*index).near index.go:109
         .          .    10cc964: MOVQ 0x8(SP), AX                        ;index.go:109
         .          .    10cc969: MOVQ 0x218(SP), CX
         .          .    10cc971: MOVQ 0x40(CX), DX
         .          .    10cc975: TESTQ DX, DX
         .          .    10cc978: JE 0x10ccac3
         .          .    10cc97e: MOVQ DX, BX
         .          .    10cc981: XORL DX, DX
         .          .    10cc983: DIVQ BX
      20ms       20ms    10cc986: MOVQ 0x70(SP), AX                       ;main.(*index).near index.go:109
         .          .    10cc98b: MOVQ 0x60(SP), BX                       ;index.go:109
         .          .    10cc990: CMPQ BX, AX
         .          .    10cc993: JB 0x10cc80a
         .          .    10cc999: JMP 0x10ccabb
         .          .    10cc99e: MOVQ R8, 0(SP)                          ;index.go:127
         .          .    10cc9a2: MOVQ CX, 0x8(SP)
         .          .    10cc9a7: MOVQ BX, 0x10(SP)
         .          .    10cc9ac: CALL runtime.memmove(SB)
         .          .    10cc9b1: JMP 0x10cc8f8
         .          .    10cc9b6: MOVQ 0x248(SP), DX                      ;index.go:113
         .          .    10cc9be: MOVQ 0x240(SP), SI
         .          .    10cc9c6: MOVQ 0x238(SP), DI
         .          .    10cc9ce: XORL AX, AX
         .          .    10cc9d0: XORL R8, R8
         .          .    10cc9d3: JMP 0x10cc9e1
         .          .    10cc9d5: INCQ AX
         .          .    10cc9d8: MOVQ R11, DX                            ;index.go:117
         .          .    10cc9db: MOVQ SI, R8
         .          .    10cc9de: MOVQ R10, SI
         .          .    10cc9e1: CMPQ BX, AX                             ;index.go:113
         .          .    10cc9e4: JGE 0x10cca95
         .          .    10cc9ea: MOVQ 0x78(SP)(AX*8), R9                 ;index.go:114
         .          .    10cc9ef: MOVQ 0x10(CX), R10                      ;index.go:115
         .          .    10cc9f3: MOVQ 0x18(CX), R11
         .          .    10cc9f7: CMPQ R11, R9
         .          .    10cc9fa: JAE 0x10ccab0
         .          .    10cca00: LEAQ 0(R9)(R9*2), R9
         .          .    10cca04: MOVQ 0x8(R10)(R9*8), R11
         .          .    10cca09: MOVQ 0(R10)(R9*8), R9
         .          .    10cca0d: CMPQ SI, R8                             ;index.go:117
         .          .    10cca10: JA 0x10ccaa5
         .          .    10cca16: MOVQ SI, R10
         .          .    10cca19: SUBQ R8, SI
         .          .    10cca1c: CMPQ R11, SI
         .          .    10cca1f: CMOVG R11, SI
         .          .    10cca23: MOVQ DX, R11
         .          .    10cca26: SUBQ R8, DX
         .          .    10cca29: NEGQ DX
         .          .    10cca2c: SHLQ $0x3, R8
         .          .    10cca30: SARQ $0x3f, DX
         .          .    10cca34: ANDQ DX, R8
         .          .    10cca37: LEAQ 0(DI)(R8*1), DX
         .          .    10cca3b: CMPQ R9, DX
         .          .    10cca3e: JE 0x10cc9d5
         .          .    10cca40: MOVQ AX, 0x58(SP)                       ;index.go:113
         .          .    10cca45: MOVQ SI, 0x50(SP)                       ;index.go:117
         .          .    10cca4a: MOVQ DX, 0(SP)
         .          .    10cca4e: MOVQ R9, 0x8(SP)
         .          .    10cca53: SHLQ $0x3, SI
         .          .    10cca57: MOVQ SI, 0x10(SP)
         .      400ms    10cca5c: CALL runtime.memmove(SB)                ;main.(*index).near index.go:117
         .          .    10cca61: MOVQ 0x58(SP), AX                       ;index.go:113
         .          .    10cca66: MOVQ 0x218(SP), CX                      ;index.go:115
         .          .    10cca6e: MOVQ 0x60(SP), BX                       ;index.go:113
         .          .    10cca73: MOVQ 0x50(SP), SI                       ;index.go:117
         .          .    10cca78: MOVQ 0x238(SP), DI
         .          .    10cca80: MOVQ 0x240(SP), R10
         .          .    10cca88: MOVQ 0x248(SP), R11
         .          .    10cca90: JMP 0x10cc9d5
         .          .    10cca95: MOVQ 0x208(SP), BP
         .          .    10cca9d: ADDQ $0x210, SP
         .          .    10ccaa4: RET
         .          .    10ccaa5: MOVQ R8, AX
         .          .    10ccaa8: MOVQ SI, CX
         .          .    10ccaab: CALL runtime.panicSliceB(SB)
         .          .    10ccab0: MOVQ R9, AX                             ;index.go:115
         .          .    10ccab3: MOVQ R11, CX
         .          .    10ccab6: CALL runtime.panicIndexU(SB)
         .          .    10ccabb: MOVQ BX, CX                             ;index.go:109
         .          .    10ccabe: CALL runtime.panicIndex(SB)
         .          .    10ccac3: CALL runtime.panicdivide(SB)
         .          .    10ccac8: MOVQ R8, CX                             ;index.go:125
         .          .    10ccacb: CALL runtime.panicSliceB(SB)
         .          .    10ccad0: MOVQ AX, CX                             ;index.go:124
         .          .    10ccad3: CALL runtime.panicSliceAcap(SB)
         .          .    10ccad8: MOVQ R8, CX                             ;index.go:103
         .          .    10ccadb: CALL runtime.panicSliceAcap(SB)
         .          .    10ccae0: XORL AX, AX                             ;index.go:102
         .          .    10ccae2: MOVQ BX, CX
         .          .    10ccae5: CALL runtime.panicIndex(SB)
         .          .    10ccaea: CALL runtime.panicdivide(SB)
         .          .    10ccaef: MOVL $0x30, DX                          ;index.go:99
         .          .    10ccaf4: CALL runtime.panicSliceAlen(SB)
         .          .    10ccaf9: NOPL
         .          .    10ccafa: CALL runtime.morestack_noctxt(SB)       ;index.go:97
         .          .    10ccaff: JMP main.(*index).near(SB)
         .          .    10ccb04: INT $0x3
         .          .    10ccb05: INT $0x3
         .          .    10ccb06: INT $0x3
         .          .    10ccb07: INT $0x3
         .          .    10ccb08: INT $0x3
         .          .    10ccb09: INT $0x3
         .          .    10ccb0a: INT $0x3
         .          .    10ccb0b: INT $0x3
         .          .    10ccb0c: INT $0x3
         .          .    10ccb0d: INT $0x3
         .          .    10ccb0e: INT $0x3
ROUTINE ======================== main.(*index).nearCount
     100ms      200ms (flat, cum)  3.41% of Total
         .          .    10cc330: MOVQ GS:0x30, CX                        ;index.go:59
         .          .    10cc339: LEAQ 0xfffffe80(SP), AX
         .          .    10cc341: CMPQ 0x10(CX), AX
         .          .    10cc345: JBE 0x10cc6b3
         .          .    10cc34b: SUBQ $0x200, SP
         .          .    10cc352: MOVQ BP, 0x1f8(SP)
         .          .    10cc35a: LEAQ 0x1f8(SP), BP
         .          .    10cc362: LEAQ 0x68(SP), DI                       ;index.go:60
         .          .    10cc367: XORPS X0, X0
         .          .    10cc36a: MOVQ BP, -0x10(SP)
         .          .    10cc36f: LEAQ -0x10(SP), BP
         .          .    10cc374: CALL 0x105866e
         .          .    10cc379: MOVQ 0(BP), BP
         .          .    10cc37d: MOVQ 0x218(SP), AX                      ;index.go:61
         .          .    10cc385: LEAQ 0x1(AX), CX
         .          .    10cc389: CMPQ $0x30, CX
         .          .    10cc38d: JA 0x10cc6a8
         .          .    10cc393: MOVQ CX, 0x50(SP)
         .          .    10cc398: MOVQ 0x208(SP), AX                      ;index.go:62
         .          .    10cc3a0: MOVQ 0(AX), CX
         .          .    10cc3a3: MOVQ 0x8(AX), DX
         .          .    10cc3a7: MOVQ 0x20(CX), CX
         .          .    10cc3ab: MOVQ DX, 0(SP)
         .          .    10cc3af: CALL CX
         .          .    10cc3b1: MOVQ 0x208(SP), AX                      ;index.go:63
         .          .    10cc3b9: MOVQ 0(AX), CX
         .          .    10cc3bc: MOVQ 0x8(AX), DX
         .          .    10cc3c0: MOVQ 0x40(CX), CX
         .          .    10cc3c4: MOVQ DX, 0(SP)
         .          .    10cc3c8: MOVQ 0x210(SP), DX
         .          .    10cc3d0: MOVQ DX, 0x8(SP)
         .          .    10cc3d5: MOVQ 0x218(SP), BX
         .          .    10cc3dd: MOVQ BX, 0x10(SP)
         .          .    10cc3e2: MOVQ 0x220(SP), SI
         .          .    10cc3ea: MOVQ SI, 0x18(SP)
         .       10ms    10cc3ef: CALL CX                                 ;main.(*index).nearCount index.go:63
         .          .    10cc3f1: MOVQ 0x208(SP), AX                      ;index.go:64
         .          .    10cc3f9: MOVQ 0(AX), CX
         .          .    10cc3fc: MOVQ 0x8(AX), DX
         .          .    10cc400: MOVQ 0x38(CX), CX
         .          .    10cc404: MOVQ DX, 0(SP)
         .          .    10cc408: CALL CX
         .          .    10cc40a: MOVQ 0x8(SP), AX
         .          .    10cc40f: MOVQ 0x208(SP), CX
         .          .    10cc417: MOVQ 0x40(CX), DX
         .          .    10cc41b: TESTQ DX, DX
         .          .    10cc41e: JE 0x10cc6a3
         .          .    10cc424: MOVQ DX, BX
         .          .    10cc427: XORL DX, DX
         .          .    10cc429: DIVQ BX
      10ms       10ms    10cc42c: MOVQ 0x50(SP), BX                       ;main.(*index).nearCount index.go:64
         .          .    10cc431: TESTQ BX, BX                            ;index.go:64
         .          .    10cc434: JBE 0x10cc699
         .          .    10cc43a: MOVQ DX, 0x68(SP)
         .          .    10cc43f: MOVQ 0x38(CX), DX                       ;index.go:65
         .          .    10cc443: MOVQ 0x28(CX), SI
         .          .    10cc447: MOVQ 0x218(SP), DI
         .          .    10cc44f: LEAQ -0x1(DI), R8
         .          .    10cc453: CMPQ DX, R8
         .          .    10cc456: JA 0x10cc691
         .          .    10cc45c: MOVQ R8, 0x58(SP)
         .          .    10cc461: MOVQ DX, 0x48(SP)
         .          .    10cc466: MOVQ SI, 0x1f0(SP)
         .          .    10cc46e: MOVQ 0x210(SP), R9                      ;index.go:66
         .          .    10cc476: XORL AX, AX
         .          .    10cc478: JMP 0x10cc4ba
         .          .    10cc47a: MOVQ AX, R10                            ;index.go:71
         .          .    10cc47d: SHLQ $0x3, AX
         .          .    10cc481: MOVQ DX, 0x68(SP)(AX*1)
         .          .    10cc486: MOVQ 0x218(SP), R11                     ;index.go:66
         .          .    10cc48e: MOVQ 0x1f0(SP), R12
         .          .    10cc496: MOVQ 0x48(SP), R13
         .          .    10cc49b: MOVQ 0x58(SP), R14
         .          .    10cc4a0: MOVQ 0x210(SP), R15
         .          .    10cc4a8: MOVQ R13, DX                            ;index.go:124
         .          .    10cc4ab: MOVQ R12, SI                            ;index.go:125
         .          .    10cc4ae: MOVQ R11, DI                            ;index.go:66
         .          .    10cc4b1: MOVQ R14, R8                            ;index.go:125
         .          .    10cc4b4: MOVQ R15, R9                            ;index.go:126
         .          .    10cc4b7: MOVQ R10, AX                            ;index.go:66
         .          .    10cc4ba: CMPQ DI, AX
         .          .    10cc4bd: JGE 0x10cc623
         .       10ms    10cc4c3: NOPL                                    ;main.(*index).nearCount index.go:67
         .          .    10cc4c4: CMPQ DX, AX                             ;index.go:124
         .          .    10cc4c7: JA 0x10cc689
         .          .    10cc4cd: CMPQ R8, AX                             ;index.go:125
         .          .    10cc4d0: JA 0x10cc681
         .          .    10cc4d6: MOVQ AX, 0x40(SP)                       ;index.go:66
         .          .    10cc4db: SUBQ AX, R8                             ;index.go:125
         .          .    10cc4de: MOVQ R8, 0x38(SP)
         .          .    10cc4e3: SUBQ AX, DX
         .          .    10cc4e6: NEGQ DX
      10ms       10ms    10cc4e9: SARQ $0x3f, DX                          ;main.skipOneCopy index.go:125
         .          .    10cc4ed: ANDQ AX, DX                             ;index.go:125
         .          .    10cc4f0: ADDQ SI, DX
         .          .    10cc4f3: MOVQ DX, 0x1e8(SP)
         .          .    10cc4fb: CMPQ R9, SI                             ;index.go:126
         .          .    10cc4fe: JE 0x10cc513
         .          .    10cc500: MOVQ SI, 0(SP)
         .          .    10cc504: MOVQ R9, 0x8(SP)
         .          .    10cc509: MOVQ AX, 0x10(SP)
         .          .    10cc50e: CALL runtime.memmove(SB)
         .          .    10cc513: MOVQ 0x40(SP), AX                       ;index.go:127
         .          .    10cc518: INCQ AX
         .          .    10cc51b: MOVQ AX, 0x60(SP)
         .          .    10cc520: MOVQ 0x218(SP), CX
         .          .    10cc528: SUBQ AX, CX
         .          .    10cc52b: MOVQ 0x38(SP), BX
         .          .    10cc530: CMPQ CX, BX
         .          .    10cc533: CMOVG CX, BX
         .          .    10cc537: MOVQ 0x220(SP), CX
         .          .    10cc53f: SUBQ AX, CX
         .          .    10cc542: NEGQ CX
         .          .    10cc545: SARQ $0x3f, CX
         .          .    10cc549: ANDQ AX, CX
         .          .    10cc54c: MOVQ 0x210(SP), DI
         .          .    10cc554: ADDQ DI, CX
         .          .    10cc557: MOVQ 0x1e8(SP), R8
         .          .    10cc55f: CMPQ R8, CX
         .          .    10cc562: JNE 0x10cc60b
         .          .    10cc568: MOVQ 0x208(SP), AX                      ;index.go:69
         .          .    10cc570: MOVQ 0(AX), CX
         .          .    10cc573: MOVQ 0x8(AX), DX
         .          .    10cc577: MOVQ 0x20(CX), CX
         .          .    10cc57b: MOVQ DX, 0(SP)
         .       10ms    10cc57f: CALL CX                                 ;main.(*index).nearCount index.go:69
         .          .    10cc581: MOVQ 0x208(SP), AX                      ;index.go:70
         .          .    10cc589: MOVQ 0(AX), CX
         .          .    10cc58c: MOVQ 0x8(AX), DX
         .          .    10cc590: MOVQ 0x40(CX), CX
         .          .    10cc594: MOVQ DX, 0(SP)
         .          .    10cc598: MOVQ 0x1f0(SP), DX
         .          .    10cc5a0: MOVQ DX, 0x8(SP)
         .          .    10cc5a5: MOVQ 0x58(SP), BX
         .          .    10cc5aa: MOVQ BX, 0x10(SP)
         .          .    10cc5af: MOVQ 0x48(SP), SI
         .          .    10cc5b4: MOVQ SI, 0x18(SP)
         .          .    10cc5b9: CALL CX
         .          .    10cc5bb: MOVQ 0x208(SP), AX                      ;index.go:71
         .          .    10cc5c3: MOVQ 0(AX), CX
         .          .    10cc5c6: MOVQ 0x8(AX), DX
         .          .    10cc5ca: MOVQ 0x38(CX), CX
         .          .    10cc5ce: MOVQ DX, 0(SP)
         .       70ms    10cc5d2: CALL CX                                 ;main.(*index).nearCount index.go:71
         .          .    10cc5d4: MOVQ 0x8(SP), AX                        ;index.go:71
         .          .    10cc5d9: MOVQ 0x208(SP), CX
         .          .    10cc5e1: MOVQ 0x40(CX), DX
         .          .    10cc5e5: TESTQ DX, DX
         .          .    10cc5e8: JE 0x10cc67c
         .          .    10cc5ee: MOVQ DX, BX
         .          .    10cc5f1: XORL DX, DX
         .          .    10cc5f3: DIVQ BX
      10ms       10ms    10cc5f6: MOVQ 0x60(SP), AX                       ;main.(*index).nearCount index.go:71
         .          .    10cc5fb: MOVQ 0x50(SP), BX                       ;index.go:71
         .          .    10cc600: CMPQ BX, AX
         .          .    10cc603: JB 0x10cc47a
         .          .    10cc609: JMP 0x10cc674
         .          .    10cc60b: MOVQ R8, 0(SP)                          ;index.go:127
         .          .    10cc60f: MOVQ CX, 0x8(SP)
         .          .    10cc614: MOVQ BX, 0x10(SP)
         .          .    10cc619: CALL runtime.memmove(SB)
         .          .    10cc61e: JMP 0x10cc568
         .          .    10cc623: XORL AX, AX
         .          .    10cc625: XORL DX, DX
         .          .    10cc627: JMP 0x10cc638                           ;index.go:75
         .          .    10cc629: INCQ AX
         .          .    10cc62c: LEAQ 0(R8)(R8*2), SI                    ;index.go:76
         .          .    10cc630: MOVQ 0x8(DI)(SI*8), SI
      50ms       50ms    10cc635: ADDQ SI, DX                             ;main.(*index).nearCount index.go:77
      10ms       10ms    10cc638: CMPQ BX, AX                             ;main.(*index).nearCount index.go:75
         .          .    10cc63b: JGE 0x10cc651                           ;index.go:75
         .          .    10cc63d: MOVQ 0x18(CX), SI                       ;index.go:76
         .          .    10cc641: MOVQ 0x10(CX), DI
         .          .    10cc645: MOVQ 0x68(SP)(AX*8), R8
      10ms       10ms    10cc64a: CMPQ SI, R8                             ;main.(*index).nearCount index.go:76
         .          .    10cc64d: JB 0x10cc629                            ;index.go:76
         .          .    10cc64f: JMP 0x10cc669
         .          .    10cc651: MOVQ DX, 0x228(SP)                      ;index.go:80
         .          .    10cc659: MOVQ 0x1f8(SP), BP
         .          .    10cc661: ADDQ $0x200, SP
         .          .    10cc668: RET
         .          .    10cc669: MOVQ R8, AX                             ;index.go:76
         .          .    10cc66c: MOVQ SI, CX
         .          .    10cc66f: CALL runtime.panicIndexU(SB)
         .          .    10cc674: MOVQ BX, CX                             ;index.go:71
         .          .    10cc677: CALL runtime.panicIndex(SB)
         .          .    10cc67c: CALL runtime.panicdivide(SB)
         .          .    10cc681: MOVQ R8, CX                             ;index.go:125
         .          .    10cc684: CALL runtime.panicSliceB(SB)
         .          .    10cc689: MOVQ AX, CX                             ;index.go:124
         .          .    10cc68c: CALL runtime.panicSliceAcap(SB)
         .          .    10cc691: MOVQ R8, CX                             ;index.go:65
         .          .    10cc694: CALL runtime.panicSliceAcap(SB)
         .          .    10cc699: XORL AX, AX                             ;index.go:64
         .          .    10cc69b: MOVQ BX, CX
         .          .    10cc69e: CALL runtime.panicIndex(SB)
         .          .    10cc6a3: CALL runtime.panicdivide(SB)
         .          .    10cc6a8: MOVL $0x30, DX                          ;index.go:61
         .          .    10cc6ad: CALL runtime.panicSliceAlen(SB)
         .          .    10cc6b2: NOPL
         .          .    10cc6b3: CALL runtime.morestack_noctxt(SB)       ;index.go:59
         .          .    10cc6b8: JMP main.(*index).nearCount(SB)
         .          .    10cc6bd: INT $0x3
         .          .    10cc6be: INT $0x3
ROUTINE ======================== main.LoadDictionary
      60ms      2.87s (flat, cum) 48.98% of Total
         .          .    10c9ce0: MOVQ GS:0x30, CX                        ;graph.go:39
         .          .    10c9ce9: LEAQ 0xfffffec0(SP), AX
         .          .    10c9cf1: CMPQ 0x10(CX), AX
         .          .    10c9cf5: JBE 0x10ca44f
         .          .    10c9cfb: SUBQ $0x1c0, SP
         .          .    10c9d02: MOVQ BP, 0x1b8(SP)
         .          .    10c9d0a: LEAQ 0x1b8(SP), BP
         .          .    10c9d12: MOVQ $0x0, 0x1f0(SP)
         .          .    10c9d1e: LEAQ go.string.*+6061(SB), AX           ;graph.go:40
         .          .    10c9d25: MOVQ AX, 0(SP)
         .          .    10c9d29: MOVQ $0xe, 0x8(SP)
         .          .    10c9d32: CALL main.newTimer(SB)
         .          .    10c9d37: MOVQ 0x10(SP), AX
         .          .    10c9d3c: MOVL $0x0, 0x68(SP)
         .          .    10c9d44: MOVQ AX, 0x80(SP)
         .          .    10c9d4c: LEAQ 0x68(SP), AX
         .          .    10c9d51: MOVQ AX, 0(SP)
         .          .    10c9d55: CALL runtime.deferprocStack(SB)
         .          .    10c9d5a: TESTL AX, AX
         .          .    10c9d5c: JNE 0x10ca430
         .          .    10c9d62: NOPL                                    ;graph.go:41
         .          .    10c9d63: MOVQ 0x1c8(SP), AX                      ;file.go:280
         .          .    10c9d6b: MOVQ AX, 0(SP)
         .          .    10c9d6f: MOVQ 0x1d0(SP), AX
         .          .    10c9d77: MOVQ AX, 0x8(SP)
         .          .    10c9d7c: MOVQ $0x0, 0x10(SP)
         .          .    10c9d85: MOVL $0x0, 0x18(SP)
         .          .    10c9d8d: CALL os.OpenFile(SB)
         .          .    10c9d92: MOVQ 0x20(SP), AX
         .          .    10c9d97: MOVQ AX, 0x118(SP)
         .          .    10c9d9f: MOVQ 0x30(SP), CX
         .          .    10c9da4: MOVQ 0x28(SP), DX
         .          .    10c9da9: TESTQ DX, DX                            ;graph.go:42
         .          .    10c9dac: JE 0x10c9df2
         .          .    10c9dae: JE 0x10c9db4                            ;graph.go:43
         .          .    10c9db0: MOVQ 0x8(DX), DX
         .          .    10c9db4: XORPS X0, X0
         .          .    10c9db7: MOVUPS X0, 0x128(SP)
         .          .    10c9dbf: MOVQ DX, 0x128(SP)
         .          .    10c9dc7: MOVQ CX, 0x130(SP)
         .          .    10c9dcf: LEAQ 0x128(SP), AX
         .          .    10c9dd7: MOVQ AX, 0(SP)
         .          .    10c9ddb: MOVQ $0x1, 0x8(SP)
         .          .    10c9de4: MOVQ $0x1, 0x10(SP)
         .          .    10c9ded: CALL log.Fatal(SB)
         .          .    10c9df2: MOVL $0x18, 0xa0(SP)                    ;graph.go:45
         .          .    10c9dfd: LEAQ go.func.*+289(SB), AX
         .          .    10c9e04: MOVQ AX, 0xb8(SP)
         .          .    10c9e0c: MOVQ 0x118(SP), AX
         .          .    10c9e14: MOVQ AX, 0xd0(SP)
         .          .    10c9e1c: LEAQ 0xa0(SP), CX
         .          .    10c9e24: MOVQ CX, 0(SP)
         .          .    10c9e28: CALL runtime.deferprocStack(SB)
         .          .    10c9e2d: TESTL AX, AX
         .          .    10c9e2f: JNE 0x10ca41a
         .          .    10c9e35: LEAQ type.*+157408(SB), AX              ;graph.go:47
         .          .    10c9e3c: MOVQ AX, 0(SP)
         .          .    10c9e40: CALL runtime.newobject(SB)
         .          .    10c9e45: MOVQ 0x8(SP), AX
         .          .    10c9e4a: MOVQ AX, 0x120(SP)
         .          .    10c9e52: LEAQ type.*+141536(SB), CX              ;graph.go:48
         .          .    10c9e59: MOVQ CX, 0(SP)
         .          .    10c9e5d: XORPS X0, X0
         .          .    10c9e60: MOVUPS X0, 0x8(SP)
         .          .    10c9e65: CALL runtime.makeslice(SB)
         .          .    10c9e6a: MOVQ 0x18(SP), AX
         .          .    10c9e6f: CMPL $0x0, runtime.writeBarrier(SB)     ;graph.go:47
         .          .    10c9e76: JNE 0x10ca3d5
         .          .    10c9e7c: XORPS X0, X0
         .          .    10c9e7f: MOVQ 0x120(SP), CX
         .          .    10c9e87: MOVUPS X0, 0(CX)
         .          .    10c9e8a: MOVUPS X0, 0x10(CX)
         .          .    10c9e8e: MOVUPS X0, 0x20(CX)
         .          .    10c9e92: MOVQ AX, 0(CX)
         .          .    10c9e95: NOPL                                    ;graph.go:53
         .          .    10c9e96: LEAQ 0x138(SP), DI                      ;scan.go:87
         .          .    10c9e9e: MOVQ BP, -0x10(SP)
         .          .    10c9ea3: LEAQ -0x10(SP), BP
         .          .    10c9ea8: CALL 0x10586ba
         .          .    10c9ead: MOVQ 0(BP), BP
         .          .    10c9eb1: LEAQ 0x138(SP), DI
         .          .    10c9eb9: MOVQ BP, -0x10(SP)
         .          .    10c9ebe: LEAQ -0x10(SP), BP
         .          .    10c9ec3: CALL 0x10586ba
         .          .    10c9ec8: MOVQ 0(BP), BP
         .          .    10c9ecc: LEAQ go.itab.*os.File,io.Reader(SB), AX
         .          .    10c9ed3: MOVQ AX, 0x138(SP)
         .          .    10c9edb: MOVQ 0x118(SP), AX
         .          .    10c9ee3: MOVQ AX, 0x140(SP)
         .          .    10c9eeb: LEAQ go.func.*+1(SB), AX
         .          .    10c9ef2: MOVQ AX, 0x148(SP)
         .          .    10c9efa: MOVQ $0x10000, 0x150(SP)
         .          .    10c9f06: XORL AX, AX
         .          .    10c9f08: JMP 0x10c9f0d                           ;graph.go:54
         .          .    10c9f0a: MOVQ SI, AX                             ;graph.go:74
         .          .    10c9f0d: MOVQ AX, 0x48(SP)
         .          .    10c9f12: LEAQ 0x138(SP), CX                      ;graph.go:54
         .          .    10c9f1a: MOVQ CX, 0(SP)
         .       40ms    10c9f1e: CALL bufio.(*Scanner).Scan(SB)          ;main.LoadDictionary graph.go:54
         .          .    10c9f23: CMPB $0x0, 0x8(SP)                      ;graph.go:54
         .          .    10c9f28: JE 0x10ca06b
         .          .    10c9f2e: NOPL                                    ;graph.go:55
         .          .    10c9f2f: MOVQ 0x160(SP), AX                      ;scan.go:106
         .          .    10c9f37: MOVQ AX, 0x40(SP)
         .          .    10c9f3c: MOVQ 0x158(SP), CX
         .          .    10c9f44: MOVQ CX, 0x100(SP)
         .          .    10c9f4c: LEAQ type.*+88864(SB), DX               ;graph.go:56
         .          .    10c9f53: MOVQ DX, 0(SP)
         .          .    10c9f57: MOVQ AX, 0x8(SP)
         .          .    10c9f5c: MOVQ AX, 0x10(SP)
         .          .    10c9f61: CALL runtime.makeslice(SB)
         .          .    10c9f66: MOVQ 0x18(SP), AX
         .          .    10c9f6b: MOVQ AX, 0x110(SP)
         .          .    10c9f73: MOVQ 0x100(SP), CX                      ;graph.go:57
         .          .    10c9f7b: CMPQ CX, AX
         .          .    10c9f7e: JE 0x10c9f98
         .          .    10c9f80: MOVQ AX, 0(SP)
         .          .    10c9f84: MOVQ CX, 0x8(SP)
         .          .    10c9f89: MOVQ 0x40(SP), CX
         .          .    10c9f8e: MOVQ CX, 0x10(SP)
         .          .    10c9f93: CALL runtime.memmove(SB)
         .          .    10c9f98: MOVQ 0x120(SP), CX                      ;graph.go:58
         .          .    10c9fa0: MOVQ 0x10(CX), DX
         .          .    10c9fa4: MOVQ 0x8(CX), BX
         .          .    10c9fa8: LEAQ 0x1(BX), SI
         .          .    10c9fac: MOVQ 0(CX), R8
         .          .    10c9faf: CMPQ DX, SI
         .          .    10c9fb2: JA 0x10ca00b
         .          .    10c9fb4: LEAQ 0x1(BX), DX
         .          .    10c9fb8: MOVQ DX, 0x8(CX)
         .          .    10c9fbc: LEAQ 0(BX)(BX*2), DX
         .          .    10c9fc0: MOVQ 0x40(SP), BX
      40ms       40ms    10c9fc5: MOVQ BX, 0x8(R8)(DX*8)                  ;main.LoadDictionary graph.go:58
         .          .    10c9fca: MOVQ BX, 0x10(R8)(DX*8)                 ;graph.go:58
         .          .    10c9fcf: MOVQ 0x48(SP), SI                       ;graph.go:59
         .          .    10c9fd4: CMPQ SI, BX
         .          .    10c9fd7: CMOVG BX, SI                            ;graph.go:74
         .          .    10c9fdb: LEAQ 0(R8)(DX*8), DI                    ;graph.go:58
         .          .    10c9fdf: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10c9fe6: JNE 0x10c9ff9
         .          .    10c9fe8: MOVQ 0x110(SP), AX
         .          .    10c9ff0: MOVQ AX, 0(R8)(DX*8)
         .          .    10c9ff4: JMP 0x10c9f0a
         .          .    10c9ff9: MOVQ 0x110(SP), AX
         .          .    10ca001: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca006: JMP 0x10c9f0a
         .          .    10ca00b: LEAQ type.*+141536(SB), AX
         .          .    10ca012: MOVQ AX, 0(SP)
         .          .    10ca016: MOVQ R8, 0x8(SP)
         .          .    10ca01b: MOVQ BX, 0x10(SP)
         .          .    10ca020: MOVQ DX, 0x18(SP)
         .          .    10ca025: MOVQ SI, 0x20(SP)
         .       80ms    10ca02a: CALL runtime.growslice(SB)              ;main.LoadDictionary graph.go:58
         .          .    10ca02f: MOVQ 0x28(SP), AX                       ;graph.go:58
         .          .    10ca034: MOVQ 0x30(SP), CX
         .          .    10ca039: MOVQ 0x38(SP), DX
         .          .    10ca03e: MOVQ 0x120(SP), DI
         .          .    10ca046: MOVQ DX, 0x10(DI)
         .          .    10ca04a: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca051: JNE 0x10ca064
         .          .    10ca053: MOVQ AX, 0(DI)
         .          .    10ca056: MOVQ CX, BX
         .          .    10ca059: MOVQ AX, R8
         .          .    10ca05c: MOVQ DI, CX
         .          .    10ca05f: JMP 0x10c9fb4
         .          .    10ca064: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca069: JMP 0x10ca056
         .          .    10ca06b: MOVQ 0x1e8(SP), AX                      ;graph.go:64
         .          .    10ca073: TESTQ AX, AX
         .          .    10ca076: JNE 0x10ca377
         .          .    10ca07c: MOVQ 0x120(SP), AX                      ;graph.go:68
         .          .    10ca084: MOVQ 0x8(AX), CX
         .          .    10ca088: MOVQ CX, 0x60(SP)
         .          .    10ca08d: LEAQ type.*+77216(SB), DX
         .          .    10ca094: MOVQ DX, 0(SP)
         .          .    10ca098: MOVQ CX, 0x8(SP)
         .          .    10ca09d: MOVQ CX, 0x10(SP)
         .          .    10ca0a2: CALL runtime.makeslice(SB)
         .          .    10ca0a7: MOVQ 0x18(SP), AX
         .          .    10ca0ac: MOVQ 0x60(SP), CX
         .          .    10ca0b1: MOVQ 0x120(SP), DX
         .          .    10ca0b9: MOVQ CX, 0x20(DX)
         .          .    10ca0bd: MOVQ CX, 0x28(DX)
         .          .    10ca0c1: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca0c8: JNE 0x10ca369
         .          .    10ca0ce: MOVQ AX, 0x18(DX)
         .          .    10ca0d2: XORL AX, AX
         .          .    10ca0d4: JMP 0x10ca0e5                           ;graph.go:69
         .          .    10ca0d6: LEAQ 0x1(SI), BX
         .          .    10ca0da: MOVQ 0x60(SP), CX
      10ms       10ms    10ca0df: MOVQ AX, DX                             ;main.LoadDictionary graph.go:70
         .          .    10ca0e2: MOVQ BX, AX                             ;graph.go:69
         .          .    10ca0e5: CMPQ CX, AX
         .          .    10ca0e8: JGE 0x10ca166
         .          .    10ca0ea: MOVQ AX, 0x50(SP)
         .          .    10ca0ef: LEAQ type.*+85856(SB), AX               ;graph.go:70
         .          .    10ca0f6: MOVQ AX, 0(SP)
         .          .    10ca0fa: XORPS X0, X0
         .          .    10ca0fd: MOVUPS X0, 0x8(SP)
         .          .    10ca102: CALL runtime.makeslice(SB)
         .          .    10ca107: MOVQ 0x120(SP), AX
         .          .    10ca10f: MOVQ 0x20(AX), CX
         .          .    10ca113: MOVQ 0x18(AX), DX
         .          .    10ca117: MOVQ 0x18(SP), BX
         .          .    10ca11c: MOVQ 0x50(SP), SI
         .          .    10ca121: CMPQ CX, SI
         .          .    10ca124: JAE 0x10ca446
         .          .    10ca12a: LEAQ 0(SI)(SI*2), CX
         .          .    10ca12e: MOVQ $0x0, 0x8(DX)(CX*8)
         .          .    10ca137: MOVQ $0x0, 0x10(DX)(CX*8)
         .          .    10ca140: LEAQ 0(DX)(CX*8), DI
         .          .    10ca144: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca14b: JNE 0x10ca153
         .          .    10ca14d: MOVQ BX, 0(DX)(CX*8)
         .          .    10ca151: JMP 0x10ca0d6
         .          .    10ca153: MOVQ AX, CX                             ;graph.go:47
         .          .    10ca156: MOVQ BX, AX                             ;graph.go:70
         .          .    10ca159: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca15e: MOVQ CX, AX
         .          .    10ca161: JMP 0x10ca0d6
         .          .    10ca166: LEAQ go.string.*+3453(SB), AX           ;graph.go:73
         .          .    10ca16d: MOVQ AX, 0(SP)
         .          .    10ca171: MOVQ $0xa, 0x8(SP)
         .          .    10ca17a: CALL main.newTimer(SB)
         .          .    10ca17f: MOVQ 0x10(SP), AX
         .          .    10ca184: MOVQ AX, 0xe8(SP)
         .          .    10ca18c: MOVQ $0x800000, 0(SP)                   ;graph.go:74
         .          .    10ca194: MOVQ 0x48(SP), CX
         .          .    10ca199: MOVQ CX, 0x8(SP)
         .      120ms    10ca19e: CALL main.newIndex(SB)                  ;main.LoadDictionary graph.go:74
         .          .    10ca1a3: MOVQ 0x10(SP), AX                       ;graph.go:74
         .          .    10ca1a8: MOVQ AX, 0xf8(SP)
         .          .    10ca1b0: MOVQ 0x120(SP), CX                      ;graph.go:75
         .          .    10ca1b8: MOVQ 0x8(CX), DX
         .          .    10ca1bc: MOVQ 0(CX), BX
         .          .    10ca1bf: TESTQ DX, DX
         .          .    10ca1c2: JLE 0x10ca22b
         .          .    10ca1c4: MOVQ DX, 0x60(SP)
         .          .    10ca1c9: XORL SI, SI
         .          .    10ca1cb: JMP 0x10ca1e4
         .          .    10ca1cd: MOVQ 0x108(SP), DX
         .          .    10ca1d5: LEAQ 0x18(DX), BX
         .          .    10ca1d9: MOVQ AX, SI
         .          .    10ca1dc: MOVQ 0xf8(SP), AX                       ;graph.go:76
         .          .    10ca1e4: MOVQ BX, 0x108(SP)                      ;graph.go:75
         .          .    10ca1ec: MOVQ SI, 0x58(SP)
         .          .    10ca1f1: MOVQ 0x8(BX), CX
         .          .    10ca1f5: MOVQ 0(BX), DX
         .          .    10ca1f8: MOVQ 0x10(BX), DI
      10ms       10ms    10ca1fc: MOVQ AX, 0(SP)                          ;main.LoadDictionary graph.go:76
         .          .    10ca200: MOVQ SI, 0x8(SP)                        ;graph.go:76
         .          .    10ca205: MOVQ DX, 0x10(SP)
         .          .    10ca20a: MOVQ CX, 0x18(SP)
         .          .    10ca20f: MOVQ DI, 0x20(SP)
         .      700ms    10ca214: CALL main.(*index).add(SB)              ;main.LoadDictionary graph.go:76
         .          .    10ca219: MOVQ 0x58(SP), AX                       ;graph.go:75
         .          .    10ca21e: INCQ AX
         .          .    10ca221: MOVQ 0x60(SP), CX
         .          .    10ca226: CMPQ CX, AX
         .          .    10ca229: JL 0x10ca1cd
         .          .    10ca22b: MOVQ 0xe8(SP), DX                       ;graph.go:78
         .          .    10ca233: MOVQ 0(DX), AX
         .          .    10ca236: CALL AX
         .          .    10ca238: MOVZX 0x1d8(SP), AX                     ;graph.go:39
         .          .    10ca240: TESTL AL, AL
         .          .    10ca242: JNE 0x10ca353                           ;graph.go:80
         .          .    10ca248: LEAQ go.string.*+4782(SB), AX           ;graph.go:87
         .          .    10ca24f: MOVQ AX, 0(SP)
         .          .    10ca253: MOVQ $0xc, 0x8(SP)
         .          .    10ca25c: CALL main.newTimer(SB)
         .          .    10ca261: MOVQ 0x10(SP), AX
         .          .    10ca266: MOVQ AX, 0xf0(SP)
         .          .    10ca26e: MOVQ 0x120(SP), CX                      ;graph.go:88
         .          .    10ca276: MOVQ CX, 0(SP)
         .          .    10ca27a: MOVQ 0xf8(SP), DX
         .          .    10ca282: MOVQ DX, 0x8(SP)
         .      1.87s    10ca287: CALL main.(*Graph).buildAdjList(SB)     ;main.LoadDictionary graph.go:88
         .          .    10ca28c: MOVQ 0xf0(SP), DX                       ;graph.go:89
         .          .    10ca294: MOVQ 0(DX), AX
         .          .    10ca297: CALL AX
         .          .    10ca299: MOVQ 0x1e8(SP), AX                      ;graph.go:64
         .          .    10ca2a1: TESTQ AX, AX
         .          .    10ca2a4: JNE 0x10ca2eb                           ;graph.go:91
         .          .    10ca2a6: MOVZX 0x1d8(SP), AX                     ;graph.go:39
         .          .    10ca2ae: TESTL AL, AL
         .          .    10ca2b0: JNE 0x10ca2d8                           ;graph.go:95
         .          .    10ca2b2: MOVQ 0x120(SP), AX                      ;graph.go:99
         .          .    10ca2ba: MOVQ AX, 0x1f0(SP)
         .          .    10ca2c2: NOPL
         .          .    10ca2c3: CALL runtime.deferreturn(SB)
         .          .    10ca2c8: MOVQ 0x1b8(SP), BP
         .          .    10ca2d0: ADDQ $0x1c0, SP
         .          .    10ca2d7: RET
         .          .    10ca2d8: MOVQ 0x120(SP), AX                      ;graph.go:96
         .          .    10ca2e0: MOVQ AX, 0(SP)
         .          .    10ca2e4: CALL main.adjListStats(SB)
         .          .    10ca2e9: JMP 0x10ca2b2
         .          .    10ca2eb: MOVQ $0x0, 0(SP)                        ;graph.go:92
         .          .    10ca2f3: MOVQ 0x1e0(SP), CX
         .          .    10ca2fb: MOVQ CX, 0x8(SP)
         .          .    10ca300: MOVQ AX, 0x10(SP)
         .          .    10ca305: LEAQ go.string.*+2067(SB), AX
         .          .    10ca30c: MOVQ AX, 0x18(SP)
         .          .    10ca311: MOVQ $0x8, 0x20(SP)
         .          .    10ca31a: CALL runtime.concatstring2(SB)
         .          .    10ca31f: MOVQ 0x28(SP), AX
         .          .    10ca324: MOVQ 0x30(SP), CX
         .          .    10ca329: MOVQ 0x120(SP), DX
         .          .    10ca331: MOVQ DX, 0(SP)
         .          .    10ca335: MOVQ AX, 0x8(SP)
         .          .    10ca33a: MOVQ CX, 0x10(SP)
         .          .    10ca33f: CALL main.(*Graph).dumpAdjList(SB)
         .          .    10ca344: MOVZX 0x1d8(SP), AX                     ;graph.go:39
         .          .    10ca34c: TESTL AL, AL
         .          .    10ca34e: JMP 0x10ca2b0                           ;graph.go:92
         .          .    10ca353: MOVQ 0xf8(SP), AX                       ;graph.go:81
         .          .    10ca35b: MOVQ AX, 0(SP)
         .          .    10ca35f: CALL main.(*index).printStats(SB)
         .          .    10ca364: JMP 0x10ca248                           ;graph.go:87
         .          .    10ca369: LEAQ 0x18(DX), DI                       ;graph.go:68
         .          .    10ca36d: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca372: JMP 0x10ca0d2
         .          .    10ca377: MOVQ $0x0, 0(SP)                        ;graph.go:65
         .          .    10ca37f: MOVQ 0x1e0(SP), CX
         .          .    10ca387: MOVQ CX, 0x8(SP)
         .          .    10ca38c: MOVQ AX, 0x10(SP)
         .          .    10ca391: LEAQ go.string.*+5422(SB), DX
         .          .    10ca398: MOVQ DX, 0x18(SP)
         .          .    10ca39d: MOVQ $0xd, 0x20(SP)
         .          .    10ca3a6: CALL runtime.concatstring2(SB)
         .          .    10ca3ab: MOVQ 0x30(SP), AX
         .          .    10ca3b0: MOVQ 0x28(SP), CX
         .          .    10ca3b5: MOVQ 0x120(SP), DX
         .          .    10ca3bd: MOVQ DX, 0(SP)
         .          .    10ca3c1: MOVQ CX, 0x8(SP)
         .          .    10ca3c6: MOVQ AX, 0x10(SP)
         .          .    10ca3cb: CALL main.(*Graph).dumpVertices(SB)
         .          .    10ca3d0: JMP 0x10ca07c
         .          .    10ca3d5: MOVQ AX, 0x110(SP)                      ;graph.go:48
         .          .    10ca3dd: LEAQ type.*+157408(SB), AX              ;graph.go:47
         .          .    10ca3e4: MOVQ AX, 0(SP)
         .          .    10ca3e8: MOVQ 0x120(SP), AX
         .          .    10ca3f0: MOVQ AX, 0x8(SP)
         .          .    10ca3f5: CALL runtime.typedmemclr(SB)
         .          .    10ca3fa: MOVQ 0x120(SP), DI
         .          .    10ca402: MOVQ 0x110(SP), AX
         .          .    10ca40a: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca40f: MOVQ DI, CX                             ;graph.go:68
         .          .    10ca412: XORPS X0, X0                            ;graph.go:48
         .          .    10ca415: JMP 0x10c9e95                           ;graph.go:47
         .          .    10ca41a: NOPL                                    ;graph.go:45
         .          .    10ca41b: CALL runtime.deferreturn(SB)
         .          .    10ca420: MOVQ 0x1b8(SP), BP
         .          .    10ca428: ADDQ $0x1c0, SP
         .          .    10ca42f: RET
         .          .    10ca430: NOPL                                    ;graph.go:40
         .          .    10ca431: CALL runtime.deferreturn(SB)
         .          .    10ca436: MOVQ 0x1b8(SP), BP
         .          .    10ca43e: ADDQ $0x1c0, SP
         .          .    10ca445: RET
         .          .    10ca446: MOVQ SI, AX                             ;graph.go:70
         .          .    10ca449: CALL runtime.panicIndex(SB)
         .          .    10ca44e: NOPL
         .          .    10ca44f: CALL runtime.morestack_noctxt(SB)       ;graph.go:39
         .          .    10ca454: JMP main.LoadDictionary(SB)
         .          .    10ca459: INT $0x3
         .          .    10ca45a: INT $0x3
         .          .    10ca45b: INT $0x3
         .          .    10ca45c: INT $0x3
         .          .    10ca45d: INT $0x3
         .          .    10ca45e: INT $0x3
ROUTINE ======================== main.distance
     140ms      140ms (flat, cum)  2.39% of Total
         .          .    10cb0c0: SUBQ $0x18, SP                          ;graph.go:284
         .          .    10cb0c4: MOVQ BP, 0x10(SP)
         .          .    10cb0c9: LEAQ 0x10(SP), BP
         .          .    10cb0ce: MOVQ 0x28(SP), CX                       ;graph.go:290
         .          .    10cb0d3: MOVQ 0x40(SP), DX
         .          .    10cb0d8: CMPQ DX, CX
      20ms       20ms    10cb0db: MOVQ CX, BX                             ;main.distance graph.go:293
         .          .    10cb0de: CMOVG DX, CX                            ;graph.go:293
         .          .    10cb0e2: MOVQ BX, SI                             ;graph.go:285
         .          .    10cb0e5: SUBQ DX, BX
         .          .    10cb0e8: MOVQ DX, DI                             ;graph.go:287
         .          .    10cb0eb: SUBQ SI, DX
         .          .    10cb0ee: TESTQ BX, BX                            ;graph.go:286
         .          .    10cb0f1: CMOVL DX, BX                            ;graph.go:295
      10ms       10ms    10cb0f5: MOVQ 0x38(SP), DX                       ;main.distance graph.go:286
         .          .    10cb0fa: MOVQ 0x20(SP), R8                       ;graph.go:286
         .          .    10cb0ff: XORL AX, AX
         .          .    10cb101: JMP 0x10cb116
         .          .    10cb103: MOVZX 0(DX)(AX*1), R10                  ;graph.go:294
      80ms       80ms    10cb108: LEAQ 0x1(BX), R11                       ;main.distance graph.go:295
         .          .    10cb10c: CMPL R10, R9                            ;graph.go:294
      20ms       20ms    10cb10f: CMOVNE R11, BX                          ;main.distance graph.go:295
         .          .    10cb113: INCQ AX                                 ;graph.go:293
         .          .    10cb116: CMPQ CX, AX
         .          .    10cb119: JGE 0x10cb12c
         .          .    10cb11b: CMPQ SI, AX                             ;graph.go:294
         .          .    10cb11e: JAE 0x10cb143
         .          .    10cb120: MOVZX 0(R8)(AX*1), R9
      10ms       10ms    10cb125: CMPQ DI, AX                             ;main.distance graph.go:294
         .          .    10cb128: JB 0x10cb103                            ;graph.go:294
         .          .    10cb12a: JMP 0x10cb13b
         .          .    10cb12c: MOVQ BX, 0x50(SP)                       ;graph.go:299
         .          .    10cb131: MOVQ 0x10(SP), BP
         .          .    10cb136: ADDQ $0x18, SP
         .          .    10cb13a: RET
         .          .    10cb13b: MOVQ DI, CX                             ;graph.go:294
         .          .    10cb13e: CALL runtime.panicIndex(SB)
         .          .    10cb143: MOVQ SI, CX
         .          .    10cb146: CALL runtime.panicIndex(SB)
         .          .    10cb14b: NOPL
         .          .    10cb14c: INT $0x3
         .          .    10cb14d: INT $0x3
         .          .    10cb14e: INT $0x3
ROUTINE ======================== main.main
         0      2.91s (flat, cum) 49.66% of Total
         .          .    10cd380: MOVQ GS:0x30, CX                        ;main.go:24
         .          .    10cd389: LEAQ 0xfffffd98(SP), AX
         .          .    10cd391: CMPQ 0x10(CX), AX
         .          .    10cd395: JBE 0x10ce07f
         .          .    10cd39b: SUBQ $0x2e8, SP
         .          .    10cd3a2: MOVQ BP, 0x2e0(SP)
         .          .    10cd3aa: LEAQ 0x2e0(SP), BP
         .          .    10cd3b2: MOVQ os.Args+8(SB), CX                  ;main.go:25
         .          .    10cd3b9: MOVQ os.Args(SB), DX                    ;flag.go:996
         .          .    10cd3c0: MOVQ os.Args+16(SB), BX
         .          .    10cd3c7: CMPQ $0x1, CX
         .          .    10cd3cb: JB 0x10ce074
         .          .    10cd3d1: MOVQ flag.CommandLine(SB), AX
         .          .    10cd3d8: MOVQ AX, 0(SP)
         .          .    10cd3dc: LEAQ -0x1(BX), AX
         .          .    10cd3e0: MOVQ AX, BX
         .          .    10cd3e3: NEGQ AX
         .          .    10cd3e6: SARQ $0x3f, AX
         .          .    10cd3ea: ANDQ $0x10, AX
         .          .    10cd3ee: ADDQ DX, AX
         .          .    10cd3f1: MOVQ AX, 0x8(SP)
         .          .    10cd3f6: LEAQ -0x1(CX), AX
         .          .    10cd3fa: MOVQ AX, 0x10(SP)
         .          .    10cd3ff: MOVQ BX, 0x18(SP)
         .          .    10cd404: CALL flag.(*FlagSet).Parse(SB)
         .          .    10cd409: MOVQ main.cpuprofile(SB), AX            ;main.go:27
         .          .    10cd410: MOVQ 0(AX), CX
         .          .    10cd413: MOVQ 0x8(AX), AX
         .          .    10cd417: TESTQ AX, AX
         .          .    10cd41a: JNE 0x10cdf17
         .          .    10cd420: MOVQ main.traceprofile(SB), AX          ;main.go:37
         .          .    10cd427: MOVQ 0(AX), CX
         .          .    10cd42a: MOVQ 0x8(AX), AX
         .          .    10cd42e: TESTQ AX, AX
         .          .    10cd431: JNE 0x10cddb5
         .          .    10cd437: MOVQ main.dump(SB), AX                  ;main.go:47
         .          .    10cd43e: MOVQ 0x8(AX), CX
         .          .    10cd442: MOVQ 0(AX), AX
         .          .    10cd445: TESTQ CX, CX
         .          .    10cd448: JNE 0x10cdda2
         .          .    10cd44e: XORPS X0, X0                            ;main.go:51
         .          .    10cd451: MOVUPS X0, 0x250(SP)
         .          .    10cd459: LEAQ type.*+88544(SB), AX
         .          .    10cd460: MOVQ AX, 0x250(SP)
         .          .    10cd468: LEAQ internal/bytealg.IndexString.args_stackmap+640(SB), CX
         .          .    10cd46f: MOVQ CX, 0x258(SP)
         .          .    10cd477: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cd47e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd485: MOVQ DX, 0(SP)
         .          .    10cd489: MOVQ CX, 0x8(SP)
         .          .    10cd48e: LEAQ 0x250(SP), CX
         .          .    10cd496: MOVQ CX, 0x10(SP)
         .          .    10cd49b: MOVQ $0x1, 0x18(SP)
         .          .    10cd4a4: MOVQ $0x1, 0x20(SP)
         .          .    10cd4ad: CALL fmt.Fprintln(SB)
         .          .    10cd4b2: MOVQ main.dict(SB), AX                  ;main.go:52
         .          .    10cd4b9: MOVQ main.perfStats(SB), CX
         .          .    10cd4c0: MOVQ main.dump(SB), DX
         .          .    10cd4c7: MOVQ 0x8(AX), BX
         .          .    10cd4cb: MOVQ 0(AX), AX
         .          .    10cd4ce: MOVZX 0(CX), CX
         .          .    10cd4d1: MOVQ 0(DX), SI
         .          .    10cd4d4: MOVQ 0x8(DX), DX
         .          .    10cd4d8: MOVQ AX, 0(SP)
         .          .    10cd4dc: MOVQ BX, 0x8(SP)
         .          .    10cd4e1: MOVB CL, 0x10(SP)
         .          .    10cd4e5: MOVQ SI, 0x18(SP)
         .          .    10cd4ea: MOVQ DX, 0x20(SP)
         .      2.87s    10cd4ef: CALL main.LoadDictionary(SB)            ;main.main main.go:52
         .          .    10cd4f4: MOVQ 0x28(SP), AX                       ;main.go:52
         .          .    10cd4f9: MOVQ AX, 0x1d0(SP)
         .          .    10cd501: MOVQ 0x8(AX), CX                        ;graph.go:304
         .          .    10cd505: MOVQ CX, 0x78(SP)
         .          .    10cd50a: MOVQ AX, 0(SP)                          ;main.go:53
         .       10ms    10cd50e: CALL main.(*Graph).EdgeCount(SB)        ;main.main main.go:53
         .          .    10cd513: MOVQ 0x8(SP), AX                        ;main.go:53
         .          .    10cd518: MOVQ AX, 0x70(SP)
         .          .    10cd51d: MOVQ 0x78(SP), CX
         .          .    10cd522: MOVQ CX, 0(SP)
         .          .    10cd526: CALL runtime.convT64(SB)
         .          .    10cd52b: MOVQ 0x8(SP), AX
         .          .    10cd530: MOVQ AX, 0x1f8(SP)
         .          .    10cd538: MOVQ 0x70(SP), CX
         .          .    10cd53d: MOVQ CX, 0(SP)
         .          .    10cd541: CALL runtime.convT64(SB)
         .          .    10cd546: MOVQ 0x8(SP), AX
         .          .    10cd54b: XORPS X0, X0
         .          .    10cd54e: MOVUPS X0, 0x2c0(SP)
         .          .    10cd556: MOVUPS X0, 0x2d0(SP)
         .          .    10cd55e: LEAQ type.*+85856(SB), CX
         .          .    10cd565: MOVQ CX, 0x2c0(SP)
         .          .    10cd56d: MOVQ 0x1f8(SP), DX
         .          .    10cd575: MOVQ DX, 0x2c8(SP)
         .          .    10cd57d: MOVQ CX, 0x2d0(SP)
         .          .    10cd585: MOVQ AX, 0x2d8(SP)
         .          .    10cd58d: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd594: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cd59b: MOVQ CX, 0(SP)
         .          .    10cd59f: MOVQ AX, 0x8(SP)
         .          .    10cd5a4: LEAQ go.string.*+11013(SB), AX
         .          .    10cd5ab: MOVQ AX, 0x10(SP)
         .          .    10cd5b0: MOVQ $0x14, 0x18(SP)
         .          .    10cd5b9: LEAQ 0x2c0(SP), AX
         .          .    10cd5c1: MOVQ AX, 0x20(SP)
         .          .    10cd5c6: MOVQ $0x2, 0x28(SP)
         .          .    10cd5cf: MOVQ $0x2, 0x30(SP)
         .          .    10cd5d8: CALL fmt.Fprintf(SB)
         .          .    10cd5dd: MOVQ main.dictStats(SB), AX             ;main.go:55
         .          .    10cd5e4: CMPB $0x0, 0(AX)
         .          .    10cd5e7: JNE 0x10cdd81
         .          .    10cd5ed: MOVQ main.src(SB), AX                   ;main.go:59
         .          .    10cd5f4: MOVQ 0(AX), CX
         .          .    10cd5f7: MOVQ 0x8(AX), AX
         .          .    10cd5fb: TESTQ AX, AX
         .          .    10cd5fe: JE 0x10cd612
         .          .    10cd600: MOVQ main.dest(SB), DX
         .          .    10cd607: CMPQ $0x0, 0x8(DX)
         .          .    10cd60c: JNE 0x10cd81e
         .          .    10cd612: MOVQ main.printGraph(SB), AX            ;main.go:83
         .          .    10cd619: CMPB $0x0, 0(AX)
         .          .    10cd61c: JNE 0x10cd808
         .          .    10cd622: MOVQ main.memprofile(SB), AX            ;main.go:87
         .          .    10cd629: CMPQ $0x0, 0x8(AX)
         .          .    10cd62e: JNE 0x10cd646
         .          .    10cd630: NOPL                                    ;main.go:98
         .          .    10cd631: CALL runtime.deferreturn(SB)
         .          .    10cd636: MOVQ 0x2e0(SP), BP
         .          .    10cd63e: ADDQ $0x2e8, SP
         .          .    10cd645: RET
         .          .    10cd646: CALL runtime.GC(SB)                     ;main.go:88
         .          .    10cd64b: MOVQ main.memprofile(SB), AX            ;main.go:89
         .          .    10cd652: MOVQ 0(AX), CX
         .          .    10cd655: MOVQ 0x8(AX), AX
         .          .    10cd659: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd65d: MOVQ AX, 0x8(SP)
         .          .    10cd662: MOVQ $0x602, 0x10(SP)
         .          .    10cd66b: MOVL $0x1b6, 0x18(SP)
         .          .    10cd673: CALL os.OpenFile(SB)
         .          .    10cd678: MOVQ 0x20(SP), AX
         .          .    10cd67d: MOVQ AX, 0x1f0(SP)
         .          .    10cd685: MOVQ 0x28(SP), CX
         .          .    10cd68a: MOVQ 0x30(SP), DX
         .          .    10cd68f: TESTQ CX, CX                            ;main.go:90
         .          .    10cd692: JE 0x10cd6fe
         .          .    10cd694: JE 0x10cd69a                            ;main.go:91
         .          .    10cd696: MOVQ 0x8(CX), CX
         .          .    10cd69a: XORPS X0, X0
         .          .    10cd69d: MOVUPS X0, 0x260(SP)
         .          .    10cd6a5: MOVUPS X0, 0x270(SP)
         .          .    10cd6ad: LEAQ type.*+88544(SB), AX
         .          .    10cd6b4: MOVQ AX, 0x260(SP)
         .          .    10cd6bc: LEAQ internal/bytealg.IndexString.args_stackmap+672(SB), BX
         .          .    10cd6c3: MOVQ BX, 0x268(SP)
         .          .    10cd6cb: MOVQ CX, 0x270(SP)
         .          .    10cd6d3: MOVQ DX, 0x278(SP)
         .          .    10cd6db: LEAQ 0x260(SP), CX
         .          .    10cd6e3: MOVQ CX, 0(SP)
         .          .    10cd6e7: MOVQ $0x2, 0x8(SP)
         .          .    10cd6f0: MOVQ $0x2, 0x10(SP)
         .          .    10cd6f9: CALL log.Fatal(SB)
         .          .    10cd6fe: MOVL $0x18, 0xf0(SP)                    ;main.go:93
         .          .    10cd709: LEAQ go.func.*+289(SB), AX
         .          .    10cd710: MOVQ AX, 0x108(SP)
         .          .    10cd718: MOVQ 0x1f0(SP), AX
         .          .    10cd720: MOVQ AX, 0x120(SP)
         .          .    10cd728: LEAQ 0xf0(SP), CX
         .          .    10cd730: MOVQ CX, 0(SP)
         .          .    10cd734: CALL runtime.deferprocStack(SB)
         .          .    10cd739: TESTL AX, AX
         .          .    10cd73b: JNE 0x10cd7f2
         .       10ms    10cd741: NOPL                                    ;runtime/pprof.WriteHeapProfile pprof.go:522
         .          .    10cd742: LEAQ go.itab.*os.File,io.Writer(SB), AX ;pprof.go:533
         .          .    10cd749: MOVQ AX, 0(SP)
         .          .    10cd74d: MOVQ 0x1f0(SP), AX
         .          .    10cd755: MOVQ AX, 0x8(SP)
         .          .    10cd75a: MOVQ $0x0, 0x10(SP)
         .          .    10cd763: XORPS X0, X0
         .          .    10cd766: MOVUPS X0, 0x18(SP)
                                                                          ;runtime/pprof.writeHeap pprof.go:533
         .       10ms    10cd76b: CALL runtime/pprof.writeHeapInternal(SB)
         .          .    10cd770: MOVQ 0x28(SP), AX                       ;pprof.go:533
         .          .    10cd775: MOVQ 0x30(SP), CX
         .       10ms    10cd77a: TESTQ AX, AX                            ;main.main main.go:94
         .          .    10cd77d: JE 0x10cd630                            ;main.go:94
         .          .    10cd783: JE 0x10cd789                            ;main.go:95
         .          .    10cd785: MOVQ 0x8(AX), AX
         .          .    10cd789: XORPS X0, X0
         .          .    10cd78c: MOVUPS X0, 0x260(SP)
         .          .    10cd794: MOVUPS X0, 0x270(SP)
         .          .    10cd79c: LEAQ type.*+88544(SB), DX
         .          .    10cd7a3: MOVQ DX, 0x260(SP)
         .          .    10cd7ab: LEAQ internal/bytealg.IndexString.args_stackmap+688(SB), DX
         .          .    10cd7b2: MOVQ DX, 0x268(SP)
         .          .    10cd7ba: MOVQ AX, 0x270(SP)
         .          .    10cd7c2: MOVQ CX, 0x278(SP)
         .          .    10cd7ca: LEAQ 0x260(SP), AX
         .          .    10cd7d2: MOVQ AX, 0(SP)
         .          .    10cd7d6: MOVQ $0x2, 0x8(SP)
         .          .    10cd7df: MOVQ $0x2, 0x10(SP)
         .          .    10cd7e8: CALL log.Fatal(SB)
         .          .    10cd7ed: JMP 0x10cd630
         .          .    10cd7f2: NOPL                                    ;main.go:93
         .          .    10cd7f3: CALL runtime.deferreturn(SB)
         .          .    10cd7f8: MOVQ 0x2e0(SP), BP
         .          .    10cd800: ADDQ $0x2e8, SP
         .          .    10cd807: RET
         .          .    10cd808: MOVQ 0x1d0(SP), AX                      ;main.go:84
         .          .    10cd810: MOVQ AX, 0(SP)
         .          .    10cd814: CALL main.(*Graph).PrintAdjList(SB)
         .          .    10cd819: JMP 0x10cd622
         .          .    10cd81e: MOVQ CX, 0(SP)                          ;main.go:60
         .          .    10cd822: MOVQ AX, 0x8(SP)
         .          .    10cd827: CALL runtime.convTstring(SB)
         .          .    10cd82c: MOVQ main.dest(SB), AX
         .          .    10cd833: MOVQ 0x10(SP), CX
         .          .    10cd838: MOVQ CX, 0x1f8(SP)
         .          .    10cd840: MOVQ 0(AX), DX
         .          .    10cd843: MOVQ 0x8(AX), AX
         .          .    10cd847: MOVQ DX, 0(SP)
         .          .    10cd84b: MOVQ AX, 0x8(SP)
         .          .    10cd850: CALL runtime.convTstring(SB)
         .          .    10cd855: MOVQ 0x10(SP), AX
         .          .    10cd85a: XORPS X0, X0
         .          .    10cd85d: MOVUPS X0, 0x2a0(SP)
         .          .    10cd865: MOVUPS X0, 0x2b0(SP)
         .          .    10cd86d: LEAQ type.*+88544(SB), CX
         .          .    10cd874: MOVQ CX, 0x2a0(SP)
         .          .    10cd87c: MOVQ 0x1f8(SP), DX
         .          .    10cd884: MOVQ DX, 0x2a8(SP)
         .          .    10cd88c: MOVQ CX, 0x2b0(SP)
         .          .    10cd894: MOVQ AX, 0x2b8(SP)
         .          .    10cd89c: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd8a3: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd8aa: MOVQ DX, 0(SP)
         .          .    10cd8ae: MOVQ AX, 0x8(SP)
         .          .    10cd8b3: LEAQ go.string.*+16282(SB), AX
         .          .    10cd8ba: MOVQ AX, 0x10(SP)
         .          .    10cd8bf: MOVQ $0x1b, 0x18(SP)
         .          .    10cd8c8: LEAQ 0x2a0(SP), AX
         .          .    10cd8d0: MOVQ AX, 0x20(SP)
         .          .    10cd8d5: MOVQ $0x2, 0x28(SP)
         .          .    10cd8de: MOVQ $0x2, 0x30(SP)
         .          .    10cd8e7: CALL fmt.Fprintf(SB)
         .          .    10cd8ec: MOVQ main.src(SB), AX                   ;main.go:61
         .          .    10cd8f3: MOVQ 0x8(AX), CX
         .          .    10cd8f7: MOVQ 0(AX), AX
         .          .    10cd8fa: MOVQ 0x1d0(SP), DX
         .          .    10cd902: MOVQ DX, 0(SP)
         .          .    10cd906: MOVQ AX, 0x8(SP)
         .          .    10cd90b: MOVQ CX, 0x10(SP)
         .          .    10cd910: CALL main.(*Graph).Find(SB)
         .          .    10cd915: MOVQ main.dest(SB), AX                  ;main.go:62
         .          .    10cd91c: MOVQ 0x18(SP), CX                       ;main.go:61
         .          .    10cd921: MOVQ CX, 0x58(SP)
         .          .    10cd926: MOVQ 0x8(AX), DX                        ;main.go:62
         .          .    10cd92a: MOVQ 0(AX), AX
         .          .    10cd92d: MOVQ 0x1d0(SP), BX
         .          .    10cd935: MOVQ BX, 0(SP)
         .          .    10cd939: MOVQ AX, 0x8(SP)
         .          .    10cd93e: MOVQ DX, 0x10(SP)
         .          .    10cd943: CALL main.(*Graph).Find(SB)
         .          .    10cd948: MOVQ 0x18(SP), AX
         .          .    10cd94d: MOVQ 0x58(SP), CX                       ;main.go:64
         .          .    10cd952: TESTQ CX, CX
         .          .    10cd955: JL 0x10cdc26
         .          .    10cd95b: TESTQ AX, AX
         .          .    10cd95e: JL 0x10cdc23
         .          .    10cd964: XORPS X0, X0                            ;main.go:74
         .          .    10cd967: MOVUPS X0, 0x220(SP)
         .          .    10cd96f: LEAQ type.*+88544(SB), AX
         .          .    10cd976: MOVQ AX, 0x220(SP)
         .          .    10cd97e: LEAQ internal/bytealg.IndexString.args_stackmap+656(SB), CX
         .          .    10cd985: MOVQ CX, 0x228(SP)
         .          .    10cd98d: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cd994: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd99b: MOVQ DX, 0(SP)
         .          .    10cd99f: MOVQ CX, 0x8(SP)
         .          .    10cd9a4: LEAQ 0x220(SP), CX
         .          .    10cd9ac: MOVQ CX, 0x10(SP)
         .          .    10cd9b1: MOVQ $0x1, 0x18(SP)
         .          .    10cd9ba: MOVQ $0x1, 0x20(SP)
         .          .    10cd9c3: CALL fmt.Fprintln(SB)
         .          .    10cd9c8: MOVQ 0x1d0(SP), AX                      ;main.go:75
         .          .    10cd9d0: MOVQ AX, 0(SP)
         .          .    10cd9d4: MOVQ 0x58(SP), CX
         .          .    10cd9d9: MOVQ CX, 0x8(SP)
         .          .    10cd9de: CALL main.(*Graph).AllPaths(SB)
         .          .    10cd9e3: MOVQ main.dest(SB), AX                  ;main.go:76
         .          .    10cd9ea: MOVQ 0x10(SP), CX                       ;main.go:75
         .          .    10cd9ef: MOVQ 0x8(AX), DX                        ;main.go:76
         .          .    10cd9f3: MOVQ 0(AX), AX
         .          .    10cd9f6: MOVQ CX, 0(SP)
         .          .    10cd9fa: MOVQ AX, 0x8(SP)
         .          .    10cd9ff: MOVQ DX, 0x10(SP)
         .          .    10cda04: CALL main.(*Paths).To(SB)
         .          .    10cda09: MOVQ 0x18(SP), AX
         .          .    10cda0e: MOVQ AX, 0x1c8(SP)
         .          .    10cda16: MOVQ 0x20(SP), CX
         .          .    10cda1b: MOVQ CX, 0x60(SP)
         .          .    10cda20: TESTQ CX, CX                            ;main.go:77
         .          .    10cda23: JE 0x10cdb35
         .          .    10cda29: MOVQ 0x1d0(SP), DX                      ;main.go:80
         .          .    10cda31: XORL BX, BX
         .          .    10cda33: JMP 0x10cdb13
         .          .    10cda38: MOVQ BX, 0x78(SP)
         .          .    10cda3d: LEAQ 0(SI)(SI*2), AX                    ;main.go:81
         .          .    10cda41: MOVQ 0x10(R8)(AX*8), CX
         .          .    10cda46: MOVQ 0(R8)(AX*8), DX
         .          .    10cda4a: MOVQ 0x8(R8)(AX*8), AX
         .          .    10cda4f: MOVQ $0x0, 0(SP)
         .          .    10cda57: MOVQ DX, 0x8(SP)
         .          .    10cda5c: MOVQ AX, 0x10(SP)
         .          .    10cda61: MOVQ CX, 0x18(SP)
         .          .    10cda66: CALL runtime.slicebytetostring(SB)
         .          .    10cda6b: MOVQ 0x28(SP), AX
         .          .    10cda70: MOVQ 0x20(SP), CX
         .          .    10cda75: MOVQ CX, 0(SP)
         .          .    10cda79: MOVQ AX, 0x8(SP)
         .          .    10cda7e: CALL runtime.convTstring(SB)
         .          .    10cda83: MOVQ 0x10(SP), AX
         .          .    10cda88: XORPS X0, X0
         .          .    10cda8b: MOVUPS X0, 0x210(SP)
         .          .    10cda93: LEAQ type.*+88544(SB), CX
         .          .    10cda9a: MOVQ CX, 0x210(SP)
         .          .    10cdaa2: MOVQ AX, 0x218(SP)
         .          .    10cdaaa: MOVQ os.Stdout(SB), AX                  ;print.go:274
         .          .    10cdab1: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdab8: MOVQ DX, 0(SP)
         .          .    10cdabc: MOVQ AX, 0x8(SP)
         .          .    10cdac1: LEAQ 0x210(SP), AX
         .          .    10cdac9: MOVQ AX, 0x10(SP)
         .          .    10cdace: MOVQ $0x1, 0x18(SP)
         .          .    10cdad7: MOVQ $0x1, 0x20(SP)
         .          .    10cdae0: CALL fmt.Fprintln(SB)
         .          .    10cdae5: MOVQ 0x78(SP), AX                       ;main.go:80
         .          .    10cdaea: LEAQ 0x1(AX), BX
         .          .    10cdaee: MOVQ 0x60(SP), AX
         .          .    10cdaf3: MOVQ 0x1d0(SP), CX
         .          .    10cdafb: MOVQ 0x1c8(SP), DX
         .          .    10cdb03: MOVQ DX, AX
         .          .    10cdb06: MOVQ 0x60(SP), CX
         .          .    10cdb0b: MOVQ 0x1d0(SP), DX                      ;main.go:81
         .          .    10cdb13: CMPQ CX, BX                             ;main.go:80
         .          .    10cdb16: JGE 0x10cd622
         .          .    10cdb1c: MOVQ 0(AX)(BX*8), SI
         .          .    10cdb20: MOVQ 0x8(DX), DI                        ;main.go:81
         .          .    10cdb24: MOVQ 0(DX), R8
         .          .    10cdb27: CMPQ DI, SI
         .          .    10cdb2a: JB 0x10cda38
         .          .    10cdb30: JMP 0x10ce069
         .          .    10cdb35: MOVQ main.src(SB), AX                   ;main.go:78
         .          .    10cdb3c: MOVQ 0x8(AX), CX
         .          .    10cdb40: MOVQ 0(AX), AX
         .          .    10cdb43: MOVQ AX, 0(SP)
         .          .    10cdb47: MOVQ CX, 0x8(SP)
         .          .    10cdb4c: CALL runtime.convTstring(SB)
         .          .    10cdb51: MOVQ main.dest(SB), AX
         .          .    10cdb58: MOVQ 0x10(SP), CX
         .          .    10cdb5d: MOVQ CX, 0x1f8(SP)
         .          .    10cdb65: MOVQ 0x8(AX), DX
         .          .    10cdb69: MOVQ 0(AX), AX
         .          .    10cdb6c: MOVQ AX, 0(SP)
         .          .    10cdb70: MOVQ DX, 0x8(SP)
         .          .    10cdb75: CALL runtime.convTstring(SB)
         .          .    10cdb7a: MOVQ 0x10(SP), AX
         .          .    10cdb7f: XORPS X0, X0
         .          .    10cdb82: MOVUPS X0, 0x280(SP)
         .          .    10cdb8a: MOVUPS X0, 0x290(SP)
         .          .    10cdb92: LEAQ type.*+88544(SB), CX
         .          .    10cdb99: MOVQ CX, 0x280(SP)
         .          .    10cdba1: MOVQ 0x1f8(SP), DX
         .          .    10cdba9: MOVQ DX, 0x288(SP)
         .          .    10cdbb1: MOVQ CX, 0x290(SP)
         .          .    10cdbb9: MOVQ AX, 0x298(SP)
         .          .    10cdbc1: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdbc8: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdbcf: MOVQ DX, 0(SP)
         .          .    10cdbd3: MOVQ AX, 0x8(SP)
         .          .    10cdbd8: LEAQ go.string.*+20048(SB), AX
         .          .    10cdbdf: MOVQ AX, 0x10(SP)
         .          .    10cdbe4: MOVQ $0x1f, 0x18(SP)
         .          .    10cdbed: LEAQ 0x280(SP), AX
         .          .    10cdbf5: MOVQ AX, 0x20(SP)
         .          .    10cdbfa: MOVQ $0x2, 0x28(SP)
         .          .    10cdc03: MOVQ $0x2, 0x30(SP)
         .          .    10cdc0c: CALL fmt.Fprintf(SB)
         .          .    10cdc11: MOVQ 0x1c8(SP), AX                      ;main.go:80
         .          .    10cdc19: MOVQ 0x60(SP), CX
         .          .    10cdc1e: JMP 0x10cda29
         .          .    10cdc23: TESTQ CX, CX                            ;main.go:64
         .          .    10cdc26: JL 0x10cdcdf                            ;main.go:65
         .          .    10cdc2c: TESTQ AX, AX                            ;main.go:68
         .          .    10cdc2f: JL 0x10cdc47
         .          .    10cdc31: NOPL                                    ;main.go:71
         .          .    10cdc32: CALL runtime.deferreturn(SB)
         .          .    10cdc37: MOVQ 0x2e0(SP), BP
         .          .    10cdc3f: ADDQ $0x2e8, SP
         .          .    10cdc46: RET
         .          .    10cdc47: MOVQ main.dest(SB), AX                  ;main.go:69
         .          .    10cdc4e: MOVQ 0(AX), CX
         .          .    10cdc51: MOVQ 0x8(AX), AX
         .          .    10cdc55: MOVQ CX, 0(SP)
         .          .    10cdc59: MOVQ AX, 0x8(SP)
         .          .    10cdc5e: CALL runtime.convTstring(SB)
         .          .    10cdc63: MOVQ 0x10(SP), AX
         .          .    10cdc68: XORPS X0, X0
         .          .    10cdc6b: MOVUPS X0, 0x230(SP)
         .          .    10cdc73: LEAQ type.*+88544(SB), CX
         .          .    10cdc7a: MOVQ CX, 0x230(SP)
         .          .    10cdc82: MOVQ AX, 0x238(SP)
         .          .    10cdc8a: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdc91: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cdc98: MOVQ CX, 0(SP)
         .          .    10cdc9c: MOVQ AX, 0x8(SP)
         .          .    10cdca1: LEAQ go.string.*+7928(SB), AX
         .          .    10cdca8: MOVQ AX, 0x10(SP)
         .          .    10cdcad: MOVQ $0x11, 0x18(SP)
         .          .    10cdcb6: LEAQ 0x230(SP), AX
         .          .    10cdcbe: MOVQ AX, 0x20(SP)
         .          .    10cdcc3: MOVQ $0x1, 0x28(SP)
         .          .    10cdccc: MOVQ $0x1, 0x30(SP)
         .          .    10cdcd5: CALL fmt.Fprintf(SB)
         .          .    10cdcda: JMP 0x10cdc31                           ;main.go:71
         .          .    10cdcdf: MOVQ AX, 0x50(SP)                       ;main.go:62
         .          .    10cdce4: MOVQ main.src(SB), AX                   ;main.go:66
         .          .    10cdceb: MOVQ 0x8(AX), CX
         .          .    10cdcef: MOVQ 0(AX), AX
         .          .    10cdcf2: MOVQ AX, 0(SP)
         .          .    10cdcf6: MOVQ CX, 0x8(SP)
         .          .    10cdcfb: CALL runtime.convTstring(SB)
         .          .    10cdd00: MOVQ 0x10(SP), AX
         .          .    10cdd05: XORPS X0, X0
         .          .    10cdd08: MOVUPS X0, 0x240(SP)
         .          .    10cdd10: LEAQ type.*+88544(SB), CX
         .          .    10cdd17: MOVQ CX, 0x240(SP)
         .          .    10cdd1f: MOVQ AX, 0x248(SP)
         .          .    10cdd27: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdd2e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdd35: MOVQ DX, 0(SP)
         .          .    10cdd39: MOVQ AX, 0x8(SP)
         .          .    10cdd3e: LEAQ go.string.*+7928(SB), AX
         .          .    10cdd45: MOVQ AX, 0x10(SP)
         .          .    10cdd4a: MOVQ $0x11, 0x18(SP)
         .          .    10cdd53: LEAQ 0x240(SP), BX
         .          .    10cdd5b: MOVQ BX, 0x20(SP)
         .          .    10cdd60: MOVQ $0x1, 0x28(SP)
         .          .    10cdd69: MOVQ $0x1, 0x30(SP)
         .          .    10cdd72: CALL fmt.Fprintf(SB)
         .          .    10cdd77: MOVQ 0x50(SP), AX                       ;main.go:68
         .          .    10cdd7c: JMP 0x10cdc2c
         .          .    10cdd81: MOVQ main.dict(SB), AX                  ;main.go:56
         .          .    10cdd88: MOVQ 0x8(AX), CX
         .          .    10cdd8c: MOVQ 0(AX), AX
         .          .    10cdd8f: MOVQ AX, 0(SP)
         .          .    10cdd93: MOVQ CX, 0x8(SP)
         .          .    10cdd98: CALL main.dictionaryStats(SB)
         .          .    10cdd9d: JMP 0x10cd5ed
         .          .    10cdda2: MOVQ AX, 0(SP)                          ;main.go:48
         .          .    10cdda6: MOVQ CX, 0x8(SP)
         .          .    10cddab: CALL main.createPathIfNotExists(SB)
         .          .    10cddb0: JMP 0x10cd44e
         .          .    10cddb5: NOPL                                    ;main.go:38
         .          .    10cddb6: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cddba: MOVQ AX, 0x8(SP)
         .          .    10cddbf: MOVQ $0x602, 0x10(SP)
         .          .    10cddc8: MOVL $0x1b6, 0x18(SP)
         .          .    10cddd0: CALL os.OpenFile(SB)
         .          .    10cddd5: MOVQ 0x20(SP), AX
         .          .    10cddda: MOVQ AX, 0x1d8(SP)
         .          .    10cdde2: MOVQ 0x30(SP), CX
         .          .    10cdde7: MOVQ 0x28(SP), DX
         .          .    10cddec: TESTQ DX, DX                            ;main.go:39
         .          .    10cddef: JE 0x10cde5b
         .          .    10cddf1: JE 0x10cddf7                            ;main.go:40
         .          .    10cddf3: MOVQ 0x8(DX), DX
         .          .    10cddf7: XORPS X0, X0
         .          .    10cddfa: MOVUPS X0, 0x260(SP)
         .          .    10cde02: MOVUPS X0, 0x270(SP)
         .          .    10cde0a: LEAQ type.*+88544(SB), AX
         .          .    10cde11: MOVQ AX, 0x260(SP)
         .          .    10cde19: LEAQ internal/bytealg.IndexString.args_stackmap+624(SB), BX
         .          .    10cde20: MOVQ BX, 0x268(SP)
         .          .    10cde28: MOVQ DX, 0x270(SP)
         .          .    10cde30: MOVQ CX, 0x278(SP)
         .          .    10cde38: LEAQ 0x260(SP), CX
         .          .    10cde40: MOVQ CX, 0(SP)
         .          .    10cde44: MOVQ $0x2, 0x8(SP)
         .          .    10cde4d: MOVQ $0x2, 0x10(SP)
         .          .    10cde56: CALL log.Fatal(SB)
         .          .    10cde5b: MOVL $0x18, 0x138(SP)                   ;main.go:42
         .          .    10cde66: LEAQ go.func.*+289(SB), AX
         .          .    10cde6d: MOVQ AX, 0x150(SP)
         .          .    10cde75: MOVQ 0x1d8(SP), CX
         .          .    10cde7d: MOVQ CX, 0x168(SP)
         .          .    10cde85: LEAQ 0x138(SP), DX
         .          .    10cde8d: MOVQ DX, 0(SP)
         .          .    10cde91: CALL runtime.deferprocStack(SB)
         .          .    10cde96: TESTL AX, AX
         .          .    10cde98: JNE 0x10cdf01
         .          .    10cde9a: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:43
         .          .    10cdea1: MOVQ AX, 0(SP)
         .          .    10cdea5: MOVQ 0x1d8(SP), CX
         .          .    10cdead: MOVQ CX, 0x8(SP)
         .          .    10cdeb2: CALL runtime/trace.Start(SB)
         .          .    10cdeb7: MOVL $0x0, 0x80(SP)                     ;main.go:44
         .          .    10cdec2: LEAQ go.func.*+1593(SB), AX
         .          .    10cdec9: MOVQ AX, 0x98(SP)
         .          .    10cded1: LEAQ 0x80(SP), AX
         .          .    10cded9: MOVQ AX, 0(SP)
         .          .    10cdedd: CALL runtime.deferprocStack(SB)
         .          .    10cdee2: TESTL AX, AX
         .          .    10cdee4: JNE 0x10cdeeb
         .          .    10cdee6: JMP 0x10cd437
         .          .    10cdeeb: NOPL
         .          .    10cdeec: CALL runtime.deferreturn(SB)
         .          .    10cdef1: MOVQ 0x2e0(SP), BP
         .          .    10cdef9: ADDQ $0x2e8, SP
         .          .    10cdf00: RET
         .          .    10cdf01: NOPL                                    ;main.go:42
         .          .    10cdf02: CALL runtime.deferreturn(SB)
         .          .    10cdf07: MOVQ 0x2e0(SP), BP
         .          .    10cdf0f: ADDQ $0x2e8, SP
         .          .    10cdf16: RET
         .          .    10cdf17: NOPL                                    ;main.go:28
         .          .    10cdf18: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cdf1c: MOVQ AX, 0x8(SP)
         .          .    10cdf21: MOVQ $0x602, 0x10(SP)
         .          .    10cdf2a: MOVL $0x1b6, 0x18(SP)
         .          .    10cdf32: CALL os.OpenFile(SB)
         .          .    10cdf37: MOVQ 0x20(SP), AX
         .          .    10cdf3c: MOVQ AX, 0x1e0(SP)
         .          .    10cdf44: MOVQ 0x28(SP), CX
         .          .    10cdf49: MOVQ CX, 0x68(SP)
         .          .    10cdf4e: MOVQ 0x30(SP), DX
         .          .    10cdf53: MOVQ DX, 0x1e8(SP)
         .          .    10cdf5b: MOVL $0x18, 0x180(SP)                   ;main.go:29
         .          .    10cdf66: LEAQ go.func.*+289(SB), BX
         .          .    10cdf6d: MOVQ BX, 0x198(SP)
         .          .    10cdf75: MOVQ AX, 0x1b0(SP)
         .          .    10cdf7d: LEAQ 0x180(SP), SI
         .          .    10cdf85: MOVQ SI, 0(SP)
         .          .    10cdf89: CALL runtime.deferprocStack(SB)
         .          .    10cdf8e: TESTL AX, AX
         .          .    10cdf90: JNE 0x10ce053
         .          .    10cdf96: MOVQ 0x68(SP), AX                       ;main.go:30
         .          .    10cdf9b: TESTQ AX, AX
         .          .    10cdf9e: JE 0x10cdfec
         .          .    10cdfa0: JE 0x10cdfa6                            ;main.go:31
         .          .    10cdfa2: MOVQ 0x8(AX), AX
         .          .    10cdfa6: XORPS X0, X0
         .          .    10cdfa9: MOVUPS X0, 0x200(SP)
         .          .    10cdfb1: MOVQ AX, 0x200(SP)
         .          .    10cdfb9: MOVQ 0x1e8(SP), AX
         .          .    10cdfc1: MOVQ AX, 0x208(SP)
         .          .    10cdfc9: LEAQ 0x200(SP), AX
         .          .    10cdfd1: MOVQ AX, 0(SP)
         .          .    10cdfd5: MOVQ $0x1, 0x8(SP)
         .          .    10cdfde: MOVQ $0x1, 0x10(SP)
         .          .    10cdfe7: CALL log.Fatal(SB)
         .          .    10cdfec: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:33
         .          .    10cdff3: MOVQ AX, 0(SP)
         .          .    10cdff7: MOVQ 0x1e0(SP), CX
         .          .    10cdfff: MOVQ CX, 0x8(SP)
         .          .    10ce004: CALL runtime/pprof.StartCPUProfile(SB)
         .          .    10ce009: MOVL $0x0, 0xb8(SP)                     ;main.go:34
         .          .    10ce014: LEAQ go.func.*+1561(SB), AX
         .          .    10ce01b: MOVQ AX, 0xd0(SP)
         .          .    10ce023: LEAQ 0xb8(SP), AX
         .          .    10ce02b: MOVQ AX, 0(SP)
         .          .    10ce02f: CALL runtime.deferprocStack(SB)
         .          .    10ce034: TESTL AX, AX
         .          .    10ce036: JNE 0x10ce03d
         .          .    10ce038: JMP 0x10cd420
         .          .    10ce03d: NOPL
         .          .    10ce03e: CALL runtime.deferreturn(SB)
         .          .    10ce043: MOVQ 0x2e0(SP), BP
         .          .    10ce04b: ADDQ $0x2e8, SP
         .          .    10ce052: RET
         .          .    10ce053: NOPL                                    ;main.go:29
         .          .    10ce054: CALL runtime.deferreturn(SB)
         .          .    10ce059: MOVQ 0x2e0(SP), BP
         .          .    10ce061: ADDQ $0x2e8, SP
         .          .    10ce068: RET
         .          .    10ce069: MOVQ SI, AX                             ;main.go:81
         .          .    10ce06c: MOVQ DI, CX
         .          .    10ce06f: CALL runtime.panicIndex(SB)
         .          .    10ce074: MOVL $0x1, AX                           ;flag.go:996
         .          .    10ce079: CALL runtime.panicSliceB(SB)
         .          .    10ce07e: NOPL
         .          .    10ce07f: CALL runtime.morestack_noctxt(SB)       ;main.go:24
         .          .    10ce084: JMP main.main(SB)
         .          .    10ce089: INT $0x3
         .          .    10ce08a: INT $0x3
         .          .    10ce08b: INT $0x3
         .          .    10ce08c: INT $0x3
         .          .    10ce08d: INT $0x3
         .          .    10ce08e: INT $0x3
ROUTINE ======================== main.newIndex
     100ms      120ms (flat, cum)  2.05% of Total
         .          .    10cbe00: MOVQ GS:0x30, CX                        ;index.go:18
         .          .    10cbe09: CMPQ 0x10(CX), SP
         .          .    10cbe0d: JBE 0x10cc00e
         .          .    10cbe13: SUBQ $0x48, SP
         .          .    10cbe17: MOVQ BP, 0x40(SP)
         .          .    10cbe1c: LEAQ 0x40(SP), BP
         .          .    10cbe21: LEAQ type.*+77216(SB), AX               ;index.go:19
         .          .    10cbe28: MOVQ AX, 0(SP)
         .          .    10cbe2c: MOVQ 0x50(SP), AX
         .          .    10cbe31: MOVQ AX, 0x8(SP)
         .          .    10cbe36: MOVQ AX, 0x10(SP)
         .       20ms    10cbe3b: CALL runtime.makeslice(SB)              ;main.newIndex index.go:19
         .          .    10cbe40: MOVQ 0x18(SP), AX                       ;index.go:19
         .          .    10cbe45: MOVQ AX, 0x38(SP)
         .          .    10cbe4a: XORL CX, CX
         .          .    10cbe4c: JMP 0x10cbe55                           ;index.go:20
         .          .    10cbe4e: LEAQ 0x1(AX), CX
         .          .    10cbe52: MOVQ BX, AX                             ;index.go:21
         .          .    10cbe55: MOVQ 0x50(SP), DX                       ;index.go:20
         .          .    10cbe5a: CMPQ DX, CX
         .          .    10cbe5d: JGE 0x10cbec4
         .          .    10cbe5f: MOVQ CX, 0x20(SP)
         .          .    10cbe64: LEAQ type.*+85856(SB), AX               ;index.go:21
         .          .    10cbe6b: MOVQ AX, 0(SP)
         .          .    10cbe6f: XORPS X0, X0
         .          .    10cbe72: MOVUPS X0, 0x8(SP)
         .          .    10cbe77: CALL runtime.makeslice(SB)
         .          .    10cbe7c: MOVQ 0x20(SP), AX
         .          .    10cbe81: LEAQ 0(AX)(AX*2), CX
         .          .    10cbe85: MOVQ 0x18(SP), DX
         .          .    10cbe8a: MOVQ 0x38(SP), BX
      40ms       40ms    10cbe8f: MOVQ $0x0, 0x8(BX)(CX*8)                ;main.newIndex index.go:21
      60ms       60ms    10cbe98: MOVQ $0x0, 0x10(BX)(CX*8)
         .          .    10cbea1: LEAQ 0(BX)(CX*8), DI                    ;index.go:21
         .          .    10cbea5: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbeac: JNE 0x10cbeb4
         .          .    10cbeae: MOVQ DX, 0(BX)(CX*8)
         .          .    10cbeb2: JMP 0x10cbe4e
         .          .    10cbeb4: MOVQ AX, CX                             ;index.go:20
         .          .    10cbeb7: MOVQ DX, AX                             ;index.go:21
         .          .    10cbeba: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbebf: MOVQ CX, AX                             ;index.go:20
         .          .    10cbec2: JMP 0x10cbe4e                           ;index.go:21
         .          .    10cbec4: NOPL                                    ;murmur64.go:18
         .          .    10cbec5: MOVL $0x0, 0(SP)                        ;murmur64.go:22
         .          .    10cbecc: CALL erichgess/wordladder/vendor/github.com/spaolacci/murmur3.New128WithSeed(SB)
         .          .    10cbed1: MOVQ 0x10(SP), AX
         .          .    10cbed6: MOVQ 0x8(SP), CX
         .          .    10cbedb: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest128,erichgess/wordladder/vendor/github.com/spaolacci/murmur3.Hash128(SB), DX
         .          .    10cbee2: CMPQ DX, CX
         .          .    10cbee5: JNE 0x10cbfec
         .          .    10cbeeb: MOVQ AX, 0x28(SP)
         .          .    10cbef0: LEAQ type.*+88864(SB), AX               ;index.go:25
         .          .    10cbef7: MOVQ AX, 0(SP)
         .          .    10cbefb: MOVQ $0x0, 0x8(SP)
         .          .    10cbf04: MOVQ 0x58(SP), AX
         .          .    10cbf09: MOVQ AX, 0x10(SP)
         .          .    10cbf0e: CALL runtime.makeslice(SB)
         .          .    10cbf13: MOVQ 0x18(SP), AX
         .          .    10cbf18: MOVQ AX, 0x30(SP)
         .          .    10cbf1d: LEAQ type.*+195616(SB), CX              ;index.go:27
         .          .    10cbf24: MOVQ CX, 0(SP)
         .          .    10cbf28: CALL runtime.newobject(SB)
         .          .    10cbf2d: MOVQ 0x8(SP), AX
                                                                          ;index.go:24
         .          .    10cbf32: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest64,hash.Hash64(SB), CX
         .          .    10cbf39: MOVQ CX, 0(AX)
         .          .    10cbf3c: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbf43: JNE 0x10cbfd3
         .          .    10cbf49: MOVQ 0x28(SP), CX
         .          .    10cbf4e: MOVQ CX, 0x8(AX)
         .          .    10cbf52: MOVQ $0x0, 0x30(AX)                     ;index.go:25
         .          .    10cbf5a: MOVQ 0x58(SP), CX
         .          .    10cbf5f: MOVQ CX, 0x38(AX)
         .          .    10cbf63: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbf6a: JNE 0x10cbfbd
         .          .    10cbf6c: MOVQ 0x30(SP), CX
         .          .    10cbf71: MOVQ CX, 0x28(AX)
         .          .    10cbf75: MOVQ 0x50(SP), CX                       ;index.go:26
         .          .    10cbf7a: MOVQ CX, 0x18(AX)
         .          .    10cbf7e: MOVQ CX, 0x20(AX)
         .          .    10cbf82: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cbf89: JNE 0x10cbfa7
         .          .    10cbf8b: MOVQ 0x38(SP), DX
         .          .    10cbf90: MOVQ DX, 0x10(AX)
         .          .    10cbf94: MOVQ CX, 0x40(AX)                       ;index.go:27
         .          .    10cbf98: MOVQ AX, 0x60(SP)                       ;index.go:23
         .          .    10cbf9d: MOVQ 0x40(SP), BP
         .          .    10cbfa2: ADDQ $0x48, SP
         .          .    10cbfa6: RET
         .          .    10cbfa7: LEAQ 0x10(AX), DI                       ;index.go:26
         .          .    10cbfab: MOVQ AX, DX                             ;index.go:27
         .          .    10cbfae: MOVQ 0x38(SP), AX                       ;index.go:26
         .          .    10cbfb3: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbfb8: MOVQ DX, AX                             ;index.go:27
         .          .    10cbfbb: JMP 0x10cbf94                           ;index.go:26
         .          .    10cbfbd: LEAQ 0x28(AX), DI                       ;index.go:25
         .          .    10cbfc1: MOVQ AX, CX                             ;index.go:27
         .          .    10cbfc4: MOVQ 0x30(SP), AX                       ;index.go:25
         .          .    10cbfc9: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbfce: MOVQ CX, AX                             ;index.go:26
         .          .    10cbfd1: JMP 0x10cbf75                           ;index.go:25
         .          .    10cbfd3: LEAQ 0x8(AX), DI                        ;index.go:24
         .          .    10cbfd7: MOVQ AX, CX                             ;index.go:27
         .          .    10cbfda: MOVQ 0x28(SP), AX                       ;index.go:24
         .          .    10cbfdf: CALL runtime.gcWriteBarrier(SB)
         .          .    10cbfe4: MOVQ CX, AX                             ;index.go:25
         .          .    10cbfe7: JMP 0x10cbf52                           ;index.go:24
         .          .    10cbfec: MOVQ CX, 0(SP)                          ;murmur64.go:22
         .          .    10cbff0: LEAQ type.*+200512(SB), AX
         .          .    10cbff7: MOVQ AX, 0x8(SP)
         .          .    10cbffc: LEAQ type.*+156288(SB), AX
         .          .    10cc003: MOVQ AX, 0x10(SP)
         .          .    10cc008: CALL runtime.panicdottypeI(SB)
         .          .    10cc00d: NOPL
         .          .    10cc00e: CALL runtime.morestack_noctxt(SB)       ;index.go:18
         .          .    10cc013: JMP main.newIndex(SB)
         .          .    10cc018: INT $0x3
         .          .    10cc019: INT $0x3
         .          .    10cc01a: INT $0x3
         .          .    10cc01b: INT $0x3
         .          .    10cc01c: INT $0x3
         .          .    10cc01d: INT $0x3
         .          .    10cc01e: INT $0x3
ROUTINE ======================== runtime.main
         0      2.89s (flat, cum) 49.32% of Total
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
         .          .    102cb43: LEAQ go.func.*+945(SB), CX              ;proc.go:133
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
         .          .    102cbd0: LEAQ go.func.*+953(SB), AX
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
         .          .    102cc11: LEAQ type.*+83104(SB), AX               ;proc.go:168
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
         .          .    102ccfe: MOVQ go.func.*+961(SB), AX              ;proc.go:203
         .          .    102cd05: LEAQ go.func.*+961(SB), DX
         .      2.89s    102cd0c: CALL AX                                 ;runtime.main proc.go:203
         .          .    102cd0e: MOVL runtime.runningPanicDefers(SB), AX ;proc.go:212
         .          .    102cd14: TESTL AX, AX
         .          .    102cd16: JE 0x102cd4c
         .          .    102cd18: XORL AX, AX
         .          .    102cd1a: JMP 0x102cd3a                           ;proc.go:214
         .          .    102cd1c: MOVQ AX, 0x28(SP)
         .          .    102cd21: NOPL                                    ;proc.go:218
         .          .    102cd22: LEAQ go.func.*+889(SB), AX              ;proc.go:269
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
         .          .    102cd9a: LEAQ go.func.*+1505(SB), AX             ;proc.go:1868
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
         .          .    102cdd9: LEAQ go.string.*+25247(SB), AX          ;proc.go:182
         .          .    102cde0: MOVQ AX, 0(SP)
         .          .    102cde4: MOVQ $0x25, 0x8(SP)
         .          .    102cded: CALL runtime.throw(SB)
         .          .    102cdf2: LEAQ go.string.*+11903(SB), AX          ;proc.go:178
         .          .    102cdf9: MOVQ AX, 0(SP)
         .          .    102cdfd: MOVQ $0x15, 0x8(SP)
         .          .    102ce06: CALL runtime.throw(SB)
         .          .    102ce0b: LEAQ go.string.*+9858(SB), AX           ;proc.go:175
         .          .    102ce12: MOVQ AX, 0(SP)
         .          .    102ce16: MOVQ $0x13, 0x8(SP)
         .          .    102ce1f: CALL runtime.throw(SB)
         .          .    102ce24: LEAQ go.string.*+15035(SB), AX          ;proc.go:171
         .          .    102ce2b: MOVQ AX, 0(SP)
         .          .    102ce2f: MOVQ $0x19, 0x8(SP)
         .          .    102ce38: CALL runtime.throw(SB)
         .          .    102ce3d: LEAQ go.string.*+13879(SB), AX          ;proc.go:152
         .          .    102ce44: MOVQ AX, 0(SP)
         .          .    102ce48: MOVQ $0x17, 0x8(SP)
         .          .    102ce51: CALL runtime.throw(SB)
         .          .    102ce56: LEAQ go.string.*+12998(SB), AX          ;proc.go:147
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
