Total: 5.49s
ROUTINE ======================== main.(*Graph).buildAdjList
     600ms      1.88s (flat, cum) 34.24% of Total
         .          .    10ca6a0: MOVQ GS:0x30, CX                        ;graph.go:102
         .          .    10ca6a9: LEAQ -0x60(SP), AX
         .          .    10ca6ae: CMPQ 0x10(CX), AX
         .          .    10ca6b2: JBE 0x10cab5e
         .          .    10ca6b8: SUBQ $0xe0, SP
         .          .    10ca6bf: MOVQ BP, 0xd8(SP)
         .          .    10ca6c7: LEAQ 0xd8(SP), BP
         .          .    10ca6cf: XORL AX, AX
         .          .    10ca6d1: XORL CX, CX
         .          .    10ca6d3: JMP 0x10ca97f                           ;graph.go:104
         .          .    10ca6d8: MOVQ 0x88(SP), R10                      ;graph.go:110
         .          .    10ca6e0: LEAQ 0x1(R10), R9
         .          .    10ca6e4: MOVQ 0x78(SP), R10
         .          .    10ca6e9: MOVQ 0x70(SP), R11
      10ms       10ms    10ca6ee: MOVQ 0x98(SP), R12                      ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca6f6: MOVQ 0x68(SP), R13                      ;graph.go:110
         .          .    10ca6fb: MOVQ 0xc0(SP), R14
         .          .    10ca703: MOVQ R10, AX
         .          .    10ca706: MOVQ 0x50(SP), CX                       ;graph.go:107
         .          .    10ca70b: MOVQ R11, DX                            ;graph.go:111
         .          .    10ca70e: MOVQ 0xe8(SP), BX
      10ms       10ms    10ca716: MOVQ R12, SI                            ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca719: MOVQ R13, DI                            ;graph.go:111
         .          .    10ca71c: MOVQ R14, R8                            ;graph.go:110
         .          .    10ca71f: CMPQ AX, R9
         .          .    10ca722: JGE 0x10ca976
     430ms      430ms    10ca728: MOVQ 0(R8)(R9*8), R10                   ;main.(*Graph).buildAdjList graph.go:110
         .          .    10ca72c: MOVQ 0x8(BX), R11                       ;graph.go:111
         .          .    10ca730: MOVQ 0(BX), R12
         .          .    10ca733: CMPQ R11, R10
         .          .    10ca736: JAE 0x10cab52
         .          .    10ca73c: MOVQ R9, 0x88(SP)                       ;graph.go:110
         .          .    10ca744: MOVQ R10, 0x58(SP)
         .          .    10ca749: LEAQ 0(R10)(R10*2), AX                  ;graph.go:111
         .          .    10ca74d: MOVQ AX, 0x80(SP)
         .          .    10ca755: MOVQ 0(R12)(AX*8), CX
      80ms       80ms    10ca759: MOVQ 0x10(R12)(AX*8), BX                ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca75e: MOVQ 0x8(R12)(AX*8), R8                 ;graph.go:111
         .          .    10ca763: MOVQ SI, 0(SP)
         .          .    10ca767: MOVQ DI, 0x8(SP)
      10ms       10ms    10ca76c: MOVQ DX, 0x10(SP)                       ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca771: MOVQ CX, 0x18(SP)                       ;graph.go:111
         .          .    10ca776: MOVQ R8, 0x20(SP)
         .          .    10ca77b: MOVQ BX, 0x28(SP)
         .       60ms    10ca780: CALL main.distance(SB)                  ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca785: CMPQ $0x1, 0x30(SP)                     ;graph.go:111
      10ms       10ms    10ca78b: JNE 0x10ca95c                           ;main.(*Graph).buildAdjList graph.go:111
         .          .    10ca791: MOVQ 0xe8(SP), DX                       ;graph.go:112
         .          .    10ca799: MOVQ 0x18(DX), BX
         .          .    10ca79d: MOVQ 0x20(DX), CX
         .          .    10ca7a1: MOVQ 0x60(SP), AX
         .          .    10ca7a6: CMPQ CX, AX
         .          .    10ca7a9: JAE 0x10cab4d
         .          .    10ca7af: MOVQ 0x90(SP), SI
         .          .    10ca7b7: MOVQ 0x10(BX)(SI*8), DI
      20ms       20ms    10ca7bc: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca7c1: MOVQ 0(BX)(SI*8), R9                    ;graph.go:112
         .          .    10ca7c5: LEAQ 0x1(R8), R10
         .          .    10ca7c9: LEAQ 0(BX)(SI*8), R11
         .          .    10ca7cd: CMPQ DI, R10
         .          .    10ca7d0: JA 0x10ca8c5
         .          .    10ca7d6: LEAQ 0x1(R8), DI
         .          .    10ca7da: MOVQ DI, 0x8(BX)(SI*8)
         .          .    10ca7df: MOVQ 0x58(SP), BX
         .          .    10ca7e4: MOVQ BX, 0(R9)(R8*8)
         .          .    10ca7e8: MOVQ 0x20(DX), CX                       ;graph.go:113
         .          .    10ca7ec: MOVQ 0x18(DX), DI
         .          .    10ca7f0: CMPQ CX, BX
         .          .    10ca7f3: JAE 0x10cab45
         .          .    10ca7f9: MOVQ 0x80(SP), BX
         .          .    10ca801: MOVQ 0(DI)(BX*8), R8
      20ms       20ms    10ca805: MOVQ 0x10(DI)(BX*8), R9                 ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca80a: MOVQ 0x8(DI)(BX*8), R10                 ;graph.go:113
         .          .    10ca80f: LEAQ 0x1(R10), R11
      10ms       10ms    10ca813: LEAQ 0(DI)(BX*8), R12                   ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca817: CMPQ R9, R11                            ;graph.go:113
         .          .    10ca81a: JA 0x10ca82e
         .          .    10ca81c: LEAQ 0x1(R10), R9
         .          .    10ca820: MOVQ R9, 0x8(DI)(BX*8)
         .          .    10ca825: MOVQ AX, 0(R8)(R10*8)
         .          .    10ca829: JMP 0x10ca6d8
         .          .    10ca82e: MOVQ R12, 0xb8(SP)
         .          .    10ca836: MOVQ DI, 0xb0(SP)
         .          .    10ca83e: LEAQ runtime.types+86176(SB), AX
         .          .    10ca845: MOVQ AX, 0(SP)
         .          .    10ca849: MOVQ R8, 0x8(SP)
         .          .    10ca84e: MOVQ R10, 0x10(SP)
         .          .    10ca853: MOVQ R9, 0x18(SP)
         .          .    10ca858: MOVQ R11, 0x20(SP)
         .      120ms    10ca85d: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca862: MOVQ 0x28(SP), AX                       ;graph.go:113
         .          .    10ca867: MOVQ 0x30(SP), CX
         .          .    10ca86c: MOVQ 0x38(SP), DX
         .          .    10ca871: MOVQ 0x80(SP), BX
         .          .    10ca879: MOVQ 0xb0(SP), SI
         .          .    10ca881: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca886: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca88d: JNE 0x10ca8b6
         .          .    10ca88f: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca893: MOVQ 0xe8(SP), DX                       ;graph.go:111
         .          .    10ca89b: MOVQ SI, DI                             ;graph.go:113
         .          .    10ca89e: MOVQ CX, R10
         .          .    10ca8a1: MOVQ AX, R8
         .          .    10ca8a4: MOVQ 0x60(SP), AX
         .          .    10ca8a9: MOVQ 0x90(SP), SI                       ;graph.go:112
         .          .    10ca8b1: JMP 0x10ca81c                           ;graph.go:113
         .          .    10ca8b6: MOVQ 0xb8(SP), DI
         .          .    10ca8be: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca8c3: JMP 0x10ca893
         .          .    10ca8c5: MOVQ BX, 0xa8(SP)                       ;graph.go:112
         .          .    10ca8cd: MOVQ R11, 0xa0(SP)
         .          .    10ca8d5: LEAQ runtime.types+86176(SB), AX
         .          .    10ca8dc: MOVQ AX, 0(SP)
         .          .    10ca8e0: MOVQ R9, 0x8(SP)
         .          .    10ca8e5: MOVQ R8, 0x10(SP)
         .          .    10ca8ea: MOVQ DI, 0x18(SP)
         .          .    10ca8ef: MOVQ R10, 0x20(SP)
         .      140ms    10ca8f4: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca8f9: MOVQ 0x28(SP), AX                       ;graph.go:112
         .          .    10ca8fe: MOVQ 0x30(SP), CX
         .          .    10ca903: MOVQ 0x38(SP), DX
         .          .    10ca908: MOVQ 0x90(SP), BX
         .          .    10ca910: MOVQ 0xa8(SP), SI
         .          .    10ca918: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca91d: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca924: JNE 0x10ca94d
         .          .    10ca926: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca92a: MOVQ 0xe8(SP), DX                       ;graph.go:113
         .          .    10ca932: MOVQ SI, BX                             ;graph.go:112
         .          .    10ca935: MOVQ 0x90(SP), SI
         .          .    10ca93d: MOVQ CX, R8
         .          .    10ca940: MOVQ AX, R9
         .          .    10ca943: MOVQ 0x60(SP), AX                       ;graph.go:113
         .          .    10ca948: JMP 0x10ca7d6                           ;graph.go:112
         .          .    10ca94d: MOVQ 0xa0(SP), DI
         .          .    10ca955: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca95a: JMP 0x10ca92a
         .          .    10ca95c: MOVQ 0x60(SP), AX                       ;graph.go:104
         .          .    10ca961: MOVQ 0xe8(SP), DX                       ;graph.go:111
         .          .    10ca969: MOVQ 0x90(SP), SI                       ;graph.go:112
         .          .    10ca971: JMP 0x10ca6d8                           ;graph.go:110
         .          .    10ca976: MOVQ 0x60(SP), DX                       ;graph.go:104
         .          .    10ca97b: LEAQ 0x1(DX), AX
         .          .    10ca97f: MOVQ 0xe8(SP), DX
         .          .    10ca987: MOVQ 0x8(DX), BX
         .          .    10ca98b: MOVQ 0(DX), SI
         .          .    10ca98e: CMPQ BX, AX
         .          .    10ca991: JGE 0x10caaa0
         .          .    10ca997: MOVQ AX, 0x60(SP)
         .          .    10ca99c: MOVQ CX, 0x50(SP)                       ;graph.go:107
         .          .    10ca9a1: LEAQ 0(AX)(AX*2), CX                    ;graph.go:105
         .          .    10ca9a5: MOVQ CX, 0x90(SP)
         .          .    10ca9ad: MOVQ 0x10(SI)(CX*8), DX
         .          .    10ca9b2: MOVQ DX, 0x70(SP)
         .          .    10ca9b7: MOVQ 0x8(SI)(CX*8), BX
         .          .    10ca9bc: MOVQ BX, 0x68(SP)
         .          .    10ca9c1: MOVQ 0(SI)(CX*8), SI
         .          .    10ca9c5: MOVQ SI, 0x98(SP)
         .          .    10ca9cd: MOVQ 0xf0(SP), DI                       ;graph.go:106
         .          .    10ca9d5: MOVQ DI, 0(SP)
         .          .    10ca9d9: MOVQ SI, 0x8(SP)
         .          .    10ca9de: MOVQ BX, 0x10(SP)
         .          .    10ca9e3: MOVQ DX, 0x18(SP)
         .      260ms    10ca9e8: CALL main.(*index).nearCount(SB)        ;main.(*Graph).buildAdjList graph.go:106
         .          .    10ca9ed: MOVQ 0x20(SP), AX                       ;graph.go:106
         .          .    10ca9f2: MOVQ AX, 0x78(SP)
         .          .    10ca9f7: LEAQ runtime.types+86176(SB), CX        ;graph.go:108
         .          .    10ca9fe: MOVQ CX, 0(SP)
         .          .    10caa02: MOVQ AX, 0x8(SP)
         .          .    10caa07: MOVQ AX, 0x10(SP)
         .      130ms    10caa0c: CALL runtime.makeslice(SB)              ;main.(*Graph).buildAdjList graph.go:108
         .          .    10caa11: MOVQ 0x18(SP), AX                       ;graph.go:108
         .          .    10caa16: MOVQ AX, 0xc0(SP)
         .          .    10caa1e: MOVQ 0xf0(SP), CX                       ;graph.go:109
         .          .    10caa26: MOVQ CX, 0(SP)
         .          .    10caa2a: MOVQ 0x98(SP), DX
         .          .    10caa32: MOVQ DX, 0x8(SP)
         .          .    10caa37: MOVQ 0x68(SP), BX
         .          .    10caa3c: MOVQ BX, 0x10(SP)
         .          .    10caa41: MOVQ 0x70(SP), SI
         .          .    10caa46: MOVQ SI, 0x18(SP)
         .          .    10caa4b: MOVQ AX, 0x20(SP)
         .          .    10caa50: MOVQ 0x78(SP), DI
         .          .    10caa55: MOVQ DI, 0x28(SP)
         .          .    10caa5a: MOVQ DI, 0x30(SP)
         .      570ms    10caa5f: CALL main.(*index).near(SB)             ;main.(*Graph).buildAdjList graph.go:109
         .          .    10caa64: MOVQ 0x78(SP), AX                       ;graph.go:107
         .          .    10caa69: MOVQ 0x50(SP), CX
         .          .    10caa6e: ADDQ AX, CX
         .          .    10caa71: MOVQ CX, 0x50(SP)
         .          .    10caa76: MOVQ 0x70(SP), DX                       ;graph.go:110
         .          .    10caa7b: MOVQ 0xe8(SP), BX
         .          .    10caa83: MOVQ 0x98(SP), SI
         .          .    10caa8b: MOVQ 0x68(SP), DI
         .          .    10caa90: MOVQ 0xc0(SP), R8
         .          .    10caa98: XORL R9, R9
         .          .    10caa9b: JMP 0x10ca71f
         .          .    10caaa0: XORPS X0, X0                            ;graph.go:117
         .          .    10caaa3: CVTSI2SDQ CX, X0
         .          .    10caaa8: XORPS X1, X1
         .          .    10caaab: CVTSI2SDQ BX, X1
         .          .    10caab0: DIVSD X1, X0
         .          .    10caab4: MOVSD_XMM X0, 0(SP)
         .          .    10caab9: CALL runtime.convT64(SB)
         .          .    10caabe: MOVQ 0x8(SP), AX
         .          .    10caac3: XORPS X0, X0
         .          .    10caac6: MOVUPS X0, 0xc8(SP)
         .          .    10caace: LEAQ runtime.types+84448(SB), CX
         .          .    10caad5: MOVQ CX, 0xc8(SP)
         .          .    10caadd: MOVQ AX, 0xd0(SP)
         .          .    10caae5: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10caaec: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10caaf3: MOVQ CX, 0(SP)
         .          .    10caaf7: MOVQ AX, 0x8(SP)
         .          .    10caafc: LEAQ go.string.*+3298(SB), AX
         .          .    10cab03: MOVQ AX, 0x10(SP)
         .          .    10cab08: MOVQ $0xa, 0x18(SP)
         .          .    10cab11: LEAQ 0xc8(SP), AX
         .          .    10cab19: MOVQ AX, 0x20(SP)
         .          .    10cab1e: MOVQ $0x1, 0x28(SP)
         .          .    10cab27: MOVQ $0x1, 0x30(SP)
         .          .    10cab30: CALL fmt.Fprintf(SB)
         .          .    10cab35: MOVQ 0xd8(SP), BP
         .          .    10cab3d: ADDQ $0xe0, SP
         .          .    10cab44: RET
         .          .    10cab45: MOVQ BX, AX                             ;graph.go:113
         .          .    10cab48: CALL runtime.panicIndex(SB)
         .          .    10cab4d: CALL runtime.panicIndex(SB)             ;graph.go:112
         .          .    10cab52: MOVQ R10, AX                            ;graph.go:111
         .          .    10cab55: MOVQ R11, CX
         .          .    10cab58: CALL runtime.panicIndex(SB)
         .          .    10cab5d: NOPL
         .          .    10cab5e: CALL runtime.morestack_noctxt(SB)       ;graph.go:102
         .          .    10cab63: JMP main.(*Graph).buildAdjList(SB)
         .          .    10cab68: INT $0x3
         .          .    10cab69: INT $0x3
         .          .    10cab6a: INT $0x3
         .          .    10cab6b: INT $0x3
         .          .    10cab6c: INT $0x3
         .          .    10cab6d: INT $0x3
         .          .    10cab6e: INT $0x3
ROUTINE ======================== main.(*index).add
      40ms      500ms (flat, cum)  9.11% of Total
         .          .    10cc260: MOVQ GS:0x30, CX                        ;index.go:41
         .          .    10cc269: LEAQ -0x18(SP), AX
         .          .    10cc26e: CMPQ 0x10(CX), AX
         .          .    10cc272: JBE 0x10cc566
         .          .    10cc278: SUBQ $0x98, SP
         .          .    10cc27f: MOVQ BP, 0x90(SP)
         .          .    10cc287: LEAQ 0x90(SP), BP
         .          .    10cc28f: MOVQ 0xa0(SP), BX                       ;index.go:44
         .          .    10cc297: MOVQ 0x38(BX), DX
         .          .    10cc29b: MOVQ 0x28(BX), SI
         .          .    10cc29f: MOVQ 0xb8(SP), DI
         .          .    10cc2a7: LEAQ -0x1(DI), CX
         .          .    10cc2ab: CMPQ DX, CX
         .          .    10cc2ae: JA 0x10cc560
         .          .    10cc2b4: MOVQ CX, 0x58(SP)
         .          .    10cc2b9: MOVQ DX, 0x50(SP)
         .          .    10cc2be: MOVQ SI, 0x78(SP)
         .          .    10cc2c3: MOVQ 0xb0(SP), R8                       ;index.go:45
         .          .    10cc2cb: XORL AX, AX
         .          .    10cc2cd: JMP 0x10cc322
         .          .    10cc2cf: LEAQ 0x1(R8), R10                       ;index.go:51
         .          .    10cc2d3: MOVQ R10, 0x8(BX)(SI*8)
         .          .    10cc2d8: MOVQ 0xa8(SP), R10
         .          .    10cc2e0: MOVQ R10, 0(R9)(R8*8)
         .          .    10cc2e4: MOVQ 0x78(SP), R9                       ;index.go:45
         .          .    10cc2e9: MOVQ 0x50(SP), R11
         .          .    10cc2ee: MOVQ 0x58(SP), R12
         .          .    10cc2f3: MOVQ 0xb8(SP), R13
         .          .    10cc2fb: MOVQ 0xb0(SP), R14
         .          .    10cc303: MOVQ 0x68(SP), R15
         .          .    10cc308: MOVQ R12, CX                            ;index.go:135
         .          .    10cc30b: MOVQ R11, DX                            ;index.go:134
         .          .    10cc30e: MOVQ 0xa0(SP), BX                       ;index.go:48
         .          .    10cc316: MOVQ R9, SI                             ;index.go:135
         .          .    10cc319: MOVQ R13, DI                            ;index.go:45
         .          .    10cc31c: MOVQ R14, R8                            ;index.go:136
         .          .    10cc31f: MOVQ R15, AX                            ;index.go:45
         .          .    10cc322: CMPQ DI, AX
         .          .    10cc325: JGE 0x10cc533
         .          .    10cc32b: NOPL                                    ;index.go:46
         .          .    10cc32c: CMPQ DX, AX                             ;index.go:134
         .          .    10cc32f: JA 0x10cc558
         .          .    10cc335: CMPQ CX, AX                             ;index.go:135
         .          .    10cc338: JA 0x10cc553
         .          .    10cc33e: MOVQ AX, 0x48(SP)                       ;index.go:45
         .          .    10cc343: SUBQ AX, CX                             ;index.go:135
         .          .    10cc346: MOVQ CX, 0x40(SP)
         .          .    10cc34b: SUBQ AX, DX
         .          .    10cc34e: NEGQ DX
         .          .    10cc351: SARQ $0x3f, DX
         .          .    10cc355: ANDQ AX, DX
         .          .    10cc358: ADDQ SI, DX
         .          .    10cc35b: MOVQ DX, 0x70(SP)
         .          .    10cc360: CMPQ R8, SI                             ;index.go:136
         .          .    10cc363: JE 0x10cc378
         .          .    10cc365: MOVQ SI, 0(SP)
         .          .    10cc369: MOVQ R8, 0x8(SP)
         .          .    10cc36e: MOVQ AX, 0x10(SP)
         .          .    10cc373: CALL runtime.memmove(SB)
         .          .    10cc378: MOVQ 0x48(SP), AX                       ;index.go:137
         .          .    10cc37d: INCQ AX
         .          .    10cc380: MOVQ AX, 0x68(SP)
         .          .    10cc385: MOVQ 0xb8(SP), CX
         .          .    10cc38d: SUBQ AX, CX
         .          .    10cc390: MOVQ 0x40(SP), BX
         .          .    10cc395: CMPQ CX, BX
         .          .    10cc398: CMOVG CX, BX
         .          .    10cc39c: MOVQ 0xc0(SP), CX
         .          .    10cc3a4: SUBQ AX, CX
         .          .    10cc3a7: NEGQ CX
         .          .    10cc3aa: SARQ $0x3f, CX
         .          .    10cc3ae: ANDQ AX, CX
         .          .    10cc3b1: MOVQ 0xb0(SP), DI
         .          .    10cc3b9: ADDQ DI, CX
         .          .    10cc3bc: MOVQ 0x70(SP), R8
         .          .    10cc3c1: CMPQ R8, CX
         .          .    10cc3c4: JNE 0x10cc51b
         .          .    10cc3ca: MOVQ 0xa0(SP), AX                       ;index.go:48
         .          .    10cc3d2: MOVQ 0(AX), CX
         .          .    10cc3d5: MOVQ 0x8(AX), DX
         .          .    10cc3d9: MOVQ 0x20(CX), CX
         .          .    10cc3dd: MOVQ DX, 0(SP)
         .          .    10cc3e1: CALL CX
         .          .    10cc3e3: MOVQ 0xa0(SP), AX                       ;index.go:49
         .          .    10cc3eb: MOVQ 0(AX), CX
         .          .    10cc3ee: MOVQ 0x8(AX), DX
         .          .    10cc3f2: MOVQ 0x40(CX), CX
         .          .    10cc3f6: MOVQ DX, 0(SP)
         .          .    10cc3fa: MOVQ 0x78(SP), DX
         .          .    10cc3ff: MOVQ DX, 0x8(SP)
         .          .    10cc404: MOVQ 0x58(SP), BX
         .          .    10cc409: MOVQ BX, 0x10(SP)
         .          .    10cc40e: MOVQ 0x50(SP), SI
         .          .    10cc413: MOVQ SI, 0x18(SP)
         .          .    10cc418: CALL CX
         .          .    10cc41a: MOVQ 0xa0(SP), AX                       ;index.go:50
         .          .    10cc422: MOVQ 0(AX), CX
         .          .    10cc425: MOVQ 0x8(AX), DX
         .          .    10cc429: MOVQ 0x38(CX), CX
         .          .    10cc42d: MOVQ DX, 0(SP)
         .       10ms    10cc431: CALL CX                                 ;main.(*index).add index.go:50
         .          .    10cc433: MOVQ 0x8(SP), AX                        ;index.go:50
         .          .    10cc438: MOVQ 0xa0(SP), CX
         .          .    10cc440: MOVQ 0x40(CX), DX
         .          .    10cc444: TESTQ DX, DX
         .          .    10cc447: JE 0x10cc54e
         .          .    10cc44d: MOVQ DX, BX
         .          .    10cc450: XORL DX, DX
         .          .    10cc452: DIVQ BX
      10ms       10ms    10cc455: MOVQ 0x10(CX), BX                       ;main.(*index).add index.go:51
         .          .    10cc459: MOVQ 0x18(CX), SI                       ;index.go:51
         .          .    10cc45d: CMPQ SI, DX
         .          .    10cc460: JAE 0x10cc543
         .          .    10cc466: LEAQ 0(DX)(DX*2), SI
         .          .    10cc46a: MOVQ 0x10(BX)(SI*8), DI
      30ms       30ms    10cc46f: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*index).add index.go:51
         .          .    10cc474: MOVQ 0(BX)(SI*8), R9                    ;index.go:51
         .          .    10cc478: LEAQ 0x1(R8), R10
         .          .    10cc47c: LEAQ 0(BX)(SI*8), R11
         .          .    10cc480: CMPQ DI, R10
         .          .    10cc483: JBE 0x10cc2cf
         .          .    10cc489: MOVQ BX, 0x88(SP)
         .          .    10cc491: MOVQ SI, 0x60(SP)
         .          .    10cc496: MOVQ R11, 0x80(SP)
         .          .    10cc49e: LEAQ runtime.types+86176(SB), AX
         .          .    10cc4a5: MOVQ AX, 0(SP)
         .          .    10cc4a9: MOVQ R9, 0x8(SP)
         .          .    10cc4ae: MOVQ R8, 0x10(SP)
         .          .    10cc4b3: MOVQ DI, 0x18(SP)
         .          .    10cc4b8: MOVQ R10, 0x20(SP)
         .      450ms    10cc4bd: CALL runtime.growslice(SB)              ;main.(*index).add index.go:51
         .          .    10cc4c2: MOVQ 0x28(SP), AX                       ;index.go:51
         .          .    10cc4c7: MOVQ 0x30(SP), CX
         .          .    10cc4cc: MOVQ 0x38(SP), DX
         .          .    10cc4d1: MOVQ 0x60(SP), BX
         .          .    10cc4d6: MOVQ 0x88(SP), SI
         .          .    10cc4de: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10cc4e3: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc4ea: JNE 0x10cc50c
         .          .    10cc4ec: MOVQ AX, 0(SI)(BX*8)
         .          .    10cc4f0: MOVQ CX, R8
         .          .    10cc4f3: MOVQ AX, R9
         .          .    10cc4f6: MOVQ 0xa0(SP), CX                       ;index.go:48
         .          .    10cc4fe: MOVQ BX, DX                             ;index.go:51
         .          .    10cc501: MOVQ SI, BX
         .          .    10cc504: MOVQ DX, SI
         .          .    10cc507: JMP 0x10cc2cf
         .          .    10cc50c: MOVQ 0x80(SP), DI
         .          .    10cc514: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc519: JMP 0x10cc4f0
         .          .    10cc51b: MOVQ R8, 0(SP)                          ;index.go:137
         .          .    10cc51f: MOVQ CX, 0x8(SP)
         .          .    10cc524: MOVQ BX, 0x10(SP)
         .          .    10cc529: CALL runtime.memmove(SB)
         .          .    10cc52e: JMP 0x10cc3ca
         .          .    10cc533: MOVQ 0x90(SP), BP
         .          .    10cc53b: ADDQ $0x98, SP
         .          .    10cc542: RET
         .          .    10cc543: MOVQ DX, AX                             ;index.go:51
         .          .    10cc546: MOVQ SI, CX
         .          .    10cc549: CALL runtime.panicIndexU(SB)
         .          .    10cc54e: CALL runtime.panicdivide(SB)            ;index.go:50
         .          .    10cc553: CALL runtime.panicSliceB(SB)            ;index.go:135
         .          .    10cc558: MOVQ AX, CX                             ;index.go:134
         .          .    10cc55b: CALL runtime.panicSliceAcap(SB)
         .          .    10cc560: CALL runtime.panicSliceAcap(SB)         ;index.go:44
         .          .    10cc565: NOPL
         .          .    10cc566: CALL runtime.morestack_noctxt(SB)       ;index.go:41
         .          .    10cc56b: ?
         .          .    10cc56c: LOCK CLD
         .          .    10cc56e: ?
ROUTINE ======================== main.(*index).near
      70ms      570ms (flat, cum) 10.38% of Total
         .          .    10cc900: MOVQ GS:0x30, CX                        ;index.go:107
         .          .    10cc909: LEAQ 0xfffffe70(SP), AX
         .          .    10cc911: CMPQ 0x10(CX), AX
         .          .    10cc915: JBE 0x10ccd3a
         .          .    10cc91b: SUBQ $0x210, SP
         .          .    10cc922: MOVQ BP, 0x208(SP)
         .          .    10cc92a: LEAQ 0x208(SP), BP
         .          .    10cc932: LEAQ 0x78(SP), DI                       ;index.go:108
         .          .    10cc937: XORPS X0, X0
         .          .    10cc93a: MOVQ BP, -0x10(SP)
         .          .    10cc93f: LEAQ -0x10(SP), BP
         .          .    10cc944: CALL 0x105866e
         .          .    10cc949: MOVQ 0(BP), BP
         .          .    10cc94d: MOVQ 0x228(SP), AX                      ;index.go:109
         .          .    10cc955: LEAQ 0x1(AX), CX
         .          .    10cc959: CMPQ $0x30, CX
         .          .    10cc95d: JA 0x10ccd2f
         .          .    10cc963: MOVQ CX, 0x60(SP)
         .          .    10cc968: MOVQ 0x218(SP), AX                      ;index.go:110
         .          .    10cc970: MOVQ 0(AX), CX
         .          .    10cc973: MOVQ 0x8(AX), DX
         .          .    10cc977: MOVQ 0x20(CX), CX
         .          .    10cc97b: MOVQ DX, 0(SP)
         .          .    10cc97f: CALL CX
         .          .    10cc981: MOVQ 0x218(SP), AX                      ;index.go:111
         .          .    10cc989: MOVQ 0(AX), CX
         .          .    10cc98c: MOVQ 0x8(AX), DX
         .          .    10cc990: MOVQ 0x40(CX), CX
         .          .    10cc994: MOVQ DX, 0(SP)
         .          .    10cc998: MOVQ 0x220(SP), DX
         .          .    10cc9a0: MOVQ DX, 0x8(SP)
         .          .    10cc9a5: MOVQ 0x228(SP), BX
         .          .    10cc9ad: MOVQ BX, 0x10(SP)
         .          .    10cc9b2: MOVQ 0x230(SP), SI
         .          .    10cc9ba: MOVQ SI, 0x18(SP)
         .          .    10cc9bf: CALL CX
         .          .    10cc9c1: MOVQ 0x218(SP), AX                      ;index.go:112
         .          .    10cc9c9: MOVQ 0(AX), CX
         .          .    10cc9cc: MOVQ 0x8(AX), DX
         .          .    10cc9d0: MOVQ 0x38(CX), CX
         .          .    10cc9d4: MOVQ DX, 0(SP)
         .          .    10cc9d8: CALL CX
         .          .    10cc9da: MOVQ 0x8(SP), AX
         .          .    10cc9df: MOVQ 0x218(SP), CX
         .          .    10cc9e7: MOVQ 0x40(CX), DX
         .          .    10cc9eb: TESTQ DX, DX
         .          .    10cc9ee: JE 0x10ccd2a
         .          .    10cc9f4: MOVQ DX, BX
         .          .    10cc9f7: XORL DX, DX
         .          .    10cc9f9: DIVQ BX
         .          .    10cc9fc: MOVQ 0x60(SP), BX
         .          .    10cca01: TESTQ BX, BX
         .          .    10cca04: JBE 0x10ccd20
         .          .    10cca0a: MOVQ DX, 0x78(SP)
         .          .    10cca0f: MOVQ 0x28(CX), SI                       ;index.go:113
         .          .    10cca13: MOVQ 0x38(CX), DX
         .          .    10cca17: MOVQ 0x228(SP), DI
         .          .    10cca1f: LEAQ -0x1(DI), R8
         .          .    10cca23: CMPQ DX, R8
         .          .    10cca26: JA 0x10ccd18
         .          .    10cca2c: MOVQ R8, 0x68(SP)
         .          .    10cca31: MOVQ SI, 0x200(SP)
         .          .    10cca39: MOVQ DX, 0x48(SP)
         .          .    10cca3e: MOVQ 0x220(SP), R9                      ;index.go:114
         .          .    10cca46: XORL AX, AX
         .          .    10cca48: JMP 0x10cca8a
         .          .    10cca4a: MOVQ AX, R10                            ;index.go:119
         .          .    10cca4d: SHLQ $0x3, AX
         .          .    10cca51: MOVQ DX, 0x78(SP)(AX*1)
         .          .    10cca56: MOVQ 0x228(SP), R11                     ;index.go:114
         .          .    10cca5e: MOVQ 0x200(SP), R12
         .          .    10cca66: MOVQ 0x48(SP), R13
         .          .    10cca6b: MOVQ 0x68(SP), R14
         .          .    10cca70: MOVQ 0x220(SP), R15
         .          .    10cca78: MOVQ R13, DX                            ;index.go:134
         .          .    10cca7b: MOVQ R12, SI                            ;index.go:135
         .          .    10cca7e: MOVQ R11, DI                            ;index.go:114
         .          .    10cca81: MOVQ R14, R8                            ;index.go:135
         .          .    10cca84: MOVQ R15, R9                            ;index.go:136
         .          .    10cca87: MOVQ R10, AX                            ;index.go:114
         .          .    10cca8a: CMPQ DI, AX
         .          .    10cca8d: JGE 0x10ccbf6
         .          .    10cca93: NOPL                                    ;index.go:115
         .          .    10cca94: CMPQ DX, AX                             ;index.go:134
         .          .    10cca97: JA 0x10ccd10
         .          .    10cca9d: CMPQ R8, AX                             ;index.go:135
         .          .    10ccaa0: JA 0x10ccd08
         .          .    10ccaa6: MOVQ AX, 0x40(SP)                       ;index.go:114
         .          .    10ccaab: SUBQ AX, R8                             ;index.go:135
         .          .    10ccaae: MOVQ R8, 0x38(SP)
         .          .    10ccab3: SUBQ AX, DX
         .          .    10ccab6: NEGQ DX
         .          .    10ccab9: SARQ $0x3f, DX
         .          .    10ccabd: ANDQ AX, DX
         .          .    10ccac0: ADDQ SI, DX
         .          .    10ccac3: MOVQ DX, 0x1f8(SP)
         .          .    10ccacb: CMPQ R9, SI                             ;index.go:136
         .          .    10ccace: JE 0x10ccae3
         .          .    10ccad0: MOVQ SI, 0(SP)
         .          .    10ccad4: MOVQ R9, 0x8(SP)
         .          .    10ccad9: MOVQ AX, 0x10(SP)
         .          .    10ccade: CALL runtime.memmove(SB)
         .          .    10ccae3: MOVQ 0x40(SP), AX                       ;index.go:137
         .          .    10ccae8: INCQ AX
         .          .    10ccaeb: MOVQ AX, 0x70(SP)
         .          .    10ccaf0: MOVQ 0x228(SP), CX
         .          .    10ccaf8: SUBQ AX, CX
         .          .    10ccafb: MOVQ 0x38(SP), BX
         .          .    10ccb00: CMPQ CX, BX
         .          .    10ccb03: CMOVG CX, BX
         .          .    10ccb07: MOVQ 0x230(SP), CX
         .          .    10ccb0f: SUBQ AX, CX
         .          .    10ccb12: NEGQ CX
         .          .    10ccb15: SARQ $0x3f, CX
         .          .    10ccb19: ANDQ AX, CX
         .          .    10ccb1c: MOVQ 0x220(SP), DI
         .          .    10ccb24: ADDQ DI, CX
         .          .    10ccb27: MOVQ 0x1f8(SP), R8
         .          .    10ccb2f: CMPQ R8, CX
         .          .    10ccb32: JNE 0x10ccbde
         .          .    10ccb38: MOVQ 0x218(SP), AX                      ;index.go:117
         .          .    10ccb40: MOVQ 0(AX), CX
         .          .    10ccb43: MOVQ 0x8(AX), DX
         .          .    10ccb47: MOVQ 0x20(CX), CX
         .          .    10ccb4b: MOVQ DX, 0(SP)
         .          .    10ccb4f: CALL CX
         .          .    10ccb51: MOVQ 0x218(SP), AX                      ;index.go:118
         .          .    10ccb59: MOVQ 0(AX), CX
         .          .    10ccb5c: MOVQ 0x8(AX), DX
         .          .    10ccb60: MOVQ 0x40(CX), CX
         .          .    10ccb64: MOVQ DX, 0(SP)
         .          .    10ccb68: MOVQ 0x200(SP), DX
         .          .    10ccb70: MOVQ DX, 0x8(SP)
         .          .    10ccb75: MOVQ 0x68(SP), BX
         .          .    10ccb7a: MOVQ BX, 0x10(SP)
         .          .    10ccb7f: MOVQ 0x48(SP), SI
         .          .    10ccb84: MOVQ SI, 0x18(SP)
         .          .    10ccb89: CALL CX
         .          .    10ccb8b: MOVQ 0x218(SP), AX                      ;index.go:119
         .          .    10ccb93: MOVQ 0(AX), CX
         .          .    10ccb96: MOVQ 0x8(AX), DX
         .          .    10ccb9a: MOVQ 0x38(CX), CX
         .          .    10ccb9e: MOVQ DX, 0(SP)
         .       60ms    10ccba2: CALL CX                                 ;main.(*index).near index.go:119
         .          .    10ccba4: MOVQ 0x8(SP), AX                        ;index.go:119
         .          .    10ccba9: MOVQ 0x218(SP), CX
         .          .    10ccbb1: MOVQ 0x40(CX), DX
         .          .    10ccbb5: TESTQ DX, DX
         .          .    10ccbb8: JE 0x10ccd03
         .          .    10ccbbe: MOVQ DX, BX
      10ms       10ms    10ccbc1: XORL DX, DX                             ;main.(*index).near index.go:119
         .          .    10ccbc3: DIVQ BX                                 ;index.go:119
      30ms       30ms    10ccbc6: MOVQ 0x70(SP), AX                       ;main.(*index).near index.go:119
         .          .    10ccbcb: MOVQ 0x60(SP), BX                       ;index.go:119
         .          .    10ccbd0: CMPQ BX, AX
         .          .    10ccbd3: JB 0x10cca4a
         .          .    10ccbd9: JMP 0x10cccfb
         .          .    10ccbde: MOVQ R8, 0(SP)                          ;index.go:137
         .          .    10ccbe2: MOVQ CX, 0x8(SP)
         .          .    10ccbe7: MOVQ BX, 0x10(SP)
         .          .    10ccbec: CALL runtime.memmove(SB)
         .          .    10ccbf1: JMP 0x10ccb38
         .          .    10ccbf6: MOVQ 0x248(SP), DX                      ;index.go:123
         .          .    10ccbfe: MOVQ 0x240(SP), SI
         .          .    10ccc06: MOVQ 0x238(SP), DI
         .          .    10ccc0e: XORL AX, AX
         .          .    10ccc10: XORL R8, R8
         .          .    10ccc13: JMP 0x10ccc21
         .          .    10ccc15: INCQ AX
         .          .    10ccc18: MOVQ R11, DX                            ;index.go:127
         .          .    10ccc1b: MOVQ SI, R8
         .          .    10ccc1e: MOVQ R10, SI
         .          .    10ccc21: CMPQ BX, AX                             ;index.go:123
         .          .    10ccc24: JGE 0x10cccd5
         .          .    10ccc2a: MOVQ 0x78(SP)(AX*8), R9                 ;index.go:124
         .          .    10ccc2f: MOVQ 0x10(CX), R10                      ;index.go:125
         .          .    10ccc33: MOVQ 0x18(CX), R11
         .          .    10ccc37: CMPQ R11, R9
         .          .    10ccc3a: JAE 0x10cccf0
         .          .    10ccc40: LEAQ 0(R9)(R9*2), R9
         .          .    10ccc44: MOVQ 0x8(R10)(R9*8), R11
      10ms       10ms    10ccc49: MOVQ 0(R10)(R9*8), R9                   ;main.(*index).near index.go:125
      20ms       20ms    10ccc4d: CMPQ SI, R8                             ;main.(*index).near index.go:127
         .          .    10ccc50: JA 0x10ccce5                            ;index.go:127
         .          .    10ccc56: MOVQ SI, R10
         .          .    10ccc59: SUBQ R8, SI
         .          .    10ccc5c: CMPQ R11, SI
         .          .    10ccc5f: CMOVG R11, SI
         .          .    10ccc63: MOVQ DX, R11
         .          .    10ccc66: SUBQ R8, DX
         .          .    10ccc69: NEGQ DX
         .          .    10ccc6c: SHLQ $0x3, R8
         .          .    10ccc70: SARQ $0x3f, DX
         .          .    10ccc74: ANDQ DX, R8
         .          .    10ccc77: LEAQ 0(DI)(R8*1), DX
         .          .    10ccc7b: CMPQ R9, DX
         .          .    10ccc7e: JE 0x10ccc15
         .          .    10ccc80: MOVQ AX, 0x58(SP)                       ;index.go:123
         .          .    10ccc85: MOVQ SI, 0x50(SP)                       ;index.go:127
         .          .    10ccc8a: MOVQ DX, 0(SP)
         .          .    10ccc8e: MOVQ R9, 0x8(SP)
         .          .    10ccc93: SHLQ $0x3, SI
         .          .    10ccc97: MOVQ SI, 0x10(SP)
         .      440ms    10ccc9c: CALL runtime.memmove(SB)                ;main.(*index).near index.go:127
         .          .    10ccca1: MOVQ 0x58(SP), AX                       ;index.go:123
         .          .    10ccca6: MOVQ 0x218(SP), CX                      ;index.go:125
         .          .    10cccae: MOVQ 0x60(SP), BX                       ;index.go:123
         .          .    10cccb3: MOVQ 0x50(SP), SI                       ;index.go:127
         .          .    10cccb8: MOVQ 0x238(SP), DI
         .          .    10cccc0: MOVQ 0x240(SP), R10
         .          .    10cccc8: MOVQ 0x248(SP), R11
         .          .    10cccd0: JMP 0x10ccc15
         .          .    10cccd5: MOVQ 0x208(SP), BP
         .          .    10cccdd: ADDQ $0x210, SP
         .          .    10ccce4: RET
         .          .    10ccce5: MOVQ R8, AX
         .          .    10ccce8: MOVQ SI, CX
         .          .    10ccceb: CALL runtime.panicSliceB(SB)
         .          .    10cccf0: MOVQ R9, AX                             ;index.go:125
         .          .    10cccf3: MOVQ R11, CX
         .          .    10cccf6: CALL runtime.panicIndexU(SB)
         .          .    10cccfb: MOVQ BX, CX                             ;index.go:119
         .          .    10cccfe: CALL runtime.panicIndex(SB)
         .          .    10ccd03: CALL runtime.panicdivide(SB)
         .          .    10ccd08: MOVQ R8, CX                             ;index.go:135
         .          .    10ccd0b: CALL runtime.panicSliceB(SB)
         .          .    10ccd10: MOVQ AX, CX                             ;index.go:134
         .          .    10ccd13: CALL runtime.panicSliceAcap(SB)
         .          .    10ccd18: MOVQ R8, CX                             ;index.go:113
         .          .    10ccd1b: CALL runtime.panicSliceAcap(SB)
         .          .    10ccd20: XORL AX, AX                             ;index.go:112
         .          .    10ccd22: MOVQ BX, CX
         .          .    10ccd25: CALL runtime.panicIndex(SB)
         .          .    10ccd2a: CALL runtime.panicdivide(SB)
         .          .    10ccd2f: MOVL $0x30, DX                          ;index.go:109
         .          .    10ccd34: CALL runtime.panicSliceAlen(SB)
         .          .    10ccd39: NOPL
         .          .    10ccd3a: CALL runtime.morestack_noctxt(SB)       ;index.go:107
         .          .    10ccd3f: JMP main.(*index).near(SB)
         .          .    10ccd44: INT $0x3
         .          .    10ccd45: INT $0x3
         .          .    10ccd46: INT $0x3
         .          .    10ccd47: INT $0x3
         .          .    10ccd48: INT $0x3
         .          .    10ccd49: INT $0x3
         .          .    10ccd4a: INT $0x3
         .          .    10ccd4b: INT $0x3
         .          .    10ccd4c: INT $0x3
         .          .    10ccd4d: INT $0x3
         .          .    10ccd4e: INT $0x3
ROUTINE ======================== main.(*index).nearCount
     190ms      270ms (flat, cum)  4.92% of Total
         .          .    10cc570: MOVQ GS:0x30, CX                        ;index.go:69
         .          .    10cc579: LEAQ 0xfffffe80(SP), AX
         .          .    10cc581: CMPQ 0x10(CX), AX
         .          .    10cc585: JBE 0x10cc8f3
         .          .    10cc58b: SUBQ $0x200, SP
         .          .    10cc592: MOVQ BP, 0x1f8(SP)
         .          .    10cc59a: LEAQ 0x1f8(SP), BP
         .          .    10cc5a2: LEAQ 0x68(SP), DI                       ;index.go:70
         .          .    10cc5a7: XORPS X0, X0
         .          .    10cc5aa: MOVQ BP, -0x10(SP)
         .          .    10cc5af: LEAQ -0x10(SP), BP
         .          .    10cc5b4: CALL 0x105866e
         .          .    10cc5b9: MOVQ 0(BP), BP
         .          .    10cc5bd: MOVQ 0x218(SP), AX                      ;index.go:71
         .          .    10cc5c5: LEAQ 0x1(AX), CX
         .          .    10cc5c9: CMPQ $0x30, CX
         .          .    10cc5cd: JA 0x10cc8e8
         .          .    10cc5d3: MOVQ CX, 0x50(SP)
         .          .    10cc5d8: MOVQ 0x208(SP), AX                      ;index.go:72
         .          .    10cc5e0: MOVQ 0(AX), CX
         .          .    10cc5e3: MOVQ 0x8(AX), DX
         .          .    10cc5e7: MOVQ 0x20(CX), CX
         .          .    10cc5eb: MOVQ DX, 0(SP)
         .          .    10cc5ef: CALL CX
         .          .    10cc5f1: MOVQ 0x208(SP), AX                      ;index.go:73
         .          .    10cc5f9: MOVQ 0(AX), CX
         .          .    10cc5fc: MOVQ 0x8(AX), DX
         .          .    10cc600: MOVQ 0x40(CX), CX
         .          .    10cc604: MOVQ DX, 0(SP)
         .          .    10cc608: MOVQ 0x210(SP), DX
         .          .    10cc610: MOVQ DX, 0x8(SP)
         .          .    10cc615: MOVQ 0x218(SP), BX
         .          .    10cc61d: MOVQ BX, 0x10(SP)
         .          .    10cc622: MOVQ 0x220(SP), SI
         .          .    10cc62a: MOVQ SI, 0x18(SP)
         .          .    10cc62f: CALL CX
         .          .    10cc631: MOVQ 0x208(SP), AX                      ;index.go:74
         .          .    10cc639: MOVQ 0(AX), CX
         .          .    10cc63c: MOVQ 0x8(AX), DX
         .          .    10cc640: MOVQ 0x38(CX), CX
         .          .    10cc644: MOVQ DX, 0(SP)
         .          .    10cc648: CALL CX
         .          .    10cc64a: MOVQ 0x8(SP), AX
         .          .    10cc64f: MOVQ 0x208(SP), CX
         .          .    10cc657: MOVQ 0x40(CX), DX
         .          .    10cc65b: TESTQ DX, DX
         .          .    10cc65e: JE 0x10cc8e3
         .          .    10cc664: MOVQ DX, BX
         .          .    10cc667: XORL DX, DX
         .          .    10cc669: DIVQ BX
      10ms       10ms    10cc66c: MOVQ 0x50(SP), BX                       ;main.(*index).nearCount index.go:74
         .          .    10cc671: TESTQ BX, BX                            ;index.go:74
         .          .    10cc674: JBE 0x10cc8d9
         .          .    10cc67a: MOVQ DX, 0x68(SP)
         .          .    10cc67f: MOVQ 0x38(CX), DX                       ;index.go:75
         .          .    10cc683: MOVQ 0x28(CX), SI
         .          .    10cc687: MOVQ 0x218(SP), DI
         .          .    10cc68f: LEAQ -0x1(DI), R8
         .          .    10cc693: CMPQ DX, R8
         .          .    10cc696: JA 0x10cc8d1
         .          .    10cc69c: MOVQ R8, 0x58(SP)
         .          .    10cc6a1: MOVQ DX, 0x48(SP)
         .          .    10cc6a6: MOVQ SI, 0x1f0(SP)
         .          .    10cc6ae: MOVQ 0x210(SP), R9                      ;index.go:76
         .          .    10cc6b6: XORL AX, AX
         .          .    10cc6b8: JMP 0x10cc6fa
         .          .    10cc6ba: MOVQ AX, R10                            ;index.go:81
         .          .    10cc6bd: SHLQ $0x3, AX
         .          .    10cc6c1: MOVQ DX, 0x68(SP)(AX*1)
         .          .    10cc6c6: MOVQ 0x218(SP), R11                     ;index.go:76
         .          .    10cc6ce: MOVQ 0x1f0(SP), R12
         .          .    10cc6d6: MOVQ 0x48(SP), R13
         .          .    10cc6db: MOVQ 0x58(SP), R14
         .          .    10cc6e0: MOVQ 0x210(SP), R15
         .          .    10cc6e8: MOVQ R13, DX                            ;index.go:134
         .          .    10cc6eb: MOVQ R12, SI                            ;index.go:135
         .          .    10cc6ee: MOVQ R11, DI                            ;index.go:76
         .          .    10cc6f1: MOVQ R14, R8                            ;index.go:135
         .          .    10cc6f4: MOVQ R15, R9                            ;index.go:136
         .          .    10cc6f7: MOVQ R10, AX                            ;index.go:76
         .          .    10cc6fa: CMPQ DI, AX
         .          .    10cc6fd: JGE 0x10cc863
         .       10ms    10cc703: NOPL                                    ;main.(*index).nearCount index.go:77
         .          .    10cc704: CMPQ DX, AX                             ;index.go:134
         .          .    10cc707: JA 0x10cc8c9
         .          .    10cc70d: CMPQ R8, AX                             ;index.go:135
         .          .    10cc710: JA 0x10cc8c1
         .          .    10cc716: MOVQ AX, 0x40(SP)                       ;index.go:76
         .          .    10cc71b: SUBQ AX, R8                             ;index.go:135
      10ms       10ms    10cc71e: MOVQ R8, 0x38(SP)                       ;main.skipOneCopy index.go:135
         .          .    10cc723: SUBQ AX, DX                             ;index.go:135
         .          .    10cc726: NEGQ DX
         .          .    10cc729: SARQ $0x3f, DX
         .          .    10cc72d: ANDQ AX, DX
         .          .    10cc730: ADDQ SI, DX
         .          .    10cc733: MOVQ DX, 0x1e8(SP)
         .          .    10cc73b: CMPQ R9, SI                             ;index.go:136
         .          .    10cc73e: JE 0x10cc753
         .          .    10cc740: MOVQ SI, 0(SP)
         .          .    10cc744: MOVQ R9, 0x8(SP)
         .          .    10cc749: MOVQ AX, 0x10(SP)
         .          .    10cc74e: CALL runtime.memmove(SB)
         .          .    10cc753: MOVQ 0x40(SP), AX                       ;index.go:137
         .          .    10cc758: INCQ AX
         .          .    10cc75b: MOVQ AX, 0x60(SP)
         .          .    10cc760: MOVQ 0x218(SP), CX
         .          .    10cc768: SUBQ AX, CX
         .          .    10cc76b: MOVQ 0x38(SP), BX
         .          .    10cc770: CMPQ CX, BX
         .          .    10cc773: CMOVG CX, BX
         .          .    10cc777: MOVQ 0x220(SP), CX
         .          .    10cc77f: SUBQ AX, CX
         .          .    10cc782: NEGQ CX
         .          .    10cc785: SARQ $0x3f, CX
         .          .    10cc789: ANDQ AX, CX
         .          .    10cc78c: MOVQ 0x210(SP), DI
         .          .    10cc794: ADDQ DI, CX
         .          .    10cc797: MOVQ 0x1e8(SP), R8
         .          .    10cc79f: CMPQ R8, CX
         .          .    10cc7a2: JNE 0x10cc84b
         .          .    10cc7a8: MOVQ 0x208(SP), AX                      ;index.go:79
         .          .    10cc7b0: MOVQ 0(AX), CX
         .          .    10cc7b3: MOVQ 0x8(AX), DX
         .          .    10cc7b7: MOVQ 0x20(CX), CX
         .          .    10cc7bb: MOVQ DX, 0(SP)
         .          .    10cc7bf: CALL CX
         .          .    10cc7c1: MOVQ 0x208(SP), AX                      ;index.go:80
         .          .    10cc7c9: MOVQ 0(AX), CX
         .          .    10cc7cc: MOVQ 0x8(AX), DX
         .          .    10cc7d0: MOVQ 0x40(CX), CX
         .          .    10cc7d4: MOVQ DX, 0(SP)
         .          .    10cc7d8: MOVQ 0x1f0(SP), DX
         .          .    10cc7e0: MOVQ DX, 0x8(SP)
         .          .    10cc7e5: MOVQ 0x58(SP), BX
         .          .    10cc7ea: MOVQ BX, 0x10(SP)
         .          .    10cc7ef: MOVQ 0x48(SP), SI
         .          .    10cc7f4: MOVQ SI, 0x18(SP)
         .       40ms    10cc7f9: CALL CX                                 ;main.(*index).nearCount index.go:80
      10ms       10ms    10cc7fb: MOVQ 0x208(SP), AX                      ;main.(*index).nearCount index.go:81
         .          .    10cc803: MOVQ 0(AX), CX                          ;index.go:81
         .          .    10cc806: MOVQ 0x8(AX), DX
         .          .    10cc80a: MOVQ 0x38(CX), CX
         .          .    10cc80e: MOVQ DX, 0(SP)
         .       30ms    10cc812: CALL CX                                 ;main.(*index).nearCount index.go:81
         .          .    10cc814: MOVQ 0x8(SP), AX                        ;index.go:81
         .          .    10cc819: MOVQ 0x208(SP), CX
         .          .    10cc821: MOVQ 0x40(CX), DX
         .          .    10cc825: TESTQ DX, DX
         .          .    10cc828: JE 0x10cc8bc
         .          .    10cc82e: MOVQ DX, BX
         .          .    10cc831: XORL DX, DX
         .          .    10cc833: DIVQ BX
      40ms       40ms    10cc836: MOVQ 0x60(SP), AX                       ;main.(*index).nearCount index.go:81
         .          .    10cc83b: MOVQ 0x50(SP), BX                       ;index.go:81
         .          .    10cc840: CMPQ BX, AX
         .          .    10cc843: JB 0x10cc6ba
         .          .    10cc849: JMP 0x10cc8b4
         .          .    10cc84b: MOVQ R8, 0(SP)                          ;index.go:137
         .          .    10cc84f: MOVQ CX, 0x8(SP)
         .          .    10cc854: MOVQ BX, 0x10(SP)
         .          .    10cc859: CALL runtime.memmove(SB)
         .          .    10cc85e: JMP 0x10cc7a8
         .          .    10cc863: XORL AX, AX
         .          .    10cc865: XORL DX, DX
         .          .    10cc867: JMP 0x10cc878                           ;index.go:85
         .          .    10cc869: INCQ AX
         .          .    10cc86c: LEAQ 0(R8)(R8*2), SI                    ;index.go:86
         .          .    10cc870: MOVQ 0x8(DI)(SI*8), SI
     120ms      120ms    10cc875: ADDQ SI, DX                             ;main.(*index).nearCount index.go:87
         .          .    10cc878: CMPQ BX, AX                             ;index.go:85
         .          .    10cc87b: JGE 0x10cc891
         .          .    10cc87d: MOVQ 0x18(CX), SI                       ;index.go:86
         .          .    10cc881: MOVQ 0x10(CX), DI
         .          .    10cc885: MOVQ 0x68(SP)(AX*8), R8
         .          .    10cc88a: CMPQ SI, R8
         .          .    10cc88d: JB 0x10cc869
         .          .    10cc88f: JMP 0x10cc8a9
         .          .    10cc891: MOVQ DX, 0x228(SP)                      ;index.go:90
         .          .    10cc899: MOVQ 0x1f8(SP), BP
         .          .    10cc8a1: ADDQ $0x200, SP
         .          .    10cc8a8: RET
         .          .    10cc8a9: MOVQ R8, AX                             ;index.go:86
         .          .    10cc8ac: MOVQ SI, CX
         .          .    10cc8af: CALL runtime.panicIndexU(SB)
         .          .    10cc8b4: MOVQ BX, CX                             ;index.go:81
         .          .    10cc8b7: CALL runtime.panicIndex(SB)
         .          .    10cc8bc: CALL runtime.panicdivide(SB)
         .          .    10cc8c1: MOVQ R8, CX                             ;index.go:135
         .          .    10cc8c4: CALL runtime.panicSliceB(SB)
         .          .    10cc8c9: MOVQ AX, CX                             ;index.go:134
         .          .    10cc8cc: CALL runtime.panicSliceAcap(SB)
         .          .    10cc8d1: MOVQ R8, CX                             ;index.go:75
         .          .    10cc8d4: CALL runtime.panicSliceAcap(SB)
         .          .    10cc8d9: XORL AX, AX                             ;index.go:74
         .          .    10cc8db: MOVQ BX, CX
         .          .    10cc8de: CALL runtime.panicIndex(SB)
         .          .    10cc8e3: CALL runtime.panicdivide(SB)
         .          .    10cc8e8: MOVL $0x30, DX                          ;index.go:71
         .          .    10cc8ed: CALL runtime.panicSliceAlen(SB)
         .          .    10cc8f2: NOPL
         .          .    10cc8f3: CALL runtime.morestack_noctxt(SB)       ;index.go:69
         .          .    10cc8f8: JMP main.(*index).nearCount(SB)
         .          .    10cc8fd: INT $0x3
         .          .    10cc8fe: INT $0x3
ROUTINE ======================== main.LoadDictionary
      30ms      2.63s (flat, cum) 47.91% of Total
         .          .    10c9e10: MOVQ GS:0x30, CX                        ;graph.go:39
         .          .    10c9e19: LEAQ 0xfffffec0(SP), AX
         .          .    10c9e21: CMPQ 0x10(CX), AX
         .          .    10c9e25: JBE 0x10ca691
         .          .    10c9e2b: SUBQ $0x1c0, SP
         .          .    10c9e32: MOVQ BP, 0x1b8(SP)
         .          .    10c9e3a: LEAQ 0x1b8(SP), BP
         .          .    10c9e42: MOVQ $0x0, 0x1f8(SP)
         .          .    10c9e4e: NOPL                                    ;graph.go:40
         .          .    10c9e4f: MOVQ 0x1d8(SP), AX                      ;stats.go:42
         .          .    10c9e57: MOVQ AX, 0(SP)
         .          .    10c9e5b: CALL runtime.convT64(SB)
         .          .    10c9e60: MOVQ main.stats+8(SB), AX
         .          .    10c9e67: MOVQ main.stats(SB), CX
         .          .    10c9e6e: LEAQ 0x1(AX), DX
         .          .    10c9e72: MOVQ main.stats+16(SB), BX
         .          .    10c9e79: MOVQ 0x8(SP), SI
         .          .    10c9e7e: CMPQ BX, DX
         .          .    10c9e81: JA 0x10ca612
         .          .    10c9e87: LEAQ 0x1(AX), DX
         .          .    10c9e8b: MOVQ DX, main.stats+8(SB)
         .          .    10c9e92: SHLQ $0x5, AX
         .          .    10c9e96: MOVQ $0xb, 0x8(CX)(AX*1)
         .          .    10c9e9f: LEAQ go.itab.main.intStat,main.statValue(SB), DX
         .          .    10c9ea6: MOVQ DX, 0x10(CX)(AX*1)
         .          .    10c9eab: LEAQ 0(CX)(AX*1), DI
         .          .    10c9eaf: LEAQ 0(CX)(AX*1), DX
         .          .    10c9eb3: LEAQ 0x18(DX), DX
         .          .    10c9eb7: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10c9ebe: JNE 0x10ca5f6
         .          .    10c9ec4: LEAQ go.string.*+3958(SB), DX
         .          .    10c9ecb: MOVQ DX, 0(CX)(AX*1)
         .          .    10c9ecf: MOVQ SI, 0x18(CX)(AX*1)
         .          .    10c9ed4: LEAQ go.string.*+6121(SB), AX           ;graph.go:41
         .          .    10c9edb: MOVQ AX, 0(SP)
         .          .    10c9edf: MOVQ $0xe, 0x8(SP)
         .          .    10c9ee8: CALL main.newTimer(SB)
         .          .    10c9eed: MOVQ 0x10(SP), AX
         .          .    10c9ef2: MOVL $0x0, 0x68(SP)
         .          .    10c9efa: MOVQ AX, 0x80(SP)
         .          .    10c9f02: LEAQ 0x68(SP), AX
         .          .    10c9f07: MOVQ AX, 0(SP)
         .          .    10c9f0b: CALL runtime.deferprocStack(SB)
         .          .    10c9f10: TESTL AX, AX
         .          .    10c9f12: JNE 0x10ca5e0
         .          .    10c9f18: NOPL                                    ;graph.go:42
         .          .    10c9f19: MOVQ 0x1c8(SP), AX                      ;file.go:280
         .          .    10c9f21: MOVQ AX, 0(SP)
         .          .    10c9f25: MOVQ 0x1d0(SP), AX
         .          .    10c9f2d: MOVQ AX, 0x8(SP)
         .          .    10c9f32: MOVQ $0x0, 0x10(SP)
         .          .    10c9f3b: MOVL $0x0, 0x18(SP)
         .          .    10c9f43: CALL os.OpenFile(SB)
         .          .    10c9f48: MOVQ 0x20(SP), AX
         .          .    10c9f4d: MOVQ AX, 0x118(SP)
         .          .    10c9f55: MOVQ 0x30(SP), CX
         .          .    10c9f5a: MOVQ 0x28(SP), DX
         .          .    10c9f5f: TESTQ DX, DX                            ;graph.go:43
         .          .    10c9f62: JE 0x10c9fa8
         .          .    10c9f64: JE 0x10c9f6a                            ;graph.go:44
         .          .    10c9f66: MOVQ 0x8(DX), DX
         .          .    10c9f6a: XORPS X0, X0
         .          .    10c9f6d: MOVUPS X0, 0x128(SP)
         .          .    10c9f75: MOVQ DX, 0x128(SP)
         .          .    10c9f7d: MOVQ CX, 0x130(SP)
         .          .    10c9f85: LEAQ 0x128(SP), AX
         .          .    10c9f8d: MOVQ AX, 0(SP)
         .          .    10c9f91: MOVQ $0x1, 0x8(SP)
         .          .    10c9f9a: MOVQ $0x1, 0x10(SP)
         .          .    10c9fa3: CALL log.Fatal(SB)
         .          .    10c9fa8: MOVL $0x18, 0xa0(SP)                    ;graph.go:46
         .          .    10c9fb3: LEAQ go.func.*+300(SB), AX
         .          .    10c9fba: MOVQ AX, 0xb8(SP)
         .          .    10c9fc2: MOVQ 0x118(SP), AX
         .          .    10c9fca: MOVQ AX, 0xd0(SP)
         .          .    10c9fd2: LEAQ 0xa0(SP), CX
         .          .    10c9fda: MOVQ CX, 0(SP)
         .          .    10c9fde: CALL runtime.deferprocStack(SB)
         .          .    10c9fe3: TESTL AX, AX
         .          .    10c9fe5: JNE 0x10ca5ca
         .          .    10c9feb: LEAQ runtime.types+158240(SB), AX       ;graph.go:48
         .          .    10c9ff2: MOVQ AX, 0(SP)
         .          .    10c9ff6: CALL runtime.newobject(SB)
         .          .    10c9ffb: MOVQ 0x8(SP), AX
         .          .    10ca000: MOVQ AX, 0x120(SP)
         .          .    10ca008: LEAQ runtime.types+142368(SB), CX       ;graph.go:49
         .          .    10ca00f: MOVQ CX, 0(SP)
         .          .    10ca013: XORPS X0, X0
         .          .    10ca016: MOVUPS X0, 0x8(SP)
         .          .    10ca01b: CALL runtime.makeslice(SB)
         .          .    10ca020: MOVQ 0x18(SP), AX
         .          .    10ca025: CMPL $0x0, runtime.writeBarrier(SB)     ;graph.go:48
         .          .    10ca02c: JNE 0x10ca585
         .          .    10ca032: XORPS X0, X0
         .          .    10ca035: MOVQ 0x120(SP), CX
         .          .    10ca03d: MOVUPS X0, 0(CX)
         .          .    10ca040: MOVUPS X0, 0x10(CX)
         .          .    10ca044: MOVUPS X0, 0x20(CX)
         .          .    10ca048: MOVQ AX, 0(CX)
         .          .    10ca04b: NOPL                                    ;graph.go:54
         .          .    10ca04c: LEAQ 0x138(SP), DI                      ;scan.go:87
         .          .    10ca054: MOVQ BP, -0x10(SP)
         .          .    10ca059: LEAQ -0x10(SP), BP
         .          .    10ca05e: CALL 0x10586ba
         .          .    10ca063: MOVQ 0(BP), BP
         .          .    10ca067: LEAQ 0x138(SP), DI
         .          .    10ca06f: MOVQ BP, -0x10(SP)
         .          .    10ca074: LEAQ -0x10(SP), BP
         .          .    10ca079: CALL 0x10586ba
         .          .    10ca07e: MOVQ 0(BP), BP
         .          .    10ca082: LEAQ go.itab.*os.File,io.Reader(SB), AX
         .          .    10ca089: MOVQ AX, 0x138(SP)
         .          .    10ca091: MOVQ 0x118(SP), AX
         .          .    10ca099: MOVQ AX, 0x140(SP)
         .          .    10ca0a1: LEAQ go.func.*+4(SB), AX
         .          .    10ca0a8: MOVQ AX, 0x148(SP)
         .          .    10ca0b0: MOVQ $0x10000, 0x150(SP)
         .          .    10ca0bc: XORL AX, AX
         .          .    10ca0be: JMP 0x10ca0c3                           ;graph.go:55
         .          .    10ca0c0: MOVQ SI, AX                             ;graph.go:75
         .          .    10ca0c3: MOVQ AX, 0x48(SP)
         .          .    10ca0c8: LEAQ 0x138(SP), CX                      ;graph.go:55
         .          .    10ca0d0: MOVQ CX, 0(SP)
         .       30ms    10ca0d4: CALL bufio.(*Scanner).Scan(SB)          ;main.LoadDictionary graph.go:55
         .          .    10ca0d9: CMPB $0x0, 0x8(SP)                      ;graph.go:55
         .          .    10ca0de: JE 0x10ca221
         .          .    10ca0e4: NOPL                                    ;graph.go:56
         .          .    10ca0e5: MOVQ 0x160(SP), AX                      ;scan.go:106
         .          .    10ca0ed: MOVQ AX, 0x40(SP)
         .          .    10ca0f2: MOVQ 0x158(SP), CX
         .          .    10ca0fa: MOVQ CX, 0x100(SP)
         .          .    10ca102: LEAQ runtime.types+89184(SB), DX        ;graph.go:57
         .          .    10ca109: MOVQ DX, 0(SP)
         .          .    10ca10d: MOVQ AX, 0x8(SP)
         .          .    10ca112: MOVQ AX, 0x10(SP)
         .          .    10ca117: CALL runtime.makeslice(SB)
         .          .    10ca11c: MOVQ 0x18(SP), AX
         .          .    10ca121: MOVQ AX, 0x110(SP)
         .          .    10ca129: MOVQ 0x100(SP), CX                      ;graph.go:58
         .          .    10ca131: CMPQ CX, AX
         .          .    10ca134: JE 0x10ca14e
         .          .    10ca136: MOVQ AX, 0(SP)
         .          .    10ca13a: MOVQ CX, 0x8(SP)
         .          .    10ca13f: MOVQ 0x40(SP), CX
         .          .    10ca144: MOVQ CX, 0x10(SP)
         .          .    10ca149: CALL runtime.memmove(SB)
         .          .    10ca14e: MOVQ 0x120(SP), CX                      ;graph.go:59
         .          .    10ca156: MOVQ 0x10(CX), DX
         .          .    10ca15a: MOVQ 0x8(CX), BX
         .          .    10ca15e: LEAQ 0x1(BX), SI
         .          .    10ca162: MOVQ 0(CX), R8
         .          .    10ca165: CMPQ DX, SI
         .          .    10ca168: JA 0x10ca1c1
         .          .    10ca16a: LEAQ 0x1(BX), DX
         .          .    10ca16e: MOVQ DX, 0x8(CX)
         .          .    10ca172: LEAQ 0(BX)(BX*2), DX
         .          .    10ca176: MOVQ 0x40(SP), BX
      10ms       10ms    10ca17b: MOVQ BX, 0x8(R8)(DX*8)                  ;main.LoadDictionary graph.go:59
      20ms       20ms    10ca180: MOVQ BX, 0x10(R8)(DX*8)
         .          .    10ca185: MOVQ 0x48(SP), SI                       ;graph.go:60
         .          .    10ca18a: CMPQ SI, BX
         .          .    10ca18d: CMOVG BX, SI                            ;graph.go:75
         .          .    10ca191: LEAQ 0(R8)(DX*8), DI                    ;graph.go:59
         .          .    10ca195: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca19c: JNE 0x10ca1af
         .          .    10ca19e: MOVQ 0x110(SP), AX
         .          .    10ca1a6: MOVQ AX, 0(R8)(DX*8)
         .          .    10ca1aa: JMP 0x10ca0c0
         .          .    10ca1af: MOVQ 0x110(SP), AX
         .          .    10ca1b7: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca1bc: JMP 0x10ca0c0
         .          .    10ca1c1: LEAQ runtime.types+142368(SB), AX
         .          .    10ca1c8: MOVQ AX, 0(SP)
         .          .    10ca1cc: MOVQ R8, 0x8(SP)
         .          .    10ca1d1: MOVQ BX, 0x10(SP)
         .          .    10ca1d6: MOVQ DX, 0x18(SP)
         .          .    10ca1db: MOVQ SI, 0x20(SP)
         .       80ms    10ca1e0: CALL runtime.growslice(SB)              ;main.LoadDictionary graph.go:59
         .          .    10ca1e5: MOVQ 0x28(SP), AX                       ;graph.go:59
         .          .    10ca1ea: MOVQ 0x30(SP), CX
         .          .    10ca1ef: MOVQ 0x38(SP), DX
         .          .    10ca1f4: MOVQ 0x120(SP), DI
         .          .    10ca1fc: MOVQ DX, 0x10(DI)
         .          .    10ca200: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca207: JNE 0x10ca21a
         .          .    10ca209: MOVQ AX, 0(DI)
         .          .    10ca20c: MOVQ CX, BX
         .          .    10ca20f: MOVQ AX, R8
         .          .    10ca212: MOVQ DI, CX
         .          .    10ca215: JMP 0x10ca16a
         .          .    10ca21a: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca21f: JMP 0x10ca20c
         .          .    10ca221: MOVQ 0x1f0(SP), AX                      ;graph.go:65
         .          .    10ca229: TESTQ AX, AX
         .          .    10ca22c: JNE 0x10ca527
         .          .    10ca232: MOVQ 0x120(SP), AX                      ;graph.go:69
         .          .    10ca23a: MOVQ 0x8(AX), CX
         .          .    10ca23e: MOVQ CX, 0x60(SP)
         .          .    10ca243: LEAQ runtime.types+77472(SB), DX
         .          .    10ca24a: MOVQ DX, 0(SP)
         .          .    10ca24e: MOVQ CX, 0x8(SP)
         .          .    10ca253: MOVQ CX, 0x10(SP)
         .          .    10ca258: CALL runtime.makeslice(SB)
         .          .    10ca25d: MOVQ 0x18(SP), AX
         .          .    10ca262: MOVQ 0x60(SP), CX
         .          .    10ca267: MOVQ 0x120(SP), DX
         .          .    10ca26f: MOVQ CX, 0x20(DX)
         .          .    10ca273: MOVQ CX, 0x28(DX)
         .          .    10ca277: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca27e: JNE 0x10ca519
         .          .    10ca284: MOVQ AX, 0x18(DX)
         .          .    10ca288: XORL AX, AX
         .          .    10ca28a: JMP 0x10ca29b                           ;graph.go:70
         .          .    10ca28c: LEAQ 0x1(SI), BX
         .          .    10ca290: MOVQ 0x60(SP), CX
         .          .    10ca295: MOVQ AX, DX                             ;graph.go:71
         .          .    10ca298: MOVQ BX, AX                             ;graph.go:70
         .          .    10ca29b: CMPQ CX, AX
         .          .    10ca29e: JGE 0x10ca31c
         .          .    10ca2a0: MOVQ AX, 0x58(SP)
         .          .    10ca2a5: LEAQ runtime.types+86176(SB), AX        ;graph.go:71
         .          .    10ca2ac: MOVQ AX, 0(SP)
         .          .    10ca2b0: XORPS X0, X0
         .          .    10ca2b3: MOVUPS X0, 0x8(SP)
         .          .    10ca2b8: CALL runtime.makeslice(SB)
         .          .    10ca2bd: MOVQ 0x120(SP), AX
         .          .    10ca2c5: MOVQ 0x20(AX), CX
         .          .    10ca2c9: MOVQ 0x18(AX), DX
         .          .    10ca2cd: MOVQ 0x18(SP), BX
         .          .    10ca2d2: MOVQ 0x58(SP), SI
         .          .    10ca2d7: CMPQ CX, SI
         .          .    10ca2da: JAE 0x10ca688
         .          .    10ca2e0: LEAQ 0(SI)(SI*2), CX
         .          .    10ca2e4: MOVQ $0x0, 0x8(DX)(CX*8)
         .          .    10ca2ed: MOVQ $0x0, 0x10(DX)(CX*8)
         .          .    10ca2f6: LEAQ 0(DX)(CX*8), DI
         .          .    10ca2fa: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca301: JNE 0x10ca309
         .          .    10ca303: MOVQ BX, 0(DX)(CX*8)
         .          .    10ca307: JMP 0x10ca28c
         .          .    10ca309: MOVQ AX, CX                             ;graph.go:48
         .          .    10ca30c: MOVQ BX, AX                             ;graph.go:71
         .       10ms    10ca30f: CALL runtime.gcWriteBarrier(SB)         ;main.LoadDictionary graph.go:71
         .          .    10ca314: MOVQ CX, AX                             ;graph.go:71
         .          .    10ca317: JMP 0x10ca28c
         .          .    10ca31c: LEAQ go.string.*+3468(SB), AX           ;graph.go:74
         .          .    10ca323: MOVQ AX, 0(SP)
         .          .    10ca327: MOVQ $0xa, 0x8(SP)
         .          .    10ca330: CALL main.newTimer(SB)
         .          .    10ca335: MOVQ 0x10(SP), AX
         .          .    10ca33a: MOVQ AX, 0xe8(SP)
         .          .    10ca342: MOVQ 0x1d8(SP), CX                      ;graph.go:75
         .          .    10ca34a: MOVQ CX, 0(SP)
         .          .    10ca34e: MOVQ 0x48(SP), CX
         .          .    10ca353: MOVQ CX, 0x8(SP)
         .      100ms    10ca358: CALL main.newIndex(SB)                  ;main.LoadDictionary graph.go:75
         .          .    10ca35d: MOVQ 0x10(SP), AX                       ;graph.go:75
         .          .    10ca362: MOVQ AX, 0xf8(SP)
         .          .    10ca36a: MOVQ 0x120(SP), CX                      ;graph.go:76
         .          .    10ca372: MOVQ 0x8(CX), DX
         .          .    10ca376: MOVQ 0(CX), BX
         .          .    10ca379: TESTQ DX, DX
         .          .    10ca37c: JLE 0x10ca3e5
         .          .    10ca37e: MOVQ DX, 0x60(SP)
         .          .    10ca383: XORL SI, SI
         .          .    10ca385: JMP 0x10ca39e
         .          .    10ca387: MOVQ 0x108(SP), DX
         .          .    10ca38f: LEAQ 0x18(DX), BX
         .          .    10ca393: MOVQ AX, SI
         .          .    10ca396: MOVQ 0xf8(SP), AX                       ;graph.go:77
         .          .    10ca39e: MOVQ BX, 0x108(SP)                      ;graph.go:76
         .          .    10ca3a6: MOVQ SI, 0x50(SP)
         .          .    10ca3ab: MOVQ 0x8(BX), CX
         .          .    10ca3af: MOVQ 0(BX), DX
         .          .    10ca3b2: MOVQ 0x10(BX), DI
         .          .    10ca3b6: MOVQ AX, 0(SP)                          ;graph.go:77
         .          .    10ca3ba: MOVQ SI, 0x8(SP)
         .          .    10ca3bf: MOVQ DX, 0x10(SP)
         .          .    10ca3c4: MOVQ CX, 0x18(SP)
         .          .    10ca3c9: MOVQ DI, 0x20(SP)
         .      500ms    10ca3ce: CALL main.(*index).add(SB)              ;main.LoadDictionary graph.go:77
         .          .    10ca3d3: MOVQ 0x50(SP), AX                       ;graph.go:76
         .          .    10ca3d8: INCQ AX
         .          .    10ca3db: MOVQ 0x60(SP), CX
         .          .    10ca3e0: CMPQ CX, AX
         .          .    10ca3e3: JL 0x10ca387
         .          .    10ca3e5: MOVQ 0xe8(SP), DX                       ;graph.go:79
         .          .    10ca3ed: MOVQ 0(DX), AX
         .          .    10ca3f0: CALL AX
         .          .    10ca3f2: MOVZX 0x1e0(SP), AX                     ;graph.go:39
         .          .    10ca3fa: TESTL AL, AL
         .          .    10ca3fc: JNE 0x10ca503                           ;graph.go:81
         .          .    10ca402: LEAQ go.string.*+4830(SB), AX           ;graph.go:87
         .          .    10ca409: MOVQ AX, 0(SP)
         .          .    10ca40d: MOVQ $0xc, 0x8(SP)
         .          .    10ca416: CALL main.newTimer(SB)
         .          .    10ca41b: MOVQ 0x10(SP), AX
         .          .    10ca420: MOVQ AX, 0xf0(SP)
         .          .    10ca428: MOVQ 0x120(SP), CX                      ;graph.go:88
         .          .    10ca430: MOVQ CX, 0(SP)
         .          .    10ca434: MOVQ 0xf8(SP), DX
         .          .    10ca43c: MOVQ DX, 0x8(SP)
         .      1.88s    10ca441: CALL main.(*Graph).buildAdjList(SB)     ;main.LoadDictionary graph.go:88
         .          .    10ca446: MOVQ 0xf0(SP), DX                       ;graph.go:89
         .          .    10ca44e: MOVQ 0(DX), AX
         .          .    10ca451: CALL AX
         .          .    10ca453: MOVQ 0x1f0(SP), AX                      ;graph.go:65
         .          .    10ca45b: TESTQ AX, AX
         .          .    10ca45e: JNE 0x10ca4a5                           ;graph.go:91
         .          .    10ca460: MOVZX 0x1e1(SP), AX                     ;graph.go:39
         .          .    10ca468: TESTL AL, AL
         .          .    10ca46a: JNE 0x10ca492                           ;graph.go:95
         .          .    10ca46c: MOVQ 0x120(SP), AX                      ;graph.go:99
         .          .    10ca474: MOVQ AX, 0x1f8(SP)
         .          .    10ca47c: NOPL
         .          .    10ca47d: CALL runtime.deferreturn(SB)
         .          .    10ca482: MOVQ 0x1b8(SP), BP
         .          .    10ca48a: ADDQ $0x1c0, SP
         .          .    10ca491: RET
         .          .    10ca492: MOVQ 0x120(SP), AX                      ;graph.go:96
         .          .    10ca49a: MOVQ AX, 0(SP)
         .          .    10ca49e: CALL main.adjListStats(SB)
         .          .    10ca4a3: JMP 0x10ca46c
         .          .    10ca4a5: MOVQ $0x0, 0(SP)                        ;graph.go:92
         .          .    10ca4ad: MOVQ 0x1e8(SP), CX
         .          .    10ca4b5: MOVQ CX, 0x8(SP)
         .          .    10ca4ba: MOVQ AX, 0x10(SP)
         .          .    10ca4bf: LEAQ go.string.*+2074(SB), AX
         .          .    10ca4c6: MOVQ AX, 0x18(SP)
         .          .    10ca4cb: MOVQ $0x8, 0x20(SP)
         .          .    10ca4d4: CALL runtime.concatstring2(SB)
         .          .    10ca4d9: MOVQ 0x30(SP), AX
         .          .    10ca4de: MOVQ 0x28(SP), CX
         .          .    10ca4e3: MOVQ 0x120(SP), DX
         .          .    10ca4eb: MOVQ DX, 0(SP)
         .          .    10ca4ef: MOVQ CX, 0x8(SP)
         .          .    10ca4f4: MOVQ AX, 0x10(SP)
         .          .    10ca4f9: CALL main.(*Graph).dumpAdjList(SB)
         .          .    10ca4fe: JMP 0x10ca460
         .          .    10ca503: MOVQ 0xf8(SP), AX                       ;graph.go:82
         .          .    10ca50b: MOVQ AX, 0(SP)
         .          .    10ca50f: CALL main.(*index).printStats(SB)
         .          .    10ca514: JMP 0x10ca402
         .          .    10ca519: LEAQ 0x18(DX), DI                       ;graph.go:69
         .          .    10ca51d: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca522: JMP 0x10ca288
         .          .    10ca527: MOVQ $0x0, 0(SP)                        ;graph.go:66
         .          .    10ca52f: MOVQ 0x1e8(SP), CX
         .          .    10ca537: MOVQ CX, 0x8(SP)
         .          .    10ca53c: MOVQ AX, 0x10(SP)
         .          .    10ca541: LEAQ go.string.*+5483(SB), DX
         .          .    10ca548: MOVQ DX, 0x18(SP)
         .          .    10ca54d: MOVQ $0xd, 0x20(SP)
         .          .    10ca556: CALL runtime.concatstring2(SB)
         .          .    10ca55b: MOVQ 0x30(SP), AX
         .          .    10ca560: MOVQ 0x28(SP), CX
         .          .    10ca565: MOVQ 0x120(SP), DX
         .          .    10ca56d: MOVQ DX, 0(SP)
         .          .    10ca571: MOVQ CX, 0x8(SP)
         .          .    10ca576: MOVQ AX, 0x10(SP)
         .          .    10ca57b: CALL main.(*Graph).dumpVertices(SB)
         .          .    10ca580: JMP 0x10ca232
         .          .    10ca585: MOVQ AX, 0x110(SP)                      ;graph.go:49
         .          .    10ca58d: LEAQ runtime.types+158240(SB), AX       ;graph.go:48
         .          .    10ca594: MOVQ AX, 0(SP)
         .          .    10ca598: MOVQ 0x120(SP), AX
         .          .    10ca5a0: MOVQ AX, 0x8(SP)
         .          .    10ca5a5: CALL runtime.typedmemclr(SB)
         .          .    10ca5aa: MOVQ 0x120(SP), DI
         .          .    10ca5b2: MOVQ 0x110(SP), AX
         .          .    10ca5ba: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca5bf: MOVQ DI, CX                             ;graph.go:69
         .          .    10ca5c2: XORPS X0, X0                            ;graph.go:49
         .          .    10ca5c5: JMP 0x10ca04b                           ;graph.go:48
         .          .    10ca5ca: NOPL                                    ;graph.go:46
         .          .    10ca5cb: CALL runtime.deferreturn(SB)
         .          .    10ca5d0: MOVQ 0x1b8(SP), BP
         .          .    10ca5d8: ADDQ $0x1c0, SP
         .          .    10ca5df: RET
         .          .    10ca5e0: NOPL                                    ;graph.go:41
         .          .    10ca5e1: CALL runtime.deferreturn(SB)
         .          .    10ca5e6: MOVQ 0x1b8(SP), BP
         .          .    10ca5ee: ADDQ $0x1c0, SP
         .          .    10ca5f5: RET
         .          .    10ca5f6: LEAQ go.string.*+3958(SB), AX           ;stats.go:42
         .          .    10ca5fd: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca602: MOVQ DX, DI
         .          .    10ca605: MOVQ SI, AX
         .          .    10ca608: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca60d: JMP 0x10c9ed4
         .          .    10ca612: MOVQ SI, 0x110(SP)
         .          .    10ca61a: LEAQ runtime.types+158400(SB), SI
         .          .    10ca621: MOVQ SI, 0(SP)
         .          .    10ca625: MOVQ CX, 0x8(SP)
         .          .    10ca62a: MOVQ AX, 0x10(SP)
         .          .    10ca62f: MOVQ BX, 0x18(SP)
         .          .    10ca634: MOVQ DX, 0x20(SP)
         .          .    10ca639: CALL runtime.growslice(SB)
         .          .    10ca63e: MOVQ 0x28(SP), AX
         .          .    10ca643: MOVQ 0x30(SP), CX
         .          .    10ca648: MOVQ 0x38(SP), DX
         .          .    10ca64d: MOVQ DX, main.stats+16(SB)
         .          .    10ca654: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca65b: JNE 0x10ca67a
         .          .    10ca65d: MOVQ AX, main.stats(SB)
         .          .    10ca664: MOVQ 0x110(SP), SI
         .          .    10ca66c: MOVQ AX, DX
         .          .    10ca66f: MOVQ CX, AX
         .          .    10ca672: MOVQ DX, CX
         .          .    10ca675: JMP 0x10c9e87
         .          .    10ca67a: LEAQ main.stats(SB), DI
         .          .    10ca681: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca686: JMP 0x10ca664
         .          .    10ca688: MOVQ SI, AX                             ;graph.go:71
         .          .    10ca68b: CALL runtime.panicIndex(SB)
         .          .    10ca690: NOPL
         .          .    10ca691: CALL runtime.morestack_noctxt(SB)       ;graph.go:39
         .          .    10ca696: JMP main.LoadDictionary(SB)
         .          .    10ca69b: INT $0x3
         .          .    10ca69c: INT $0x3
         .          .    10ca69d: INT $0x3
         .          .    10ca69e: INT $0x3
ROUTINE ======================== main.distance
      60ms       60ms (flat, cum)  1.09% of Total
         .          .    10cb300: SUBQ $0x18, SP                          ;graph.go:284
         .          .    10cb304: MOVQ BP, 0x10(SP)
         .          .    10cb309: LEAQ 0x10(SP), BP
         .          .    10cb30e: MOVQ 0x28(SP), CX                       ;graph.go:290
         .          .    10cb313: MOVQ 0x40(SP), DX
         .          .    10cb318: CMPQ DX, CX
         .          .    10cb31b: MOVQ CX, BX                             ;graph.go:293
         .          .    10cb31e: CMOVG DX, CX
         .          .    10cb322: MOVQ BX, SI                             ;graph.go:285
         .          .    10cb325: SUBQ DX, BX
         .          .    10cb328: MOVQ DX, DI                             ;graph.go:287
         .          .    10cb32b: SUBQ SI, DX
         .          .    10cb32e: TESTQ BX, BX                            ;graph.go:286
         .          .    10cb331: CMOVL DX, BX                            ;graph.go:295
         .          .    10cb335: MOVQ 0x38(SP), DX                       ;graph.go:286
         .          .    10cb33a: MOVQ 0x20(SP), R8
         .          .    10cb33f: XORL AX, AX
         .          .    10cb341: JMP 0x10cb356
         .          .    10cb343: MOVZX 0(DX)(AX*1), R10                  ;graph.go:294
      40ms       40ms    10cb348: LEAQ 0x1(BX), R11                       ;main.distance graph.go:295
         .          .    10cb34c: CMPL R10, R9                            ;graph.go:294
         .          .    10cb34f: CMOVNE R11, BX                          ;graph.go:295
      10ms       10ms    10cb353: INCQ AX                                 ;main.distance graph.go:293
      10ms       10ms    10cb356: CMPQ CX, AX
         .          .    10cb359: JGE 0x10cb36c                           ;graph.go:293
         .          .    10cb35b: CMPQ SI, AX                             ;graph.go:294
         .          .    10cb35e: JAE 0x10cb383
         .          .    10cb360: MOVZX 0(R8)(AX*1), R9
         .          .    10cb365: CMPQ DI, AX
         .          .    10cb368: JB 0x10cb343
         .          .    10cb36a: JMP 0x10cb37b
         .          .    10cb36c: MOVQ BX, 0x50(SP)                       ;graph.go:299
         .          .    10cb371: MOVQ 0x10(SP), BP
         .          .    10cb376: ADDQ $0x18, SP
         .          .    10cb37a: RET
         .          .    10cb37b: MOVQ DI, CX                             ;graph.go:294
         .          .    10cb37e: CALL runtime.panicIndex(SB)
         .          .    10cb383: MOVQ SI, CX
         .          .    10cb386: CALL runtime.panicIndex(SB)
         .          .    10cb38b: NOPL
         .          .    10cb38c: INT $0x3
         .          .    10cb38d: INT $0x3
         .          .    10cb38e: INT $0x3
ROUTINE ======================== main.main
         0      2.67s (flat, cum) 48.63% of Total
         .          .    10cda30: MOVQ GS:0x30, CX                        ;main.go:27
         .          .    10cda39: LEAQ 0xfffffd98(SP), AX
         .          .    10cda41: CMPQ 0x10(CX), AX
         .          .    10cda45: JBE 0x10ce76a
         .          .    10cda4b: SUBQ $0x2e8, SP
         .          .    10cda52: MOVQ BP, 0x2e0(SP)
         .          .    10cda5a: LEAQ 0x2e0(SP), BP
         .          .    10cda62: MOVQ os.Args+8(SB), CX                  ;main.go:28
         .          .    10cda69: MOVQ os.Args(SB), DX                    ;flag.go:996
         .          .    10cda70: MOVQ os.Args+16(SB), BX
         .          .    10cda77: CMPQ $0x1, CX
         .          .    10cda7b: JB 0x10ce75f
         .          .    10cda81: MOVQ flag.CommandLine(SB), AX
         .          .    10cda88: MOVQ AX, 0(SP)
         .          .    10cda8c: LEAQ -0x1(BX), AX
         .          .    10cda90: MOVQ AX, BX
         .          .    10cda93: NEGQ AX
         .          .    10cda96: SARQ $0x3f, AX
         .          .    10cda9a: ANDQ $0x10, AX
         .          .    10cda9e: ADDQ DX, AX
         .          .    10cdaa1: MOVQ AX, 0x8(SP)
         .          .    10cdaa6: LEAQ -0x1(CX), AX
         .          .    10cdaaa: MOVQ AX, 0x10(SP)
         .          .    10cdaaf: MOVQ BX, 0x18(SP)
         .          .    10cdab4: CALL flag.(*FlagSet).Parse(SB)
         .          .    10cdab9: MOVQ main.cpuprofile(SB), AX            ;main.go:30
         .          .    10cdac0: MOVQ 0(AX), CX
         .          .    10cdac3: MOVQ 0x8(AX), AX
         .          .    10cdac7: TESTQ AX, AX
         .          .    10cdaca: JNE 0x10ce602
         .          .    10cdad0: MOVQ main.traceprofile(SB), AX          ;main.go:40
         .          .    10cdad7: MOVQ 0(AX), CX
         .          .    10cdada: MOVQ 0x8(AX), AX
         .          .    10cdade: TESTQ AX, AX
         .          .    10cdae1: JNE 0x10ce4a0
         .          .    10cdae7: MOVQ main.dump(SB), AX                  ;main.go:50
         .          .    10cdaee: MOVQ 0x8(AX), CX
         .          .    10cdaf2: MOVQ 0(AX), AX
         .          .    10cdaf5: TESTQ CX, CX
         .          .    10cdaf8: JNE 0x10ce48d
         .          .    10cdafe: XORPS X0, X0                            ;main.go:54
         .          .    10cdb01: MOVUPS X0, 0x250(SP)
         .          .    10cdb09: LEAQ runtime.types+88864(SB), AX
         .          .    10cdb10: MOVQ AX, 0x250(SP)
         .          .    10cdb18: LEAQ internal/bytealg.IndexString.args_stackmap+640(SB), CX
         .          .    10cdb1f: MOVQ CX, 0x258(SP)
         .          .    10cdb27: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cdb2e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdb35: MOVQ DX, 0(SP)
         .          .    10cdb39: MOVQ CX, 0x8(SP)
         .          .    10cdb3e: LEAQ 0x250(SP), CX
         .          .    10cdb46: MOVQ CX, 0x10(SP)
         .          .    10cdb4b: MOVQ $0x1, 0x18(SP)
         .          .    10cdb54: MOVQ $0x1, 0x20(SP)
         .          .    10cdb5d: CALL fmt.Fprintln(SB)
         .          .    10cdb62: MOVQ main.dict(SB), AX                  ;main.go:55
         .          .    10cdb69: MOVQ main.numBuckets(SB), CX
         .          .    10cdb70: MOVQ main.indexStats(SB), DX
         .          .    10cdb77: MOVQ main.perfStats(SB), BX
         .          .    10cdb7e: MOVQ main.dump(SB), SI
         .          .    10cdb85: MOVQ 0x8(AX), DI
         .          .    10cdb89: MOVQ 0(AX), AX
         .          .    10cdb8c: MOVQ 0(CX), CX
         .          .    10cdb8f: MOVZX 0(DX), DX
         .          .    10cdb92: MOVZX 0(BX), BX
         .          .    10cdb95: MOVQ 0(SI), R8
         .          .    10cdb98: MOVQ 0x8(SI), SI
         .          .    10cdb9c: MOVQ AX, 0(SP)
         .          .    10cdba0: MOVQ DI, 0x8(SP)
         .          .    10cdba5: MOVQ CX, 0x10(SP)
         .          .    10cdbaa: MOVB DL, 0x18(SP)
         .          .    10cdbae: MOVB BL, 0x19(SP)
         .          .    10cdbb2: MOVQ R8, 0x20(SP)
         .          .    10cdbb7: MOVQ SI, 0x28(SP)
         .      2.63s    10cdbbc: CALL main.LoadDictionary(SB)            ;main.main main.go:55
         .          .    10cdbc1: MOVQ 0x30(SP), AX                       ;main.go:55
         .          .    10cdbc6: MOVQ AX, 0x1d0(SP)
         .          .    10cdbce: MOVQ 0x8(AX), CX                        ;graph.go:304
         .          .    10cdbd2: MOVQ CX, 0x78(SP)
         .          .    10cdbd7: MOVQ AX, 0(SP)                          ;main.go:56
         .          .    10cdbdb: CALL main.(*Graph).EdgeCount(SB)
         .          .    10cdbe0: MOVQ 0x8(SP), AX
         .          .    10cdbe5: MOVQ AX, 0x70(SP)
         .          .    10cdbea: MOVQ 0x78(SP), CX
         .          .    10cdbef: MOVQ CX, 0(SP)
         .          .    10cdbf3: CALL runtime.convT64(SB)
         .          .    10cdbf8: MOVQ 0x8(SP), AX
         .          .    10cdbfd: MOVQ AX, 0x1f8(SP)
         .          .    10cdc05: MOVQ 0x70(SP), CX
         .          .    10cdc0a: MOVQ CX, 0(SP)
         .          .    10cdc0e: CALL runtime.convT64(SB)
         .          .    10cdc13: MOVQ 0x8(SP), AX
         .          .    10cdc18: XORPS X0, X0
         .          .    10cdc1b: MOVUPS X0, 0x2c0(SP)
         .          .    10cdc23: MOVUPS X0, 0x2d0(SP)
         .          .    10cdc2b: LEAQ runtime.types+86176(SB), CX
         .          .    10cdc32: MOVQ CX, 0x2c0(SP)
         .          .    10cdc3a: MOVQ 0x1f8(SP), DX
         .          .    10cdc42: MOVQ DX, 0x2c8(SP)
         .          .    10cdc4a: MOVQ CX, 0x2d0(SP)
         .          .    10cdc52: MOVQ AX, 0x2d8(SP)
         .          .    10cdc5a: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdc61: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cdc68: MOVQ CX, 0(SP)
         .          .    10cdc6c: MOVQ AX, 0x8(SP)
         .          .    10cdc71: LEAQ go.string.*+11078(SB), AX
         .          .    10cdc78: MOVQ AX, 0x10(SP)
         .          .    10cdc7d: MOVQ $0x14, 0x18(SP)
         .          .    10cdc86: LEAQ 0x2c0(SP), AX
         .          .    10cdc8e: MOVQ AX, 0x20(SP)
         .          .    10cdc93: MOVQ $0x2, 0x28(SP)
         .          .    10cdc9c: MOVQ $0x2, 0x30(SP)
         .          .    10cdca5: CALL fmt.Fprintf(SB)
         .          .    10cdcaa: MOVQ main.dictStats(SB), AX             ;main.go:58
         .          .    10cdcb1: CMPB $0x0, 0(AX)
         .          .    10cdcb4: JNE 0x10ce46c
         .          .    10cdcba: MOVQ main.src(SB), AX                   ;main.go:62
         .          .    10cdcc1: MOVQ 0(AX), CX
         .          .    10cdcc4: MOVQ 0x8(AX), AX
         .          .    10cdcc8: TESTQ AX, AX
         .          .    10cdccb: JE 0x10cdcdf
         .          .    10cdccd: MOVQ main.dest(SB), DX
         .          .    10cdcd4: CMPQ $0x0, 0x8(DX)
         .          .    10cdcd9: JNE 0x10cdf0e
         .          .    10cdcdf: MOVQ main.printGraph(SB), AX            ;main.go:86
         .          .    10cdce6: CMPB $0x0, 0(AX)
         .          .    10cdce9: JNE 0x10cdef8
         .          .    10cdcef: MOVQ main.csv(SB), AX                   ;main.go:90
         .          .    10cdcf6: CMPB $0x0, 0(AX)
         .          .    10cdcf9: JE 0x10cdeee
         .          .    10cdcff: MOVB $0x1, 0(SP)                        ;main.go:91
         .          .    10cdd03: CALL main.PrintStatsCSV(SB)
         .          .    10cdd08: MOVQ main.memprofile(SB), AX            ;main.go:96
         .          .    10cdd0f: CMPQ $0x0, 0x8(AX)
         .          .    10cdd14: JNE 0x10cdd2c
         .          .    10cdd16: NOPL                                    ;main.go:107
         .          .    10cdd17: CALL runtime.deferreturn(SB)
         .          .    10cdd1c: MOVQ 0x2e0(SP), BP
         .          .    10cdd24: ADDQ $0x2e8, SP
         .          .    10cdd2b: RET
         .       10ms    10cdd2c: CALL runtime.GC(SB)                     ;main.main main.go:97
         .          .    10cdd31: MOVQ main.memprofile(SB), AX            ;main.go:98
         .          .    10cdd38: MOVQ 0(AX), CX
         .          .    10cdd3b: MOVQ 0x8(AX), AX
         .          .    10cdd3f: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cdd43: MOVQ AX, 0x8(SP)
         .          .    10cdd48: MOVQ $0x602, 0x10(SP)
         .          .    10cdd51: MOVL $0x1b6, 0x18(SP)
         .          .    10cdd59: CALL os.OpenFile(SB)
         .          .    10cdd5e: MOVQ 0x20(SP), AX
         .          .    10cdd63: MOVQ AX, 0x1f0(SP)
         .          .    10cdd6b: MOVQ 0x28(SP), CX
         .          .    10cdd70: MOVQ 0x30(SP), DX
         .          .    10cdd75: TESTQ CX, CX                            ;main.go:99
         .          .    10cdd78: JE 0x10cdde4
         .          .    10cdd7a: JE 0x10cdd80                            ;main.go:100
         .          .    10cdd7c: MOVQ 0x8(CX), CX
         .          .    10cdd80: XORPS X0, X0
         .          .    10cdd83: MOVUPS X0, 0x260(SP)
         .          .    10cdd8b: MOVUPS X0, 0x270(SP)
         .          .    10cdd93: LEAQ runtime.types+88864(SB), AX
         .          .    10cdd9a: MOVQ AX, 0x260(SP)
         .          .    10cdda2: LEAQ internal/bytealg.IndexString.args_stackmap+672(SB), BX
         .          .    10cdda9: MOVQ BX, 0x268(SP)
         .          .    10cddb1: MOVQ CX, 0x270(SP)
         .          .    10cddb9: MOVQ DX, 0x278(SP)
         .          .    10cddc1: LEAQ 0x260(SP), CX
         .          .    10cddc9: MOVQ CX, 0(SP)
         .          .    10cddcd: MOVQ $0x2, 0x8(SP)
         .          .    10cddd6: MOVQ $0x2, 0x10(SP)
         .          .    10cdddf: CALL log.Fatal(SB)
         .          .    10cdde4: MOVL $0x18, 0xf0(SP)                    ;main.go:102
         .          .    10cddef: LEAQ go.func.*+300(SB), AX
         .          .    10cddf6: MOVQ AX, 0x108(SP)
         .          .    10cddfe: MOVQ 0x1f0(SP), AX
         .          .    10cde06: MOVQ AX, 0x120(SP)
         .          .    10cde0e: LEAQ 0xf0(SP), CX
         .          .    10cde16: MOVQ CX, 0(SP)
         .          .    10cde1a: CALL runtime.deferprocStack(SB)
         .          .    10cde1f: TESTL AX, AX
         .          .    10cde21: JNE 0x10cded8
         .       10ms    10cde27: NOPL                                    ;runtime/pprof.WriteHeapProfile pprof.go:522
         .          .    10cde28: LEAQ go.itab.*os.File,io.Writer(SB), AX ;pprof.go:533
         .          .    10cde2f: MOVQ AX, 0(SP)
         .          .    10cde33: MOVQ 0x1f0(SP), AX
         .          .    10cde3b: MOVQ AX, 0x8(SP)
         .          .    10cde40: MOVQ $0x0, 0x10(SP)
         .          .    10cde49: XORPS X0, X0
         .          .    10cde4c: MOVUPS X0, 0x18(SP)
                                                                          ;runtime/pprof.writeHeap pprof.go:533
         .       10ms    10cde51: CALL runtime/pprof.writeHeapInternal(SB)
         .          .    10cde56: MOVQ 0x28(SP), AX                       ;pprof.go:533
         .          .    10cde5b: MOVQ 0x30(SP), CX
         .       10ms    10cde60: TESTQ AX, AX                            ;main.main main.go:103
         .          .    10cde63: JE 0x10cdd16                            ;main.go:103
         .          .    10cde69: JE 0x10cde6f                            ;main.go:104
         .          .    10cde6b: MOVQ 0x8(AX), AX
         .          .    10cde6f: XORPS X0, X0
         .          .    10cde72: MOVUPS X0, 0x260(SP)
         .          .    10cde7a: MOVUPS X0, 0x270(SP)
         .          .    10cde82: LEAQ runtime.types+88864(SB), DX
         .          .    10cde89: MOVQ DX, 0x260(SP)
         .          .    10cde91: LEAQ internal/bytealg.IndexString.args_stackmap+688(SB), DX
         .          .    10cde98: MOVQ DX, 0x268(SP)
         .          .    10cdea0: MOVQ AX, 0x270(SP)
         .          .    10cdea8: MOVQ CX, 0x278(SP)
         .          .    10cdeb0: LEAQ 0x260(SP), AX
         .          .    10cdeb8: MOVQ AX, 0(SP)
         .          .    10cdebc: MOVQ $0x2, 0x8(SP)
         .          .    10cdec5: MOVQ $0x2, 0x10(SP)
         .          .    10cdece: CALL log.Fatal(SB)
         .          .    10cded3: JMP 0x10cdd16
         .          .    10cded8: NOPL                                    ;main.go:102
         .          .    10cded9: CALL runtime.deferreturn(SB)
         .          .    10cdede: MOVQ 0x2e0(SP), BP
         .          .    10cdee6: ADDQ $0x2e8, SP
         .          .    10cdeed: RET
         .          .    10cdeee: CALL main.PrintStats(SB)                ;main.go:93
         .          .    10cdef3: JMP 0x10cdd08
         .          .    10cdef8: MOVQ 0x1d0(SP), AX                      ;main.go:87
         .          .    10cdf00: MOVQ AX, 0(SP)
         .          .    10cdf04: CALL main.(*Graph).PrintAdjList(SB)
         .          .    10cdf09: JMP 0x10cdcef
         .          .    10cdf0e: MOVQ CX, 0(SP)                          ;main.go:63
         .          .    10cdf12: MOVQ AX, 0x8(SP)
         .          .    10cdf17: CALL runtime.convTstring(SB)
         .          .    10cdf1c: MOVQ main.dest(SB), AX
         .          .    10cdf23: MOVQ 0x10(SP), CX
         .          .    10cdf28: MOVQ CX, 0x1f8(SP)
         .          .    10cdf30: MOVQ 0x8(AX), DX
         .          .    10cdf34: MOVQ 0(AX), AX
         .          .    10cdf37: MOVQ AX, 0(SP)
         .          .    10cdf3b: MOVQ DX, 0x8(SP)
         .          .    10cdf40: CALL runtime.convTstring(SB)
         .          .    10cdf45: MOVQ 0x10(SP), AX
         .          .    10cdf4a: XORPS X0, X0
         .          .    10cdf4d: MOVUPS X0, 0x2a0(SP)
         .          .    10cdf55: MOVUPS X0, 0x2b0(SP)
         .          .    10cdf5d: LEAQ runtime.types+88864(SB), CX
         .          .    10cdf64: MOVQ CX, 0x2a0(SP)
         .          .    10cdf6c: MOVQ 0x1f8(SP), DX
         .          .    10cdf74: MOVQ DX, 0x2a8(SP)
         .          .    10cdf7c: MOVQ CX, 0x2b0(SP)
         .          .    10cdf84: MOVQ AX, 0x2b8(SP)
         .          .    10cdf8c: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdf93: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdf9a: MOVQ DX, 0(SP)
         .          .    10cdf9e: MOVQ AX, 0x8(SP)
         .          .    10cdfa3: LEAQ go.string.*+16367(SB), AX
         .          .    10cdfaa: MOVQ AX, 0x10(SP)
         .          .    10cdfaf: MOVQ $0x1b, 0x18(SP)
         .          .    10cdfb8: LEAQ 0x2a0(SP), AX
         .          .    10cdfc0: MOVQ AX, 0x20(SP)
         .          .    10cdfc5: MOVQ $0x2, 0x28(SP)
         .          .    10cdfce: MOVQ $0x2, 0x30(SP)
         .          .    10cdfd7: CALL fmt.Fprintf(SB)
         .          .    10cdfdc: MOVQ main.src(SB), AX                   ;main.go:64
         .          .    10cdfe3: MOVQ 0x8(AX), CX
         .          .    10cdfe7: MOVQ 0(AX), AX
         .          .    10cdfea: MOVQ 0x1d0(SP), DX
         .          .    10cdff2: MOVQ DX, 0(SP)
         .          .    10cdff6: MOVQ AX, 0x8(SP)
         .          .    10cdffb: MOVQ CX, 0x10(SP)
         .          .    10ce000: CALL main.(*Graph).Find(SB)
         .          .    10ce005: MOVQ main.dest(SB), AX                  ;main.go:65
         .          .    10ce00c: MOVQ 0x18(SP), CX                       ;main.go:64
         .          .    10ce011: MOVQ CX, 0x58(SP)
         .          .    10ce016: MOVQ 0x8(AX), DX                        ;main.go:65
         .          .    10ce01a: MOVQ 0(AX), AX
         .          .    10ce01d: MOVQ 0x1d0(SP), BX
         .          .    10ce025: MOVQ BX, 0(SP)
         .          .    10ce029: MOVQ AX, 0x8(SP)
         .          .    10ce02e: MOVQ DX, 0x10(SP)
         .          .    10ce033: CALL main.(*Graph).Find(SB)
         .          .    10ce038: MOVQ 0x18(SP), AX
         .          .    10ce03d: MOVQ 0x58(SP), CX                       ;main.go:67
         .          .    10ce042: TESTQ CX, CX
         .          .    10ce045: JL 0x10ce311
         .          .    10ce04b: TESTQ AX, AX
         .          .    10ce04e: JL 0x10ce30e
         .          .    10ce054: XORPS X0, X0                            ;main.go:77
         .          .    10ce057: MOVUPS X0, 0x220(SP)
         .          .    10ce05f: LEAQ runtime.types+88864(SB), AX
         .          .    10ce066: MOVQ AX, 0x220(SP)
         .          .    10ce06e: LEAQ internal/bytealg.IndexString.args_stackmap+656(SB), CX
         .          .    10ce075: MOVQ CX, 0x228(SP)
         .          .    10ce07d: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10ce084: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ce08b: MOVQ DX, 0(SP)
         .          .    10ce08f: MOVQ CX, 0x8(SP)
         .          .    10ce094: LEAQ 0x220(SP), CX
         .          .    10ce09c: MOVQ CX, 0x10(SP)
         .          .    10ce0a1: MOVQ $0x1, 0x18(SP)
         .          .    10ce0aa: MOVQ $0x1, 0x20(SP)
         .          .    10ce0b3: CALL fmt.Fprintln(SB)
         .          .    10ce0b8: MOVQ 0x1d0(SP), AX                      ;main.go:78
         .          .    10ce0c0: MOVQ AX, 0(SP)
         .          .    10ce0c4: MOVQ 0x58(SP), CX
         .          .    10ce0c9: MOVQ CX, 0x8(SP)
         .          .    10ce0ce: CALL main.(*Graph).AllPaths(SB)
         .          .    10ce0d3: MOVQ main.dest(SB), AX                  ;main.go:79
         .          .    10ce0da: MOVQ 0x10(SP), CX                       ;main.go:78
         .          .    10ce0df: MOVQ 0(AX), DX                          ;main.go:79
         .          .    10ce0e2: MOVQ 0x8(AX), AX
         .          .    10ce0e6: MOVQ CX, 0(SP)
         .          .    10ce0ea: MOVQ DX, 0x8(SP)
         .          .    10ce0ef: MOVQ AX, 0x10(SP)
         .          .    10ce0f4: CALL main.(*Paths).To(SB)
         .          .    10ce0f9: MOVQ 0x20(SP), AX
         .          .    10ce0fe: MOVQ AX, 0x60(SP)
         .          .    10ce103: MOVQ 0x18(SP), CX
         .          .    10ce108: MOVQ CX, 0x1c8(SP)
         .          .    10ce110: TESTQ AX, AX                            ;main.go:80
         .          .    10ce113: JE 0x10ce220
         .          .    10ce119: MOVQ 0x1d0(SP), DX                      ;main.go:83
         .          .    10ce121: XORL BX, BX
         .          .    10ce123: JMP 0x10ce1fe
         .          .    10ce128: MOVQ BX, 0x78(SP)
         .          .    10ce12d: LEAQ 0(SI)(SI*2), AX                    ;main.go:84
         .          .    10ce131: MOVQ 0x10(R8)(AX*8), CX
         .          .    10ce136: MOVQ 0x8(R8)(AX*8), DX
         .          .    10ce13b: MOVQ 0(R8)(AX*8), AX
         .          .    10ce13f: MOVQ $0x0, 0(SP)
         .          .    10ce147: MOVQ AX, 0x8(SP)
         .          .    10ce14c: MOVQ DX, 0x10(SP)
         .          .    10ce151: MOVQ CX, 0x18(SP)
         .          .    10ce156: CALL runtime.slicebytetostring(SB)
         .          .    10ce15b: MOVQ 0x20(SP), AX
         .          .    10ce160: MOVQ 0x28(SP), CX
         .          .    10ce165: MOVQ AX, 0(SP)
         .          .    10ce169: MOVQ CX, 0x8(SP)
         .          .    10ce16e: CALL runtime.convTstring(SB)
         .          .    10ce173: MOVQ 0x10(SP), AX
         .          .    10ce178: XORPS X0, X0
         .          .    10ce17b: MOVUPS X0, 0x210(SP)
         .          .    10ce183: LEAQ runtime.types+88864(SB), CX
         .          .    10ce18a: MOVQ CX, 0x210(SP)
         .          .    10ce192: MOVQ AX, 0x218(SP)
         .          .    10ce19a: MOVQ os.Stdout(SB), AX                  ;print.go:274
         .          .    10ce1a1: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ce1a8: MOVQ DX, 0(SP)
         .          .    10ce1ac: MOVQ AX, 0x8(SP)
         .          .    10ce1b1: LEAQ 0x210(SP), AX
         .          .    10ce1b9: MOVQ AX, 0x10(SP)
         .          .    10ce1be: MOVQ $0x1, 0x18(SP)
         .          .    10ce1c7: MOVQ $0x1, 0x20(SP)
         .          .    10ce1d0: CALL fmt.Fprintln(SB)
         .          .    10ce1d5: MOVQ 0x78(SP), AX                       ;main.go:83
         .          .    10ce1da: LEAQ 0x1(AX), BX
         .          .    10ce1de: MOVQ 0x60(SP), AX
         .          .    10ce1e3: MOVQ 0x1d0(SP), CX
         .          .    10ce1eb: MOVQ 0x1c8(SP), DX
         .          .    10ce1f3: MOVQ DX, CX
         .          .    10ce1f6: MOVQ 0x1d0(SP), DX                      ;main.go:84
         .          .    10ce1fe: CMPQ AX, BX                             ;main.go:83
         .          .    10ce201: JGE 0x10cdcef
         .          .    10ce207: MOVQ 0(CX)(BX*8), SI
         .          .    10ce20b: MOVQ 0x8(DX), DI                        ;main.go:84
         .          .    10ce20f: MOVQ 0(DX), R8
         .          .    10ce212: CMPQ DI, SI
         .          .    10ce215: JB 0x10ce128
         .          .    10ce21b: JMP 0x10ce754
         .          .    10ce220: MOVQ main.src(SB), AX                   ;main.go:81
         .          .    10ce227: MOVQ 0(AX), CX
         .          .    10ce22a: MOVQ 0x8(AX), AX
         .          .    10ce22e: MOVQ CX, 0(SP)
         .          .    10ce232: MOVQ AX, 0x8(SP)
         .          .    10ce237: CALL runtime.convTstring(SB)
         .          .    10ce23c: MOVQ main.dest(SB), AX
         .          .    10ce243: MOVQ 0x10(SP), CX
         .          .    10ce248: MOVQ CX, 0x1f8(SP)
         .          .    10ce250: MOVQ 0x8(AX), DX
         .          .    10ce254: MOVQ 0(AX), AX
         .          .    10ce257: MOVQ AX, 0(SP)
         .          .    10ce25b: MOVQ DX, 0x8(SP)
         .          .    10ce260: CALL runtime.convTstring(SB)
         .          .    10ce265: MOVQ 0x10(SP), AX
         .          .    10ce26a: XORPS X0, X0
         .          .    10ce26d: MOVUPS X0, 0x280(SP)
         .          .    10ce275: MOVUPS X0, 0x290(SP)
         .          .    10ce27d: LEAQ runtime.types+88864(SB), CX
         .          .    10ce284: MOVQ CX, 0x280(SP)
         .          .    10ce28c: MOVQ 0x1f8(SP), DX
         .          .    10ce294: MOVQ DX, 0x288(SP)
         .          .    10ce29c: MOVQ CX, 0x290(SP)
         .          .    10ce2a4: MOVQ AX, 0x298(SP)
         .          .    10ce2ac: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ce2b3: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ce2ba: MOVQ DX, 0(SP)
         .          .    10ce2be: MOVQ AX, 0x8(SP)
         .          .    10ce2c3: LEAQ go.string.*+20133(SB), AX
         .          .    10ce2ca: MOVQ AX, 0x10(SP)
         .          .    10ce2cf: MOVQ $0x1f, 0x18(SP)
         .          .    10ce2d8: LEAQ 0x280(SP), AX
         .          .    10ce2e0: MOVQ AX, 0x20(SP)
         .          .    10ce2e5: MOVQ $0x2, 0x28(SP)
         .          .    10ce2ee: MOVQ $0x2, 0x30(SP)
         .          .    10ce2f7: CALL fmt.Fprintf(SB)
         .          .    10ce2fc: MOVQ 0x60(SP), AX                       ;main.go:83
         .          .    10ce301: MOVQ 0x1c8(SP), CX
         .          .    10ce309: JMP 0x10ce119
         .          .    10ce30e: TESTQ CX, CX                            ;main.go:67
         .          .    10ce311: JL 0x10ce3ca                            ;main.go:68
         .          .    10ce317: TESTQ AX, AX                            ;main.go:71
         .          .    10ce31a: JL 0x10ce332
         .          .    10ce31c: NOPL                                    ;main.go:74
         .          .    10ce31d: CALL runtime.deferreturn(SB)
         .          .    10ce322: MOVQ 0x2e0(SP), BP
         .          .    10ce32a: ADDQ $0x2e8, SP
         .          .    10ce331: RET
         .          .    10ce332: MOVQ main.dest(SB), AX                  ;main.go:72
         .          .    10ce339: MOVQ 0x8(AX), CX
         .          .    10ce33d: MOVQ 0(AX), AX
         .          .    10ce340: MOVQ AX, 0(SP)
         .          .    10ce344: MOVQ CX, 0x8(SP)
         .          .    10ce349: CALL runtime.convTstring(SB)
         .          .    10ce34e: MOVQ 0x10(SP), AX
         .          .    10ce353: XORPS X0, X0
         .          .    10ce356: MOVUPS X0, 0x230(SP)
         .          .    10ce35e: LEAQ runtime.types+88864(SB), CX
         .          .    10ce365: MOVQ CX, 0x230(SP)
         .          .    10ce36d: MOVQ AX, 0x238(SP)
         .          .    10ce375: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ce37c: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10ce383: MOVQ CX, 0(SP)
         .          .    10ce387: MOVQ AX, 0x8(SP)
         .          .    10ce38c: LEAQ go.string.*+7974(SB), AX
         .          .    10ce393: MOVQ AX, 0x10(SP)
         .          .    10ce398: MOVQ $0x11, 0x18(SP)
         .          .    10ce3a1: LEAQ 0x230(SP), AX
         .          .    10ce3a9: MOVQ AX, 0x20(SP)
         .          .    10ce3ae: MOVQ $0x1, 0x28(SP)
         .          .    10ce3b7: MOVQ $0x1, 0x30(SP)
         .          .    10ce3c0: CALL fmt.Fprintf(SB)
         .          .    10ce3c5: JMP 0x10ce31c                           ;main.go:74
         .          .    10ce3ca: MOVQ AX, 0x50(SP)                       ;main.go:65
         .          .    10ce3cf: MOVQ main.src(SB), AX                   ;main.go:69
         .          .    10ce3d6: MOVQ 0x8(AX), CX
         .          .    10ce3da: MOVQ 0(AX), AX
         .          .    10ce3dd: MOVQ AX, 0(SP)
         .          .    10ce3e1: MOVQ CX, 0x8(SP)
         .          .    10ce3e6: CALL runtime.convTstring(SB)
         .          .    10ce3eb: MOVQ 0x10(SP), AX
         .          .    10ce3f0: XORPS X0, X0
         .          .    10ce3f3: MOVUPS X0, 0x240(SP)
         .          .    10ce3fb: LEAQ runtime.types+88864(SB), CX
         .          .    10ce402: MOVQ CX, 0x240(SP)
         .          .    10ce40a: MOVQ AX, 0x248(SP)
         .          .    10ce412: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10ce419: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10ce420: MOVQ DX, 0(SP)
         .          .    10ce424: MOVQ AX, 0x8(SP)
         .          .    10ce429: LEAQ go.string.*+7974(SB), AX
         .          .    10ce430: MOVQ AX, 0x10(SP)
         .          .    10ce435: MOVQ $0x11, 0x18(SP)
         .          .    10ce43e: LEAQ 0x240(SP), BX
         .          .    10ce446: MOVQ BX, 0x20(SP)
         .          .    10ce44b: MOVQ $0x1, 0x28(SP)
         .          .    10ce454: MOVQ $0x1, 0x30(SP)
         .          .    10ce45d: CALL fmt.Fprintf(SB)
         .          .    10ce462: MOVQ 0x50(SP), AX                       ;main.go:71
         .          .    10ce467: JMP 0x10ce317
         .          .    10ce46c: MOVQ main.dict(SB), AX                  ;main.go:59
         .          .    10ce473: MOVQ 0x8(AX), CX
         .          .    10ce477: MOVQ 0(AX), AX
         .          .    10ce47a: MOVQ AX, 0(SP)
         .          .    10ce47e: MOVQ CX, 0x8(SP)
         .          .    10ce483: CALL main.dictionaryStats(SB)
         .          .    10ce488: JMP 0x10cdcba
         .          .    10ce48d: MOVQ AX, 0(SP)                          ;main.go:51
         .          .    10ce491: MOVQ CX, 0x8(SP)
         .          .    10ce496: CALL main.createPathIfNotExists(SB)
         .          .    10ce49b: JMP 0x10cdafe
         .          .    10ce4a0: NOPL                                    ;main.go:41
         .          .    10ce4a1: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10ce4a5: MOVQ AX, 0x8(SP)
         .          .    10ce4aa: MOVQ $0x602, 0x10(SP)
         .          .    10ce4b3: MOVL $0x1b6, 0x18(SP)
         .          .    10ce4bb: CALL os.OpenFile(SB)
         .          .    10ce4c0: MOVQ 0x20(SP), AX
         .          .    10ce4c5: MOVQ AX, 0x1d8(SP)
         .          .    10ce4cd: MOVQ 0x28(SP), CX
         .          .    10ce4d2: MOVQ 0x30(SP), DX
         .          .    10ce4d7: TESTQ CX, CX                            ;main.go:42
         .          .    10ce4da: JE 0x10ce546
         .          .    10ce4dc: JE 0x10ce4e2                            ;main.go:43
         .          .    10ce4de: MOVQ 0x8(CX), CX
         .          .    10ce4e2: XORPS X0, X0
         .          .    10ce4e5: MOVUPS X0, 0x260(SP)
         .          .    10ce4ed: MOVUPS X0, 0x270(SP)
         .          .    10ce4f5: LEAQ runtime.types+88864(SB), AX
         .          .    10ce4fc: MOVQ AX, 0x260(SP)
         .          .    10ce504: LEAQ internal/bytealg.IndexString.args_stackmap+624(SB), BX
         .          .    10ce50b: MOVQ BX, 0x268(SP)
         .          .    10ce513: MOVQ CX, 0x270(SP)
         .          .    10ce51b: MOVQ DX, 0x278(SP)
         .          .    10ce523: LEAQ 0x260(SP), CX
         .          .    10ce52b: MOVQ CX, 0(SP)
         .          .    10ce52f: MOVQ $0x2, 0x8(SP)
         .          .    10ce538: MOVQ $0x2, 0x10(SP)
         .          .    10ce541: CALL log.Fatal(SB)
         .          .    10ce546: MOVL $0x18, 0x138(SP)                   ;main.go:45
         .          .    10ce551: LEAQ go.func.*+300(SB), AX
         .          .    10ce558: MOVQ AX, 0x150(SP)
         .          .    10ce560: MOVQ 0x1d8(SP), CX
         .          .    10ce568: MOVQ CX, 0x168(SP)
         .          .    10ce570: LEAQ 0x138(SP), DX
         .          .    10ce578: MOVQ DX, 0(SP)
         .          .    10ce57c: CALL runtime.deferprocStack(SB)
         .          .    10ce581: TESTL AX, AX
         .          .    10ce583: JNE 0x10ce5ec
         .          .    10ce585: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:46
         .          .    10ce58c: MOVQ AX, 0(SP)
         .          .    10ce590: MOVQ 0x1d8(SP), CX
         .          .    10ce598: MOVQ CX, 0x8(SP)
         .          .    10ce59d: CALL runtime/trace.Start(SB)
         .          .    10ce5a2: MOVL $0x0, 0x80(SP)                     ;main.go:47
         .          .    10ce5ad: LEAQ go.func.*+1604(SB), AX
         .          .    10ce5b4: MOVQ AX, 0x98(SP)
         .          .    10ce5bc: LEAQ 0x80(SP), AX
         .          .    10ce5c4: MOVQ AX, 0(SP)
         .          .    10ce5c8: CALL runtime.deferprocStack(SB)
         .          .    10ce5cd: TESTL AX, AX
         .          .    10ce5cf: JNE 0x10ce5d6
         .          .    10ce5d1: JMP 0x10cdae7
         .          .    10ce5d6: NOPL
         .          .    10ce5d7: CALL runtime.deferreturn(SB)
         .          .    10ce5dc: MOVQ 0x2e0(SP), BP
         .          .    10ce5e4: ADDQ $0x2e8, SP
         .          .    10ce5eb: RET
         .          .    10ce5ec: NOPL                                    ;main.go:45
         .          .    10ce5ed: CALL runtime.deferreturn(SB)
         .          .    10ce5f2: MOVQ 0x2e0(SP), BP
         .          .    10ce5fa: ADDQ $0x2e8, SP
         .          .    10ce601: RET
         .          .    10ce602: NOPL                                    ;main.go:31
         .          .    10ce603: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10ce607: MOVQ AX, 0x8(SP)
         .          .    10ce60c: MOVQ $0x602, 0x10(SP)
         .          .    10ce615: MOVL $0x1b6, 0x18(SP)
         .          .    10ce61d: CALL os.OpenFile(SB)
         .          .    10ce622: MOVQ 0x20(SP), AX
         .          .    10ce627: MOVQ AX, 0x1e0(SP)
         .          .    10ce62f: MOVQ 0x28(SP), CX
         .          .    10ce634: MOVQ CX, 0x68(SP)
         .          .    10ce639: MOVQ 0x30(SP), DX
         .          .    10ce63e: MOVQ DX, 0x1e8(SP)
         .          .    10ce646: MOVL $0x18, 0x180(SP)                   ;main.go:32
         .          .    10ce651: LEAQ go.func.*+300(SB), BX
         .          .    10ce658: MOVQ BX, 0x198(SP)
         .          .    10ce660: MOVQ AX, 0x1b0(SP)
         .          .    10ce668: LEAQ 0x180(SP), SI
         .          .    10ce670: MOVQ SI, 0(SP)
         .          .    10ce674: CALL runtime.deferprocStack(SB)
         .          .    10ce679: TESTL AX, AX
         .          .    10ce67b: JNE 0x10ce73e
         .          .    10ce681: MOVQ 0x68(SP), AX                       ;main.go:33
         .          .    10ce686: TESTQ AX, AX
         .          .    10ce689: JE 0x10ce6d7
         .          .    10ce68b: JE 0x10ce691                            ;main.go:34
         .          .    10ce68d: MOVQ 0x8(AX), AX
         .          .    10ce691: XORPS X0, X0
         .          .    10ce694: MOVUPS X0, 0x200(SP)
         .          .    10ce69c: MOVQ AX, 0x200(SP)
         .          .    10ce6a4: MOVQ 0x1e8(SP), AX
         .          .    10ce6ac: MOVQ AX, 0x208(SP)
         .          .    10ce6b4: LEAQ 0x200(SP), AX
         .          .    10ce6bc: MOVQ AX, 0(SP)
         .          .    10ce6c0: MOVQ $0x1, 0x8(SP)
         .          .    10ce6c9: MOVQ $0x1, 0x10(SP)
         .          .    10ce6d2: CALL log.Fatal(SB)
         .          .    10ce6d7: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:36
         .          .    10ce6de: MOVQ AX, 0(SP)
         .          .    10ce6e2: MOVQ 0x1e0(SP), CX
         .          .    10ce6ea: MOVQ CX, 0x8(SP)
         .          .    10ce6ef: CALL runtime/pprof.StartCPUProfile(SB)
         .          .    10ce6f4: MOVL $0x0, 0xb8(SP)                     ;main.go:37
         .          .    10ce6ff: LEAQ go.func.*+1572(SB), AX
         .          .    10ce706: MOVQ AX, 0xd0(SP)
         .          .    10ce70e: LEAQ 0xb8(SP), AX
         .          .    10ce716: MOVQ AX, 0(SP)
         .          .    10ce71a: CALL runtime.deferprocStack(SB)
         .          .    10ce71f: TESTL AX, AX
         .          .    10ce721: JNE 0x10ce728
         .          .    10ce723: JMP 0x10cdad0
         .          .    10ce728: NOPL
         .          .    10ce729: CALL runtime.deferreturn(SB)
         .          .    10ce72e: MOVQ 0x2e0(SP), BP
         .          .    10ce736: ADDQ $0x2e8, SP
         .          .    10ce73d: RET
         .          .    10ce73e: NOPL                                    ;main.go:32
         .          .    10ce73f: CALL runtime.deferreturn(SB)
         .          .    10ce744: MOVQ 0x2e0(SP), BP
         .          .    10ce74c: ADDQ $0x2e8, SP
         .          .    10ce753: RET
         .          .    10ce754: MOVQ SI, AX                             ;main.go:84
         .          .    10ce757: MOVQ DI, CX
         .          .    10ce75a: CALL runtime.panicIndex(SB)
         .          .    10ce75f: MOVL $0x1, AX                           ;flag.go:996
         .          .    10ce764: CALL runtime.panicSliceB(SB)
         .          .    10ce769: NOPL
         .          .    10ce76a: CALL runtime.morestack_noctxt(SB)       ;main.go:27
         .          .    10ce76f: JMP main.main(SB)
         .          .    10ce774: INT $0x3
         .          .    10ce775: INT $0x3
         .          .    10ce776: INT $0x3
         .          .    10ce777: INT $0x3
         .          .    10ce778: INT $0x3
         .          .    10ce779: INT $0x3
         .          .    10ce77a: INT $0x3
         .          .    10ce77b: INT $0x3
         .          .    10ce77c: INT $0x3
         .          .    10ce77d: INT $0x3
         .          .    10ce77e: INT $0x3
ROUTINE ======================== main.newIndex
      30ms      100ms (flat, cum)  1.82% of Total
         .          .    10cc040: MOVQ GS:0x30, CX                        ;index.go:28
         .          .    10cc049: CMPQ 0x10(CX), SP
         .          .    10cc04d: JBE 0x10cc24e
         .          .    10cc053: SUBQ $0x48, SP
         .          .    10cc057: MOVQ BP, 0x40(SP)
         .          .    10cc05c: LEAQ 0x40(SP), BP
         .          .    10cc061: LEAQ runtime.types+77472(SB), AX        ;index.go:29
         .          .    10cc068: MOVQ AX, 0(SP)
         .          .    10cc06c: MOVQ 0x50(SP), AX
         .          .    10cc071: MOVQ AX, 0x8(SP)
         .          .    10cc076: MOVQ AX, 0x10(SP)
         .       20ms    10cc07b: CALL runtime.makeslice(SB)              ;main.newIndex index.go:29
         .          .    10cc080: MOVQ 0x18(SP), AX                       ;index.go:29
         .          .    10cc085: MOVQ AX, 0x38(SP)
         .          .    10cc08a: XORL CX, CX
         .          .    10cc08c: JMP 0x10cc095                           ;index.go:30
         .          .    10cc08e: LEAQ 0x1(AX), CX
         .          .    10cc092: MOVQ BX, AX                             ;index.go:31
         .          .    10cc095: MOVQ 0x50(SP), DX                       ;index.go:30
         .          .    10cc09a: CMPQ DX, CX
         .          .    10cc09d: JGE 0x10cc104
         .          .    10cc09f: MOVQ CX, 0x20(SP)
         .          .    10cc0a4: LEAQ runtime.types+86176(SB), AX        ;index.go:31
         .          .    10cc0ab: MOVQ AX, 0(SP)
         .          .    10cc0af: XORPS X0, X0
         .          .    10cc0b2: MOVUPS X0, 0x8(SP)
         .       30ms    10cc0b7: CALL runtime.makeslice(SB)              ;main.newIndex index.go:31
         .          .    10cc0bc: MOVQ 0x20(SP), AX                       ;index.go:31
         .          .    10cc0c1: LEAQ 0(AX)(AX*2), CX
         .          .    10cc0c5: MOVQ 0x18(SP), DX
      10ms       10ms    10cc0ca: MOVQ 0x38(SP), BX                       ;main.newIndex index.go:31
      10ms       10ms    10cc0cf: MOVQ $0x0, 0x8(BX)(CX*8)
      10ms       10ms    10cc0d8: MOVQ $0x0, 0x10(BX)(CX*8)
         .          .    10cc0e1: LEAQ 0(BX)(CX*8), DI                    ;index.go:31
         .          .    10cc0e5: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc0ec: JNE 0x10cc0f4
         .          .    10cc0ee: MOVQ DX, 0(BX)(CX*8)
         .          .    10cc0f2: JMP 0x10cc08e
         .          .    10cc0f4: MOVQ AX, CX                             ;index.go:30
         .          .    10cc0f7: MOVQ DX, AX                             ;index.go:31
         .       20ms    10cc0fa: CALL runtime.gcWriteBarrier(SB)         ;main.newIndex index.go:31
         .          .    10cc0ff: MOVQ CX, AX                             ;index.go:30
         .          .    10cc102: JMP 0x10cc08e                           ;index.go:31
         .          .    10cc104: NOPL                                    ;murmur64.go:18
         .          .    10cc105: MOVL $0x0, 0(SP)                        ;murmur64.go:22
         .          .    10cc10c: CALL erichgess/wordladder/vendor/github.com/spaolacci/murmur3.New128WithSeed(SB)
         .          .    10cc111: MOVQ 0x10(SP), AX
         .          .    10cc116: MOVQ 0x8(SP), CX
         .          .    10cc11b: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest128,erichgess/wordladder/vendor/github.com/spaolacci/murmur3.Hash128(SB), DX
         .          .    10cc122: CMPQ DX, CX
         .          .    10cc125: JNE 0x10cc22c
         .          .    10cc12b: MOVQ AX, 0x28(SP)
         .          .    10cc130: LEAQ runtime.types+89184(SB), AX        ;index.go:35
         .          .    10cc137: MOVQ AX, 0(SP)
         .          .    10cc13b: MOVQ $0x0, 0x8(SP)
         .          .    10cc144: MOVQ 0x58(SP), AX
         .          .    10cc149: MOVQ AX, 0x10(SP)
         .          .    10cc14e: CALL runtime.makeslice(SB)
         .          .    10cc153: MOVQ 0x18(SP), AX
         .          .    10cc158: MOVQ AX, 0x30(SP)
         .          .    10cc15d: LEAQ runtime.types+196608(SB), CX       ;index.go:37
         .          .    10cc164: MOVQ CX, 0(SP)
         .          .    10cc168: CALL runtime.newobject(SB)
         .          .    10cc16d: MOVQ 0x8(SP), AX
                                                                          ;index.go:34
         .          .    10cc172: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest64,hash.Hash64(SB), CX
         .          .    10cc179: MOVQ CX, 0(AX)
         .          .    10cc17c: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc183: JNE 0x10cc213
         .          .    10cc189: MOVQ 0x28(SP), CX
         .          .    10cc18e: MOVQ CX, 0x8(AX)
         .          .    10cc192: MOVQ $0x0, 0x30(AX)                     ;index.go:35
         .          .    10cc19a: MOVQ 0x58(SP), CX
         .          .    10cc19f: MOVQ CX, 0x38(AX)
         .          .    10cc1a3: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc1aa: JNE 0x10cc1fd
         .          .    10cc1ac: MOVQ 0x30(SP), CX
         .          .    10cc1b1: MOVQ CX, 0x28(AX)
         .          .    10cc1b5: MOVQ 0x50(SP), CX                       ;index.go:36
         .          .    10cc1ba: MOVQ CX, 0x18(AX)
         .          .    10cc1be: MOVQ CX, 0x20(AX)
         .          .    10cc1c2: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc1c9: JNE 0x10cc1e7
         .          .    10cc1cb: MOVQ 0x38(SP), DX
         .          .    10cc1d0: MOVQ DX, 0x10(AX)
         .          .    10cc1d4: MOVQ CX, 0x40(AX)                       ;index.go:37
         .          .    10cc1d8: MOVQ AX, 0x60(SP)                       ;index.go:33
         .          .    10cc1dd: MOVQ 0x40(SP), BP
         .          .    10cc1e2: ADDQ $0x48, SP
         .          .    10cc1e6: RET
         .          .    10cc1e7: LEAQ 0x10(AX), DI                       ;index.go:36
         .          .    10cc1eb: MOVQ AX, DX                             ;index.go:37
         .          .    10cc1ee: MOVQ 0x38(SP), AX                       ;index.go:36
         .          .    10cc1f3: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc1f8: MOVQ DX, AX                             ;index.go:37
         .          .    10cc1fb: JMP 0x10cc1d4                           ;index.go:36
         .          .    10cc1fd: LEAQ 0x28(AX), DI                       ;index.go:35
         .          .    10cc201: MOVQ AX, CX                             ;index.go:37
         .          .    10cc204: MOVQ 0x30(SP), AX                       ;index.go:35
         .          .    10cc209: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc20e: MOVQ CX, AX                             ;index.go:36
         .          .    10cc211: JMP 0x10cc1b5                           ;index.go:35
         .          .    10cc213: LEAQ 0x8(AX), DI                        ;index.go:34
         .          .    10cc217: MOVQ AX, CX                             ;index.go:37
         .          .    10cc21a: MOVQ 0x28(SP), AX                       ;index.go:34
         .          .    10cc21f: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc224: MOVQ CX, AX                             ;index.go:35
         .          .    10cc227: JMP 0x10cc192                           ;index.go:34
         .          .    10cc22c: MOVQ CX, 0(SP)                          ;murmur64.go:22
         .          .    10cc230: LEAQ runtime.types+201504(SB), AX
         .          .    10cc237: MOVQ AX, 0x8(SP)
         .          .    10cc23c: LEAQ runtime.types+157120(SB), AX
         .          .    10cc243: MOVQ AX, 0x10(SP)
         .          .    10cc248: CALL runtime.panicdottypeI(SB)
         .          .    10cc24d: NOPL
         .          .    10cc24e: CALL runtime.morestack_noctxt(SB)       ;index.go:28
         .          .    10cc253: JMP main.newIndex(SB)
         .          .    10cc258: INT $0x3
         .          .    10cc259: INT $0x3
         .          .    10cc25a: INT $0x3
         .          .    10cc25b: INT $0x3
         .          .    10cc25c: INT $0x3
         .          .    10cc25d: INT $0x3
         .          .    10cc25e: INT $0x3
ROUTINE ======================== runtime.main
         0      2.65s (flat, cum) 48.27% of Total
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
         .          .    102cb43: LEAQ go.func.*+956(SB), CX              ;proc.go:133
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
         .          .    102cbd0: LEAQ go.func.*+964(SB), AX
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
         .          .    102cc11: LEAQ runtime.types+83424(SB), AX        ;proc.go:168
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
         .          .    102ccfe: MOVQ go.func.*+972(SB), AX              ;proc.go:203
         .          .    102cd05: LEAQ go.func.*+972(SB), DX
         .      2.65s    102cd0c: CALL AX                                 ;runtime.main proc.go:203
         .          .    102cd0e: MOVL runtime.runningPanicDefers(SB), AX ;proc.go:212
         .          .    102cd14: TESTL AX, AX
         .          .    102cd16: JE 0x102cd4c
         .          .    102cd18: XORL AX, AX
         .          .    102cd1a: JMP 0x102cd3a                           ;proc.go:214
         .          .    102cd1c: MOVQ AX, 0x28(SP)
         .          .    102cd21: NOPL                                    ;proc.go:218
         .          .    102cd22: LEAQ go.func.*+900(SB), AX              ;proc.go:269
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
         .          .    102cd9a: LEAQ go.func.*+1516(SB), AX             ;proc.go:1868
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
         .          .    102cdd9: LEAQ go.string.*+25332(SB), AX          ;proc.go:182
         .          .    102cde0: MOVQ AX, 0(SP)
         .          .    102cde4: MOVQ $0x25, 0x8(SP)
         .          .    102cded: CALL runtime.throw(SB)
         .          .    102cdf2: LEAQ go.string.*+11989(SB), AX          ;proc.go:178
         .          .    102cdf9: MOVQ AX, 0(SP)
         .          .    102cdfd: MOVQ $0x15, 0x8(SP)
         .          .    102ce06: CALL runtime.throw(SB)
         .          .    102ce0b: LEAQ go.string.*+9904(SB), AX           ;proc.go:175
         .          .    102ce12: MOVQ AX, 0(SP)
         .          .    102ce16: MOVQ $0x13, 0x8(SP)
         .          .    102ce1f: CALL runtime.throw(SB)
         .          .    102ce24: LEAQ go.string.*+15120(SB), AX          ;proc.go:171
         .          .    102ce2b: MOVQ AX, 0(SP)
         .          .    102ce2f: MOVQ $0x19, 0x8(SP)
         .          .    102ce38: CALL runtime.throw(SB)
         .          .    102ce3d: LEAQ go.string.*+13965(SB), AX          ;proc.go:152
         .          .    102ce44: MOVQ AX, 0(SP)
         .          .    102ce48: MOVQ $0x17, 0x8(SP)
         .          .    102ce51: CALL runtime.throw(SB)
         .          .    102ce56: LEAQ go.string.*+13084(SB), AX          ;proc.go:147
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
