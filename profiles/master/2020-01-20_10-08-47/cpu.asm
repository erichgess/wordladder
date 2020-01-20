Total: 5.78s
ROUTINE ======================== main.(*Graph).EdgeCount
      10ms       10ms (flat, cum)  0.17% of Total
         .          .    10cb340: MOVQ 0x8(SP), AX                        ;graph.go:311
         .          .    10cb345: MOVQ 0x20(AX), CX
         .          .    10cb349: MOVQ 0x18(AX), AX
         .          .    10cb34d: XORL DX, DX
         .          .    10cb34f: XORL BX, BX
         .          .    10cb351: JMP 0x10cb366
         .          .    10cb353: LEAQ 0x1(DX), SI
         .          .    10cb357: LEAQ 0(DX)(DX*2), DI                    ;graph.go:312
         .          .    10cb35b: MOVQ 0x8(AX)(DI*8), DI
      10ms       10ms    10cb360: ADDQ DI, BX                             ;main.(*Graph).EdgeCount graph.go:312
         .          .    10cb363: MOVQ SI, DX                             ;graph.go:311
         .          .    10cb366: CMPQ CX, DX
         .          .    10cb369: JL 0x10cb353
         .          .    10cb36b: MOVQ BX, AX                             ;graph.go:315
         .          .    10cb36e: SHRQ $0x3f, BX
         .          .    10cb372: ADDQ BX, AX
         .          .    10cb375: SARQ $0x1, AX
         .          .    10cb378: MOVQ AX, 0x10(SP)
         .          .    10cb37d: RET
         .          .    10cb37e: INT $0x3
ROUTINE ======================== main.(*Graph).buildAdjList
     390ms      1.76s (flat, cum) 30.45% of Total
         .          .    10ca650: MOVQ GS:0x30, CX                        ;graph.go:103
         .          .    10ca659: LEAQ -0x60(SP), AX
         .          .    10ca65e: CMPQ 0x10(CX), AX
         .          .    10ca662: JBE 0x10cab0e
         .          .    10ca668: SUBQ $0xe0, SP
         .          .    10ca66f: MOVQ BP, 0xd8(SP)
         .          .    10ca677: LEAQ 0xd8(SP), BP
         .          .    10ca67f: XORL AX, AX
         .          .    10ca681: XORL CX, CX
         .          .    10ca683: JMP 0x10ca92f                           ;graph.go:105
         .          .    10ca688: MOVQ 0x88(SP), R10                      ;graph.go:111
         .          .    10ca690: LEAQ 0x1(R10), R9
         .          .    10ca694: MOVQ 0x78(SP), R10
         .          .    10ca699: MOVQ 0x70(SP), R11
         .          .    10ca69e: MOVQ 0x98(SP), R12
         .          .    10ca6a6: MOVQ 0x68(SP), R13
         .          .    10ca6ab: MOVQ 0xc0(SP), R14
         .          .    10ca6b3: MOVQ R10, AX
      10ms       10ms    10ca6b6: MOVQ 0x50(SP), CX                       ;main.(*Graph).buildAdjList graph.go:108
         .          .    10ca6bb: MOVQ R11, DX                            ;graph.go:112
         .          .    10ca6be: MOVQ 0xe8(SP), BX
         .          .    10ca6c6: MOVQ R12, SI
         .          .    10ca6c9: MOVQ R13, DI
         .          .    10ca6cc: MOVQ R14, R8                            ;graph.go:111
         .          .    10ca6cf: CMPQ AX, R9
         .          .    10ca6d2: JGE 0x10ca926
     280ms      280ms    10ca6d8: MOVQ 0(R8)(R9*8), R10                   ;main.(*Graph).buildAdjList graph.go:111
      10ms       10ms    10ca6dc: MOVQ 0x8(BX), R11                       ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca6e0: MOVQ 0(BX), R12                         ;graph.go:112
         .          .    10ca6e3: CMPQ R11, R10
         .          .    10ca6e6: JAE 0x10cab02
         .          .    10ca6ec: MOVQ R9, 0x88(SP)                       ;graph.go:111
         .          .    10ca6f4: MOVQ R10, 0x58(SP)
         .          .    10ca6f9: LEAQ 0(R10)(R10*2), AX                  ;graph.go:112
         .          .    10ca6fd: MOVQ AX, 0x80(SP)
         .          .    10ca705: MOVQ 0(R12)(AX*8), CX
      50ms       50ms    10ca709: MOVQ 0x10(R12)(AX*8), BX                ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca70e: MOVQ 0x8(R12)(AX*8), R8                 ;graph.go:112
         .          .    10ca713: MOVQ SI, 0(SP)
         .          .    10ca717: MOVQ DI, 0x8(SP)
         .          .    10ca71c: MOVQ DX, 0x10(SP)
         .          .    10ca721: MOVQ CX, 0x18(SP)
         .          .    10ca726: MOVQ R8, 0x20(SP)
         .          .    10ca72b: MOVQ BX, 0x28(SP)
         .      150ms    10ca730: CALL main.distance(SB)                  ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca735: CMPQ $0x1, 0x30(SP)                     ;graph.go:112
      10ms       10ms    10ca73b: JNE 0x10ca90c                           ;main.(*Graph).buildAdjList graph.go:112
         .          .    10ca741: MOVQ 0xe8(SP), DX                       ;graph.go:113
         .          .    10ca749: MOVQ 0x18(DX), BX
         .          .    10ca74d: MOVQ 0x20(DX), CX
         .          .    10ca751: MOVQ 0x60(SP), AX
         .          .    10ca756: CMPQ CX, AX
         .          .    10ca759: JAE 0x10caafd
         .          .    10ca75f: MOVQ 0x90(SP), SI
         .          .    10ca767: MOVQ 0x10(BX)(SI*8), DI
         .          .    10ca76c: MOVQ 0x8(BX)(SI*8), R8
         .          .    10ca771: MOVQ 0(BX)(SI*8), R9
         .          .    10ca775: LEAQ 0x1(R8), R10
         .          .    10ca779: LEAQ 0(BX)(SI*8), R11
         .          .    10ca77d: CMPQ DI, R10
         .          .    10ca780: JA 0x10ca875
         .          .    10ca786: LEAQ 0x1(R8), DI
         .          .    10ca78a: MOVQ DI, 0x8(BX)(SI*8)
         .          .    10ca78f: MOVQ 0x58(SP), BX
         .          .    10ca794: MOVQ BX, 0(R9)(R8*8)
         .          .    10ca798: MOVQ 0x20(DX), CX                       ;graph.go:114
         .          .    10ca79c: MOVQ 0x18(DX), DI
         .          .    10ca7a0: CMPQ CX, BX
         .          .    10ca7a3: JAE 0x10caaf5
         .          .    10ca7a9: MOVQ 0x80(SP), BX
         .          .    10ca7b1: MOVQ 0(DI)(BX*8), R8
      10ms       10ms    10ca7b5: MOVQ 0x10(DI)(BX*8), R9                 ;main.(*Graph).buildAdjList graph.go:114
         .          .    10ca7ba: MOVQ 0x8(DI)(BX*8), R10                 ;graph.go:114
         .          .    10ca7bf: LEAQ 0x1(R10), R11
         .          .    10ca7c3: LEAQ 0(DI)(BX*8), R12
         .          .    10ca7c7: CMPQ R9, R11
         .          .    10ca7ca: JA 0x10ca7de
         .          .    10ca7cc: LEAQ 0x1(R10), R9
         .          .    10ca7d0: MOVQ R9, 0x8(DI)(BX*8)
         .          .    10ca7d5: MOVQ AX, 0(R8)(R10*8)
         .          .    10ca7d9: JMP 0x10ca688
         .          .    10ca7de: MOVQ R12, 0xb8(SP)
         .          .    10ca7e6: MOVQ DI, 0xb0(SP)
         .          .    10ca7ee: LEAQ runtime.types+85856(SB), AX
         .          .    10ca7f5: MOVQ AX, 0(SP)
         .          .    10ca7f9: MOVQ R8, 0x8(SP)
         .          .    10ca7fe: MOVQ R10, 0x10(SP)
         .          .    10ca803: MOVQ R9, 0x18(SP)
         .          .    10ca808: MOVQ R11, 0x20(SP)
         .      180ms    10ca80d: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:114
         .          .    10ca812: MOVQ 0x28(SP), AX                       ;graph.go:114
         .          .    10ca817: MOVQ 0x30(SP), CX
         .          .    10ca81c: MOVQ 0x38(SP), DX
         .          .    10ca821: MOVQ 0x80(SP), BX
         .          .    10ca829: MOVQ 0xb0(SP), SI
         .          .    10ca831: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca836: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca83d: JNE 0x10ca866
         .          .    10ca83f: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca843: MOVQ 0xe8(SP), DX                       ;graph.go:112
         .          .    10ca84b: MOVQ SI, DI                             ;graph.go:114
         .          .    10ca84e: MOVQ CX, R10
         .          .    10ca851: MOVQ AX, R8
         .          .    10ca854: MOVQ 0x60(SP), AX
         .          .    10ca859: MOVQ 0x90(SP), SI                       ;graph.go:113
         .          .    10ca861: JMP 0x10ca7cc                           ;graph.go:114
         .          .    10ca866: MOVQ 0xb8(SP), DI
         .          .    10ca86e: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca873: JMP 0x10ca843
         .          .    10ca875: MOVQ BX, 0xa8(SP)                       ;graph.go:113
         .          .    10ca87d: MOVQ R11, 0xa0(SP)
         .          .    10ca885: LEAQ runtime.types+85856(SB), AX
         .          .    10ca88c: MOVQ AX, 0(SP)
         .          .    10ca890: MOVQ R9, 0x8(SP)
         .          .    10ca895: MOVQ R8, 0x10(SP)
         .          .    10ca89a: MOVQ DI, 0x18(SP)
         .          .    10ca89f: MOVQ R10, 0x20(SP)
         .      180ms    10ca8a4: CALL runtime.growslice(SB)              ;main.(*Graph).buildAdjList graph.go:113
         .          .    10ca8a9: MOVQ 0x28(SP), AX                       ;graph.go:113
         .          .    10ca8ae: MOVQ 0x30(SP), CX
         .          .    10ca8b3: MOVQ 0x38(SP), DX
         .          .    10ca8b8: MOVQ 0x90(SP), BX
         .          .    10ca8c0: MOVQ 0xa8(SP), SI
         .          .    10ca8c8: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10ca8cd: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca8d4: JNE 0x10ca8fd
         .          .    10ca8d6: MOVQ AX, 0(SI)(BX*8)
         .          .    10ca8da: MOVQ 0xe8(SP), DX                       ;graph.go:114
         .          .    10ca8e2: MOVQ SI, BX                             ;graph.go:113
         .          .    10ca8e5: MOVQ 0x90(SP), SI
         .          .    10ca8ed: MOVQ CX, R8
         .          .    10ca8f0: MOVQ AX, R9
         .          .    10ca8f3: MOVQ 0x60(SP), AX                       ;graph.go:114
         .          .    10ca8f8: JMP 0x10ca786                           ;graph.go:113
         .          .    10ca8fd: MOVQ 0xa0(SP), DI
         .          .    10ca905: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca90a: JMP 0x10ca8da
      10ms       10ms    10ca90c: MOVQ 0x60(SP), AX                       ;main.(*Graph).buildAdjList graph.go:105
         .          .    10ca911: MOVQ 0xe8(SP), DX                       ;graph.go:112
         .          .    10ca919: MOVQ 0x90(SP), SI                       ;graph.go:113
         .          .    10ca921: JMP 0x10ca688                           ;graph.go:111
         .          .    10ca926: MOVQ 0x60(SP), DX                       ;graph.go:105
         .          .    10ca92b: LEAQ 0x1(DX), AX
         .          .    10ca92f: MOVQ 0xe8(SP), DX
         .          .    10ca937: MOVQ 0x8(DX), BX
         .          .    10ca93b: MOVQ 0(DX), SI
         .          .    10ca93e: CMPQ BX, AX
         .          .    10ca941: JGE 0x10caa50
         .          .    10ca947: MOVQ AX, 0x60(SP)
         .          .    10ca94c: MOVQ CX, 0x50(SP)                       ;graph.go:108
         .          .    10ca951: LEAQ 0(AX)(AX*2), CX                    ;graph.go:106
         .          .    10ca955: MOVQ CX, 0x90(SP)
         .          .    10ca95d: MOVQ 0x10(SI)(CX*8), DX
         .          .    10ca962: MOVQ DX, 0x70(SP)
         .          .    10ca967: MOVQ 0x8(SI)(CX*8), BX
         .          .    10ca96c: MOVQ BX, 0x68(SP)
      10ms       10ms    10ca971: MOVQ 0(SI)(CX*8), SI                    ;main.(*Graph).buildAdjList graph.go:106
         .          .    10ca975: MOVQ SI, 0x98(SP)                       ;graph.go:106
         .          .    10ca97d: MOVQ 0xf0(SP), DI                       ;graph.go:107
         .          .    10ca985: MOVQ DI, 0(SP)
         .          .    10ca989: MOVQ SI, 0x8(SP)
         .          .    10ca98e: MOVQ BX, 0x10(SP)
         .          .    10ca993: MOVQ DX, 0x18(SP)
         .      160ms    10ca998: CALL main.(*index).nearCount(SB)        ;main.(*Graph).buildAdjList graph.go:107
         .          .    10ca99d: MOVQ 0x20(SP), AX                       ;graph.go:107
         .          .    10ca9a2: MOVQ AX, 0x78(SP)
         .          .    10ca9a7: LEAQ runtime.types+85856(SB), CX        ;graph.go:109
         .          .    10ca9ae: MOVQ CX, 0(SP)
         .          .    10ca9b2: MOVQ AX, 0x8(SP)
         .          .    10ca9b7: MOVQ AX, 0x10(SP)
         .      130ms    10ca9bc: CALL runtime.makeslice(SB)              ;main.(*Graph).buildAdjList graph.go:109
         .          .    10ca9c1: MOVQ 0x18(SP), AX                       ;graph.go:109
         .          .    10ca9c6: MOVQ AX, 0xc0(SP)
         .          .    10ca9ce: MOVQ 0xf0(SP), CX                       ;graph.go:110
         .          .    10ca9d6: MOVQ CX, 0(SP)
         .          .    10ca9da: MOVQ 0x98(SP), DX
         .          .    10ca9e2: MOVQ DX, 0x8(SP)
         .          .    10ca9e7: MOVQ 0x68(SP), BX
         .          .    10ca9ec: MOVQ BX, 0x10(SP)
         .          .    10ca9f1: MOVQ 0x70(SP), SI
         .          .    10ca9f6: MOVQ SI, 0x18(SP)
         .          .    10ca9fb: MOVQ AX, 0x20(SP)
         .          .    10caa00: MOVQ 0x78(SP), DI
         .          .    10caa05: MOVQ DI, 0x28(SP)
         .          .    10caa0a: MOVQ DI, 0x30(SP)
         .      570ms    10caa0f: CALL main.(*index).near(SB)             ;main.(*Graph).buildAdjList graph.go:110
         .          .    10caa14: MOVQ 0x78(SP), AX                       ;graph.go:108
         .          .    10caa19: MOVQ 0x50(SP), CX
         .          .    10caa1e: ADDQ AX, CX
         .          .    10caa21: MOVQ CX, 0x50(SP)
         .          .    10caa26: MOVQ 0x70(SP), DX                       ;graph.go:111
         .          .    10caa2b: MOVQ 0xe8(SP), BX
         .          .    10caa33: MOVQ 0x98(SP), SI
         .          .    10caa3b: MOVQ 0x68(SP), DI
         .          .    10caa40: MOVQ 0xc0(SP), R8
         .          .    10caa48: XORL R9, R9
         .          .    10caa4b: JMP 0x10ca6cf
         .          .    10caa50: XORPS X0, X0                            ;graph.go:118
         .          .    10caa53: CVTSI2SDQ CX, X0
         .          .    10caa58: XORPS X1, X1
         .          .    10caa5b: CVTSI2SDQ BX, X1
         .          .    10caa60: DIVSD X1, X0
         .          .    10caa64: MOVSD_XMM X0, 0(SP)
         .          .    10caa69: CALL runtime.convT64(SB)
         .          .    10caa6e: MOVQ 0x8(SP), AX
         .          .    10caa73: XORPS X0, X0
         .          .    10caa76: MOVUPS X0, 0xc8(SP)
         .          .    10caa7e: LEAQ runtime.types+84128(SB), CX
         .          .    10caa85: MOVQ CX, 0xc8(SP)
         .          .    10caa8d: MOVQ AX, 0xd0(SP)
         .          .    10caa95: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10caa9c: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10caaa3: MOVQ CX, 0(SP)
         .          .    10caaa7: MOVQ AX, 0x8(SP)
         .          .    10caaac: LEAQ go.string.*+3293(SB), AX
         .          .    10caab3: MOVQ AX, 0x10(SP)
         .          .    10caab8: MOVQ $0xa, 0x18(SP)
         .          .    10caac1: LEAQ 0xc8(SP), AX
         .          .    10caac9: MOVQ AX, 0x20(SP)
         .          .    10caace: MOVQ $0x1, 0x28(SP)
         .          .    10caad7: MOVQ $0x1, 0x30(SP)
         .          .    10caae0: CALL fmt.Fprintf(SB)
         .          .    10caae5: MOVQ 0xd8(SP), BP
         .          .    10caaed: ADDQ $0xe0, SP
         .          .    10caaf4: RET
         .          .    10caaf5: MOVQ BX, AX                             ;graph.go:114
         .          .    10caaf8: CALL runtime.panicIndex(SB)
         .          .    10caafd: CALL runtime.panicIndex(SB)             ;graph.go:113
         .          .    10cab02: MOVQ R10, AX                            ;graph.go:112
         .          .    10cab05: MOVQ R11, CX
         .          .    10cab08: CALL runtime.panicIndex(SB)
         .          .    10cab0d: NOPL
         .          .    10cab0e: CALL runtime.morestack_noctxt(SB)       ;graph.go:103
         .          .    10cab13: JMP main.(*Graph).buildAdjList(SB)
         .          .    10cab18: INT $0x3
         .          .    10cab19: INT $0x3
         .          .    10cab1a: INT $0x3
         .          .    10cab1b: INT $0x3
         .          .    10cab1c: INT $0x3
         .          .    10cab1d: INT $0x3
         .          .    10cab1e: INT $0x3
ROUTINE ======================== main.(*index).add
     180ms      660ms (flat, cum) 11.42% of Total
         .          .    10cc210: MOVQ GS:0x30, CX                        ;index.go:31
         .          .    10cc219: LEAQ -0x18(SP), AX
         .          .    10cc21e: CMPQ 0x10(CX), AX
         .          .    10cc222: JBE 0x10cc516
         .          .    10cc228: SUBQ $0x98, SP
         .          .    10cc22f: MOVQ BP, 0x90(SP)
         .          .    10cc237: LEAQ 0x90(SP), BP
         .          .    10cc23f: MOVQ 0xa0(SP), BX                       ;index.go:34
         .          .    10cc247: MOVQ 0x38(BX), DX
         .          .    10cc24b: MOVQ 0x28(BX), SI
         .          .    10cc24f: MOVQ 0xb8(SP), DI
         .          .    10cc257: LEAQ -0x1(DI), CX
         .          .    10cc25b: CMPQ DX, CX
         .          .    10cc25e: JA 0x10cc510
         .          .    10cc264: MOVQ CX, 0x58(SP)
         .          .    10cc269: MOVQ DX, 0x50(SP)
         .          .    10cc26e: MOVQ SI, 0x78(SP)
         .          .    10cc273: MOVQ 0xb0(SP), R8                       ;index.go:35
         .          .    10cc27b: XORL AX, AX
         .          .    10cc27d: JMP 0x10cc2d2
         .          .    10cc27f: LEAQ 0x1(R8), R10                       ;index.go:41
      10ms       10ms    10cc283: MOVQ R10, 0x8(BX)(SI*8)                 ;main.(*index).add index.go:41
         .          .    10cc288: MOVQ 0xa8(SP), R10                      ;index.go:41
         .          .    10cc290: MOVQ R10, 0(R9)(R8*8)
         .          .    10cc294: MOVQ 0x78(SP), R9                       ;index.go:35
         .          .    10cc299: MOVQ 0x50(SP), R11
         .          .    10cc29e: MOVQ 0x58(SP), R12
         .          .    10cc2a3: MOVQ 0xb8(SP), R13
         .          .    10cc2ab: MOVQ 0xb0(SP), R14
         .          .    10cc2b3: MOVQ 0x68(SP), R15
         .          .    10cc2b8: MOVQ R12, CX                            ;index.go:125
         .          .    10cc2bb: MOVQ R11, DX                            ;index.go:124
         .          .    10cc2be: MOVQ 0xa0(SP), BX                       ;index.go:38
         .          .    10cc2c6: MOVQ R9, SI                             ;index.go:125
         .          .    10cc2c9: MOVQ R13, DI                            ;index.go:35
         .          .    10cc2cc: MOVQ R14, R8                            ;index.go:126
         .          .    10cc2cf: MOVQ R15, AX                            ;index.go:35
         .          .    10cc2d2: CMPQ DI, AX
         .          .    10cc2d5: JGE 0x10cc4e3
         .       10ms    10cc2db: NOPL                                    ;main.(*index).add index.go:36
         .          .    10cc2dc: CMPQ DX, AX                             ;index.go:124
         .          .    10cc2df: JA 0x10cc508
         .          .    10cc2e5: CMPQ CX, AX                             ;index.go:125
         .          .    10cc2e8: JA 0x10cc503
         .          .    10cc2ee: MOVQ AX, 0x48(SP)                       ;index.go:35
         .          .    10cc2f3: SUBQ AX, CX                             ;index.go:125
         .          .    10cc2f6: MOVQ CX, 0x40(SP)
         .          .    10cc2fb: SUBQ AX, DX
         .          .    10cc2fe: NEGQ DX
         .          .    10cc301: SARQ $0x3f, DX
         .          .    10cc305: ANDQ AX, DX
         .          .    10cc308: ADDQ SI, DX
         .          .    10cc30b: MOVQ DX, 0x70(SP)
         .          .    10cc310: CMPQ R8, SI                             ;index.go:126
         .          .    10cc313: JE 0x10cc328
         .          .    10cc315: MOVQ SI, 0(SP)
         .          .    10cc319: MOVQ R8, 0x8(SP)
         .          .    10cc31e: MOVQ AX, 0x10(SP)
         .          .    10cc323: CALL runtime.memmove(SB)
         .          .    10cc328: MOVQ 0x48(SP), AX                       ;index.go:127
         .          .    10cc32d: INCQ AX
         .          .    10cc330: MOVQ AX, 0x68(SP)
         .          .    10cc335: MOVQ 0xb8(SP), CX
         .          .    10cc33d: SUBQ AX, CX
         .          .    10cc340: MOVQ 0x40(SP), BX
         .          .    10cc345: CMPQ CX, BX
      10ms       10ms    10cc348: CMOVG CX, BX                            ;main.skipOneCopy index.go:127
         .          .    10cc34c: MOVQ 0xc0(SP), CX                       ;index.go:127
         .          .    10cc354: SUBQ AX, CX
         .          .    10cc357: NEGQ CX
         .          .    10cc35a: SARQ $0x3f, CX
         .          .    10cc35e: ANDQ AX, CX
         .          .    10cc361: MOVQ 0xb0(SP), DI
         .          .    10cc369: ADDQ DI, CX
         .          .    10cc36c: MOVQ 0x70(SP), R8
         .          .    10cc371: CMPQ R8, CX
         .          .    10cc374: JNE 0x10cc4cb
         .          .    10cc37a: MOVQ 0xa0(SP), AX                       ;index.go:38
         .          .    10cc382: MOVQ 0(AX), CX
         .          .    10cc385: MOVQ 0x8(AX), DX
         .          .    10cc389: MOVQ 0x20(CX), CX
         .          .    10cc38d: MOVQ DX, 0(SP)
         .       10ms    10cc391: CALL CX                                 ;main.(*index).add index.go:38
      10ms       10ms    10cc393: MOVQ 0xa0(SP), AX                       ;main.(*index).add index.go:39
         .          .    10cc39b: MOVQ 0(AX), CX                          ;index.go:39
         .          .    10cc39e: MOVQ 0x8(AX), DX
         .          .    10cc3a2: MOVQ 0x40(CX), CX
         .          .    10cc3a6: MOVQ DX, 0(SP)
         .          .    10cc3aa: MOVQ 0x78(SP), DX
         .          .    10cc3af: MOVQ DX, 0x8(SP)
         .          .    10cc3b4: MOVQ 0x58(SP), BX
         .          .    10cc3b9: MOVQ BX, 0x10(SP)
         .          .    10cc3be: MOVQ 0x50(SP), SI
         .          .    10cc3c3: MOVQ SI, 0x18(SP)
         .          .    10cc3c8: CALL CX
      20ms       20ms    10cc3ca: MOVQ 0xa0(SP), AX                       ;main.(*index).add index.go:40
         .          .    10cc3d2: MOVQ 0(AX), CX                          ;index.go:40
         .          .    10cc3d5: MOVQ 0x8(AX), DX
         .          .    10cc3d9: MOVQ 0x38(CX), CX
         .          .    10cc3dd: MOVQ DX, 0(SP)
         .          .    10cc3e1: CALL CX
         .          .    10cc3e3: MOVQ 0x8(SP), AX
         .          .    10cc3e8: MOVQ 0xa0(SP), CX
         .          .    10cc3f0: MOVQ 0x40(CX), DX
         .          .    10cc3f4: TESTQ DX, DX
         .          .    10cc3f7: JE 0x10cc4fe
         .          .    10cc3fd: MOVQ DX, BX
         .          .    10cc400: XORL DX, DX
         .          .    10cc402: DIVQ BX
      10ms       10ms    10cc405: MOVQ 0x10(CX), BX                       ;main.(*index).add index.go:41
         .          .    10cc409: MOVQ 0x18(CX), SI                       ;index.go:41
         .          .    10cc40d: CMPQ SI, DX
         .          .    10cc410: JAE 0x10cc4f3
         .          .    10cc416: LEAQ 0(DX)(DX*2), SI
         .          .    10cc41a: MOVQ 0x10(BX)(SI*8), DI
     100ms      100ms    10cc41f: MOVQ 0x8(BX)(SI*8), R8                  ;main.(*index).add index.go:41
      20ms       20ms    10cc424: MOVQ 0(BX)(SI*8), R9
         .          .    10cc428: LEAQ 0x1(R8), R10                       ;index.go:41
         .          .    10cc42c: LEAQ 0(BX)(SI*8), R11
         .          .    10cc430: CMPQ DI, R10
         .          .    10cc433: JBE 0x10cc27f
         .          .    10cc439: MOVQ BX, 0x88(SP)
         .          .    10cc441: MOVQ SI, 0x60(SP)
         .          .    10cc446: MOVQ R11, 0x80(SP)
         .          .    10cc44e: LEAQ runtime.types+85856(SB), AX
         .          .    10cc455: MOVQ AX, 0(SP)
         .          .    10cc459: MOVQ R9, 0x8(SP)
         .          .    10cc45e: MOVQ R8, 0x10(SP)
         .          .    10cc463: MOVQ DI, 0x18(SP)
         .          .    10cc468: MOVQ R10, 0x20(SP)
         .      460ms    10cc46d: CALL runtime.growslice(SB)              ;main.(*index).add index.go:41
         .          .    10cc472: MOVQ 0x28(SP), AX                       ;index.go:41
         .          .    10cc477: MOVQ 0x30(SP), CX
         .          .    10cc47c: MOVQ 0x38(SP), DX
         .          .    10cc481: MOVQ 0x60(SP), BX
         .          .    10cc486: MOVQ 0x88(SP), SI
         .          .    10cc48e: MOVQ DX, 0x10(SI)(BX*8)
         .          .    10cc493: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc49a: JNE 0x10cc4bc
         .          .    10cc49c: MOVQ AX, 0(SI)(BX*8)
         .          .    10cc4a0: MOVQ CX, R8
         .          .    10cc4a3: MOVQ AX, R9
         .          .    10cc4a6: MOVQ 0xa0(SP), CX                       ;index.go:38
         .          .    10cc4ae: MOVQ BX, DX                             ;index.go:41
         .          .    10cc4b1: MOVQ SI, BX
         .          .    10cc4b4: MOVQ DX, SI
         .          .    10cc4b7: JMP 0x10cc27f
         .          .    10cc4bc: MOVQ 0x80(SP), DI
         .          .    10cc4c4: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc4c9: JMP 0x10cc4a0
         .          .    10cc4cb: MOVQ R8, 0(SP)                          ;index.go:127
         .          .    10cc4cf: MOVQ CX, 0x8(SP)
         .          .    10cc4d4: MOVQ BX, 0x10(SP)
         .          .    10cc4d9: CALL runtime.memmove(SB)
         .          .    10cc4de: JMP 0x10cc37a
         .          .    10cc4e3: MOVQ 0x90(SP), BP
         .          .    10cc4eb: ADDQ $0x98, SP
         .          .    10cc4f2: RET
         .          .    10cc4f3: MOVQ DX, AX                             ;index.go:41
         .          .    10cc4f6: MOVQ SI, CX
         .          .    10cc4f9: CALL runtime.panicIndexU(SB)
         .          .    10cc4fe: CALL runtime.panicdivide(SB)            ;index.go:40
         .          .    10cc503: CALL runtime.panicSliceB(SB)            ;index.go:125
         .          .    10cc508: MOVQ AX, CX                             ;index.go:124
         .          .    10cc50b: CALL runtime.panicSliceAcap(SB)
         .          .    10cc510: CALL runtime.panicSliceAcap(SB)         ;index.go:34
         .          .    10cc515: NOPL
         .          .    10cc516: CALL runtime.morestack_noctxt(SB)       ;index.go:31
         .          .    10cc51b: ?
         .          .    10cc51c: LOCK CLD
         .          .    10cc51e: ?
ROUTINE ======================== main.(*index).near
     110ms      590ms (flat, cum) 10.21% of Total
         .          .    10cc8b0: MOVQ GS:0x30, CX                        ;index.go:97
         .          .    10cc8b9: LEAQ 0xfffffe70(SP), AX
         .          .    10cc8c1: CMPQ 0x10(CX), AX
         .          .    10cc8c5: JBE 0x10cccea
         .          .    10cc8cb: SUBQ $0x210, SP
         .          .    10cc8d2: MOVQ BP, 0x208(SP)
         .          .    10cc8da: LEAQ 0x208(SP), BP
         .          .    10cc8e2: LEAQ 0x78(SP), DI                       ;index.go:98
         .          .    10cc8e7: XORPS X0, X0
         .          .    10cc8ea: MOVQ BP, -0x10(SP)
         .          .    10cc8ef: LEAQ -0x10(SP), BP
         .          .    10cc8f4: CALL 0x105866e
         .          .    10cc8f9: MOVQ 0(BP), BP
         .          .    10cc8fd: MOVQ 0x228(SP), AX                      ;index.go:99
         .          .    10cc905: LEAQ 0x1(AX), CX
         .          .    10cc909: CMPQ $0x30, CX
         .          .    10cc90d: JA 0x10cccdf
         .          .    10cc913: MOVQ CX, 0x60(SP)
         .          .    10cc918: MOVQ 0x218(SP), AX                      ;index.go:100
         .          .    10cc920: MOVQ 0(AX), CX
         .          .    10cc923: MOVQ 0x8(AX), DX
         .          .    10cc927: MOVQ 0x20(CX), CX
         .          .    10cc92b: MOVQ DX, 0(SP)
         .       10ms    10cc92f: CALL CX                                 ;main.(*index).near index.go:100
         .          .    10cc931: MOVQ 0x218(SP), AX                      ;index.go:101
         .          .    10cc939: MOVQ 0(AX), CX
         .          .    10cc93c: MOVQ 0x8(AX), DX
         .          .    10cc940: MOVQ 0x40(CX), CX
         .          .    10cc944: MOVQ DX, 0(SP)
         .          .    10cc948: MOVQ 0x220(SP), DX
         .          .    10cc950: MOVQ DX, 0x8(SP)
         .          .    10cc955: MOVQ 0x228(SP), BX
         .          .    10cc95d: MOVQ BX, 0x10(SP)
         .          .    10cc962: MOVQ 0x230(SP), SI
         .          .    10cc96a: MOVQ SI, 0x18(SP)
         .          .    10cc96f: CALL CX
         .          .    10cc971: MOVQ 0x218(SP), AX                      ;index.go:102
         .          .    10cc979: MOVQ 0(AX), CX
         .          .    10cc97c: MOVQ 0x8(AX), DX
         .          .    10cc980: MOVQ 0x38(CX), CX
         .          .    10cc984: MOVQ DX, 0(SP)
         .          .    10cc988: CALL CX
         .          .    10cc98a: MOVQ 0x8(SP), AX
         .          .    10cc98f: MOVQ 0x218(SP), CX
         .          .    10cc997: MOVQ 0x40(CX), DX
         .          .    10cc99b: TESTQ DX, DX
         .          .    10cc99e: JE 0x10cccda
         .          .    10cc9a4: MOVQ DX, BX
         .          .    10cc9a7: XORL DX, DX
         .          .    10cc9a9: DIVQ BX
         .          .    10cc9ac: MOVQ 0x60(SP), BX
         .          .    10cc9b1: TESTQ BX, BX
         .          .    10cc9b4: JBE 0x10cccd0
         .          .    10cc9ba: MOVQ DX, 0x78(SP)
         .          .    10cc9bf: MOVQ 0x28(CX), SI                       ;index.go:103
         .          .    10cc9c3: MOVQ 0x38(CX), DX
         .          .    10cc9c7: MOVQ 0x228(SP), DI
         .          .    10cc9cf: LEAQ -0x1(DI), R8
         .          .    10cc9d3: CMPQ DX, R8
         .          .    10cc9d6: JA 0x10cccc8
         .          .    10cc9dc: MOVQ R8, 0x68(SP)
         .          .    10cc9e1: MOVQ SI, 0x200(SP)
         .          .    10cc9e9: MOVQ DX, 0x48(SP)
         .          .    10cc9ee: MOVQ 0x220(SP), R9                      ;index.go:104
         .          .    10cc9f6: XORL AX, AX
         .          .    10cc9f8: JMP 0x10cca3a
         .          .    10cc9fa: MOVQ AX, R10                            ;index.go:109
         .          .    10cc9fd: SHLQ $0x3, AX
         .          .    10cca01: MOVQ DX, 0x78(SP)(AX*1)
         .          .    10cca06: MOVQ 0x228(SP), R11                     ;index.go:104
         .          .    10cca0e: MOVQ 0x200(SP), R12
         .          .    10cca16: MOVQ 0x48(SP), R13
         .          .    10cca1b: MOVQ 0x68(SP), R14
         .          .    10cca20: MOVQ 0x220(SP), R15
         .          .    10cca28: MOVQ R13, DX                            ;index.go:124
         .          .    10cca2b: MOVQ R12, SI                            ;index.go:125
         .          .    10cca2e: MOVQ R11, DI                            ;index.go:104
         .          .    10cca31: MOVQ R14, R8                            ;index.go:125
         .          .    10cca34: MOVQ R15, R9                            ;index.go:126
         .          .    10cca37: MOVQ R10, AX                            ;index.go:104
         .          .    10cca3a: CMPQ DI, AX
         .          .    10cca3d: JGE 0x10ccba6
         .       20ms    10cca43: NOPL                                    ;main.(*index).near index.go:105
         .          .    10cca44: CMPQ DX, AX                             ;index.go:124
         .          .    10cca47: JA 0x10cccc0
         .          .    10cca4d: CMPQ R8, AX                             ;index.go:125
         .          .    10cca50: JA 0x10cccb8
         .          .    10cca56: MOVQ AX, 0x40(SP)                       ;index.go:104
         .          .    10cca5b: SUBQ AX, R8                             ;index.go:125
         .          .    10cca5e: MOVQ R8, 0x38(SP)
         .          .    10cca63: SUBQ AX, DX
         .          .    10cca66: NEGQ DX
         .          .    10cca69: SARQ $0x3f, DX
         .          .    10cca6d: ANDQ AX, DX
         .          .    10cca70: ADDQ SI, DX
         .          .    10cca73: MOVQ DX, 0x1f8(SP)
         .          .    10cca7b: CMPQ R9, SI                             ;index.go:126
         .          .    10cca7e: JE 0x10cca93
         .          .    10cca80: MOVQ SI, 0(SP)
         .          .    10cca84: MOVQ R9, 0x8(SP)
         .          .    10cca89: MOVQ AX, 0x10(SP)
         .          .    10cca8e: CALL runtime.memmove(SB)
         .          .    10cca93: MOVQ 0x40(SP), AX                       ;index.go:127
         .          .    10cca98: INCQ AX
         .          .    10cca9b: MOVQ AX, 0x70(SP)
         .          .    10ccaa0: MOVQ 0x228(SP), CX
         .          .    10ccaa8: SUBQ AX, CX
         .          .    10ccaab: MOVQ 0x38(SP), BX
         .          .    10ccab0: CMPQ CX, BX
         .          .    10ccab3: CMOVG CX, BX
         .          .    10ccab7: MOVQ 0x230(SP), CX
         .          .    10ccabf: SUBQ AX, CX
      10ms       10ms    10ccac2: NEGQ CX                                 ;main.skipOneCopy index.go:127
      10ms       10ms    10ccac5: SARQ $0x3f, CX
         .          .    10ccac9: ANDQ AX, CX                             ;index.go:127
         .          .    10ccacc: MOVQ 0x220(SP), DI
         .          .    10ccad4: ADDQ DI, CX
         .          .    10ccad7: MOVQ 0x1f8(SP), R8
         .          .    10ccadf: CMPQ R8, CX
         .          .    10ccae2: JNE 0x10ccb8e
         .          .    10ccae8: MOVQ 0x218(SP), AX                      ;index.go:107
         .          .    10ccaf0: MOVQ 0(AX), CX
         .          .    10ccaf3: MOVQ 0x8(AX), DX
         .          .    10ccaf7: MOVQ 0x20(CX), CX
         .          .    10ccafb: MOVQ DX, 0(SP)
         .       20ms    10ccaff: CALL CX                                 ;main.(*index).near index.go:107
         .          .    10ccb01: MOVQ 0x218(SP), AX                      ;index.go:108
         .          .    10ccb09: MOVQ 0(AX), CX
         .          .    10ccb0c: MOVQ 0x8(AX), DX
         .          .    10ccb10: MOVQ 0x40(CX), CX
         .          .    10ccb14: MOVQ DX, 0(SP)
         .          .    10ccb18: MOVQ 0x200(SP), DX
         .          .    10ccb20: MOVQ DX, 0x8(SP)
         .          .    10ccb25: MOVQ 0x68(SP), BX
         .          .    10ccb2a: MOVQ BX, 0x10(SP)
         .          .    10ccb2f: MOVQ 0x48(SP), SI
         .          .    10ccb34: MOVQ SI, 0x18(SP)
         .       50ms    10ccb39: CALL CX                                 ;main.(*index).near index.go:108
      10ms       10ms    10ccb3b: MOVQ 0x218(SP), AX                      ;main.(*index).near index.go:109
      10ms       10ms    10ccb43: MOVQ 0(AX), CX
         .          .    10ccb46: MOVQ 0x8(AX), DX                        ;index.go:109
         .          .    10ccb4a: MOVQ 0x38(CX), CX
         .          .    10ccb4e: MOVQ DX, 0(SP)
         .       10ms    10ccb52: CALL CX                                 ;main.(*index).near index.go:109
         .          .    10ccb54: MOVQ 0x8(SP), AX                        ;index.go:109
         .          .    10ccb59: MOVQ 0x218(SP), CX
         .          .    10ccb61: MOVQ 0x40(CX), DX
         .          .    10ccb65: TESTQ DX, DX
         .          .    10ccb68: JE 0x10cccb3
         .          .    10ccb6e: MOVQ DX, BX
         .          .    10ccb71: XORL DX, DX
         .          .    10ccb73: DIVQ BX
      70ms       70ms    10ccb76: MOVQ 0x70(SP), AX                       ;main.(*index).near index.go:109
         .          .    10ccb7b: MOVQ 0x60(SP), BX                       ;index.go:109
         .          .    10ccb80: CMPQ BX, AX
         .          .    10ccb83: JB 0x10cc9fa
         .          .    10ccb89: JMP 0x10cccab
         .          .    10ccb8e: MOVQ R8, 0(SP)                          ;index.go:127
         .          .    10ccb92: MOVQ CX, 0x8(SP)
         .          .    10ccb97: MOVQ BX, 0x10(SP)
         .          .    10ccb9c: CALL runtime.memmove(SB)
         .          .    10ccba1: JMP 0x10ccae8
         .          .    10ccba6: MOVQ 0x248(SP), DX                      ;index.go:113
         .          .    10ccbae: MOVQ 0x240(SP), SI
         .          .    10ccbb6: MOVQ 0x238(SP), DI
         .          .    10ccbbe: XORL AX, AX
         .          .    10ccbc0: XORL R8, R8
         .          .    10ccbc3: JMP 0x10ccbd1
         .          .    10ccbc5: INCQ AX
         .          .    10ccbc8: MOVQ R11, DX                            ;index.go:117
         .          .    10ccbcb: MOVQ SI, R8
         .          .    10ccbce: MOVQ R10, SI
         .          .    10ccbd1: CMPQ BX, AX                             ;index.go:113
         .          .    10ccbd4: JGE 0x10ccc85
         .          .    10ccbda: MOVQ 0x78(SP)(AX*8), R9                 ;index.go:114
         .          .    10ccbdf: MOVQ 0x10(CX), R10                      ;index.go:115
         .          .    10ccbe3: MOVQ 0x18(CX), R11
         .          .    10ccbe7: CMPQ R11, R9
         .          .    10ccbea: JAE 0x10ccca0
         .          .    10ccbf0: LEAQ 0(R9)(R9*2), R9
         .          .    10ccbf4: MOVQ 0x8(R10)(R9*8), R11
         .          .    10ccbf9: MOVQ 0(R10)(R9*8), R9
         .          .    10ccbfd: CMPQ SI, R8                             ;index.go:117
         .          .    10ccc00: JA 0x10ccc95
         .          .    10ccc06: MOVQ SI, R10
         .          .    10ccc09: SUBQ R8, SI
         .          .    10ccc0c: CMPQ R11, SI
         .          .    10ccc0f: CMOVG R11, SI
         .          .    10ccc13: MOVQ DX, R11
         .          .    10ccc16: SUBQ R8, DX
         .          .    10ccc19: NEGQ DX
         .          .    10ccc1c: SHLQ $0x3, R8
         .          .    10ccc20: SARQ $0x3f, DX
         .          .    10ccc24: ANDQ DX, R8
         .          .    10ccc27: LEAQ 0(DI)(R8*1), DX
         .          .    10ccc2b: CMPQ R9, DX
         .          .    10ccc2e: JE 0x10ccbc5
         .          .    10ccc30: MOVQ AX, 0x58(SP)                       ;index.go:113
         .          .    10ccc35: MOVQ SI, 0x50(SP)                       ;index.go:117
         .          .    10ccc3a: MOVQ DX, 0(SP)
         .          .    10ccc3e: MOVQ R9, 0x8(SP)
         .          .    10ccc43: SHLQ $0x3, SI
         .          .    10ccc47: MOVQ SI, 0x10(SP)
         .      370ms    10ccc4c: CALL runtime.memmove(SB)                ;main.(*index).near index.go:117
         .          .    10ccc51: MOVQ 0x58(SP), AX                       ;index.go:113
         .          .    10ccc56: MOVQ 0x218(SP), CX                      ;index.go:115
         .          .    10ccc5e: MOVQ 0x60(SP), BX                       ;index.go:113
         .          .    10ccc63: MOVQ 0x50(SP), SI                       ;index.go:117
         .          .    10ccc68: MOVQ 0x238(SP), DI
         .          .    10ccc70: MOVQ 0x240(SP), R10
         .          .    10ccc78: MOVQ 0x248(SP), R11
         .          .    10ccc80: JMP 0x10ccbc5
         .          .    10ccc85: MOVQ 0x208(SP), BP
         .          .    10ccc8d: ADDQ $0x210, SP
         .          .    10ccc94: RET
         .          .    10ccc95: MOVQ R8, AX
         .          .    10ccc98: MOVQ SI, CX
         .          .    10ccc9b: CALL runtime.panicSliceB(SB)
         .          .    10ccca0: MOVQ R9, AX                             ;index.go:115
         .          .    10ccca3: MOVQ R11, CX
         .          .    10ccca6: CALL runtime.panicIndexU(SB)
         .          .    10cccab: MOVQ BX, CX                             ;index.go:109
         .          .    10cccae: CALL runtime.panicIndex(SB)
         .          .    10cccb3: CALL runtime.panicdivide(SB)
         .          .    10cccb8: MOVQ R8, CX                             ;index.go:125
         .          .    10cccbb: CALL runtime.panicSliceB(SB)
         .          .    10cccc0: MOVQ AX, CX                             ;index.go:124
         .          .    10cccc3: CALL runtime.panicSliceAcap(SB)
         .          .    10cccc8: MOVQ R8, CX                             ;index.go:103
         .          .    10ccccb: CALL runtime.panicSliceAcap(SB)
         .          .    10cccd0: XORL AX, AX                             ;index.go:102
         .          .    10cccd2: MOVQ BX, CX
         .          .    10cccd5: CALL runtime.panicIndex(SB)
         .          .    10cccda: CALL runtime.panicdivide(SB)
         .          .    10cccdf: MOVL $0x30, DX                          ;index.go:99
         .          .    10ccce4: CALL runtime.panicSliceAlen(SB)
         .          .    10ccce9: NOPL
         .          .    10cccea: CALL runtime.morestack_noctxt(SB)       ;index.go:97
         .          .    10cccef: JMP main.(*index).near(SB)
         .          .    10cccf4: INT $0x3
         .          .    10cccf5: INT $0x3
         .          .    10cccf6: INT $0x3
         .          .    10cccf7: INT $0x3
         .          .    10cccf8: INT $0x3
         .          .    10cccf9: INT $0x3
         .          .    10cccfa: INT $0x3
         .          .    10cccfb: INT $0x3
         .          .    10cccfc: INT $0x3
         .          .    10cccfd: INT $0x3
         .          .    10cccfe: INT $0x3
ROUTINE ======================== main.(*index).nearCount
      80ms      190ms (flat, cum)  3.29% of Total
         .          .    10cc520: MOVQ GS:0x30, CX                        ;index.go:59
         .          .    10cc529: LEAQ 0xfffffe80(SP), AX
         .          .    10cc531: CMPQ 0x10(CX), AX
         .          .    10cc535: JBE 0x10cc8a3
         .          .    10cc53b: SUBQ $0x200, SP
         .          .    10cc542: MOVQ BP, 0x1f8(SP)
         .          .    10cc54a: LEAQ 0x1f8(SP), BP
         .          .    10cc552: LEAQ 0x68(SP), DI                       ;index.go:60
         .          .    10cc557: XORPS X0, X0
         .          .    10cc55a: MOVQ BP, -0x10(SP)
         .          .    10cc55f: LEAQ -0x10(SP), BP
         .          .    10cc564: CALL 0x105866e
         .          .    10cc569: MOVQ 0(BP), BP
         .          .    10cc56d: MOVQ 0x218(SP), AX                      ;index.go:61
         .          .    10cc575: LEAQ 0x1(AX), CX
         .          .    10cc579: CMPQ $0x30, CX
         .          .    10cc57d: JA 0x10cc898
         .          .    10cc583: MOVQ CX, 0x50(SP)
         .          .    10cc588: MOVQ 0x208(SP), AX                      ;index.go:62
         .          .    10cc590: MOVQ 0(AX), CX
         .          .    10cc593: MOVQ 0x8(AX), DX
         .          .    10cc597: MOVQ 0x20(CX), CX
         .          .    10cc59b: MOVQ DX, 0(SP)
         .          .    10cc59f: CALL CX
         .          .    10cc5a1: MOVQ 0x208(SP), AX                      ;index.go:63
         .          .    10cc5a9: MOVQ 0(AX), CX
         .          .    10cc5ac: MOVQ 0x8(AX), DX
         .          .    10cc5b0: MOVQ 0x40(CX), CX
         .          .    10cc5b4: MOVQ DX, 0(SP)
         .          .    10cc5b8: MOVQ 0x210(SP), DX
         .          .    10cc5c0: MOVQ DX, 0x8(SP)
         .          .    10cc5c5: MOVQ 0x218(SP), BX
         .          .    10cc5cd: MOVQ BX, 0x10(SP)
         .          .    10cc5d2: MOVQ 0x220(SP), SI
         .          .    10cc5da: MOVQ SI, 0x18(SP)
         .          .    10cc5df: CALL CX
         .          .    10cc5e1: MOVQ 0x208(SP), AX                      ;index.go:64
         .          .    10cc5e9: MOVQ 0(AX), CX
         .          .    10cc5ec: MOVQ 0x8(AX), DX
         .          .    10cc5f0: MOVQ 0x38(CX), CX
         .          .    10cc5f4: MOVQ DX, 0(SP)
         .       10ms    10cc5f8: CALL CX                                 ;main.(*index).nearCount index.go:64
         .          .    10cc5fa: MOVQ 0x8(SP), AX                        ;index.go:64
         .          .    10cc5ff: MOVQ 0x208(SP), CX
         .          .    10cc607: MOVQ 0x40(CX), DX
         .          .    10cc60b: TESTQ DX, DX
         .          .    10cc60e: JE 0x10cc893
         .          .    10cc614: MOVQ DX, BX
         .          .    10cc617: XORL DX, DX
         .          .    10cc619: DIVQ BX
         .          .    10cc61c: MOVQ 0x50(SP), BX
         .          .    10cc621: TESTQ BX, BX
         .          .    10cc624: JBE 0x10cc889
         .          .    10cc62a: MOVQ DX, 0x68(SP)
         .          .    10cc62f: MOVQ 0x38(CX), DX                       ;index.go:65
         .          .    10cc633: MOVQ 0x28(CX), SI
         .          .    10cc637: MOVQ 0x218(SP), DI
         .          .    10cc63f: LEAQ -0x1(DI), R8
         .          .    10cc643: CMPQ DX, R8
         .          .    10cc646: JA 0x10cc881
         .          .    10cc64c: MOVQ R8, 0x58(SP)
         .          .    10cc651: MOVQ DX, 0x48(SP)
         .          .    10cc656: MOVQ SI, 0x1f0(SP)
         .          .    10cc65e: MOVQ 0x210(SP), R9                      ;index.go:66
         .          .    10cc666: XORL AX, AX
         .          .    10cc668: JMP 0x10cc6aa
         .          .    10cc66a: MOVQ AX, R10                            ;index.go:71
         .          .    10cc66d: SHLQ $0x3, AX
         .          .    10cc671: MOVQ DX, 0x68(SP)(AX*1)
         .          .    10cc676: MOVQ 0x218(SP), R11                     ;index.go:66
         .          .    10cc67e: MOVQ 0x1f0(SP), R12
         .          .    10cc686: MOVQ 0x48(SP), R13
         .          .    10cc68b: MOVQ 0x58(SP), R14
         .          .    10cc690: MOVQ 0x210(SP), R15
         .          .    10cc698: MOVQ R13, DX                            ;index.go:124
         .          .    10cc69b: MOVQ R12, SI                            ;index.go:125
         .          .    10cc69e: MOVQ R11, DI                            ;index.go:66
         .          .    10cc6a1: MOVQ R14, R8                            ;index.go:125
         .          .    10cc6a4: MOVQ R15, R9                            ;index.go:126
         .          .    10cc6a7: MOVQ R10, AX                            ;index.go:66
         .          .    10cc6aa: CMPQ DI, AX
         .          .    10cc6ad: JGE 0x10cc813
         .       30ms    10cc6b3: NOPL                                    ;main.(*index).nearCount index.go:67
         .          .    10cc6b4: CMPQ DX, AX                             ;index.go:124
         .          .    10cc6b7: JA 0x10cc879
         .          .    10cc6bd: CMPQ R8, AX                             ;index.go:125
         .          .    10cc6c0: JA 0x10cc871
         .          .    10cc6c6: MOVQ AX, 0x40(SP)                       ;index.go:66
         .          .    10cc6cb: SUBQ AX, R8                             ;index.go:125
         .          .    10cc6ce: MOVQ R8, 0x38(SP)
         .          .    10cc6d3: SUBQ AX, DX
         .          .    10cc6d6: NEGQ DX
      10ms       10ms    10cc6d9: SARQ $0x3f, DX                          ;main.skipOneCopy index.go:125
         .          .    10cc6dd: ANDQ AX, DX                             ;index.go:125
         .          .    10cc6e0: ADDQ SI, DX
         .          .    10cc6e3: MOVQ DX, 0x1e8(SP)
         .          .    10cc6eb: CMPQ R9, SI                             ;index.go:126
         .          .    10cc6ee: JE 0x10cc703
         .          .    10cc6f0: MOVQ SI, 0(SP)
         .          .    10cc6f4: MOVQ R9, 0x8(SP)
         .          .    10cc6f9: MOVQ AX, 0x10(SP)
         .          .    10cc6fe: CALL runtime.memmove(SB)
         .          .    10cc703: MOVQ 0x40(SP), AX                       ;index.go:127
         .          .    10cc708: INCQ AX
         .          .    10cc70b: MOVQ AX, 0x60(SP)
         .          .    10cc710: MOVQ 0x218(SP), CX
         .          .    10cc718: SUBQ AX, CX
         .          .    10cc71b: MOVQ 0x38(SP), BX
         .          .    10cc720: CMPQ CX, BX
         .          .    10cc723: CMOVG CX, BX
         .          .    10cc727: MOVQ 0x220(SP), CX
         .          .    10cc72f: SUBQ AX, CX
         .          .    10cc732: NEGQ CX
         .          .    10cc735: SARQ $0x3f, CX
         .          .    10cc739: ANDQ AX, CX
         .          .    10cc73c: MOVQ 0x210(SP), DI
      10ms       10ms    10cc744: ADDQ DI, CX                             ;main.skipOneCopy index.go:127
         .          .    10cc747: MOVQ 0x1e8(SP), R8                      ;index.go:127
         .          .    10cc74f: CMPQ R8, CX
         .          .    10cc752: JNE 0x10cc7fb
         .          .    10cc758: MOVQ 0x208(SP), AX                      ;index.go:69
         .          .    10cc760: MOVQ 0(AX), CX
         .          .    10cc763: MOVQ 0x8(AX), DX
         .          .    10cc767: MOVQ 0x20(CX), CX
         .          .    10cc76b: MOVQ DX, 0(SP)
         .       10ms    10cc76f: CALL CX                                 ;main.(*index).nearCount index.go:69
         .          .    10cc771: MOVQ 0x208(SP), AX                      ;index.go:70
         .          .    10cc779: MOVQ 0(AX), CX
         .          .    10cc77c: MOVQ 0x8(AX), DX
         .          .    10cc780: MOVQ 0x40(CX), CX
         .          .    10cc784: MOVQ DX, 0(SP)
         .          .    10cc788: MOVQ 0x1f0(SP), DX
         .          .    10cc790: MOVQ DX, 0x8(SP)
         .          .    10cc795: MOVQ 0x58(SP), BX
         .          .    10cc79a: MOVQ BX, 0x10(SP)
         .          .    10cc79f: MOVQ 0x48(SP), SI
         .          .    10cc7a4: MOVQ SI, 0x18(SP)
         .       20ms    10cc7a9: CALL CX                                 ;main.(*index).nearCount index.go:70
         .          .    10cc7ab: MOVQ 0x208(SP), AX                      ;index.go:71
         .          .    10cc7b3: MOVQ 0(AX), CX
         .          .    10cc7b6: MOVQ 0x8(AX), DX
         .          .    10cc7ba: MOVQ 0x38(CX), CX
         .          .    10cc7be: MOVQ DX, 0(SP)
         .       30ms    10cc7c2: CALL CX                                 ;main.(*index).nearCount index.go:71
         .          .    10cc7c4: MOVQ 0x8(SP), AX                        ;index.go:71
         .          .    10cc7c9: MOVQ 0x208(SP), CX
         .          .    10cc7d1: MOVQ 0x40(CX), DX
         .          .    10cc7d5: TESTQ DX, DX
         .          .    10cc7d8: JE 0x10cc86c
         .          .    10cc7de: MOVQ DX, BX
         .          .    10cc7e1: XORL DX, DX
         .          .    10cc7e3: DIVQ BX
      30ms       30ms    10cc7e6: MOVQ 0x60(SP), AX                       ;main.(*index).nearCount index.go:71
         .          .    10cc7eb: MOVQ 0x50(SP), BX                       ;index.go:71
         .          .    10cc7f0: CMPQ BX, AX
         .          .    10cc7f3: JB 0x10cc66a
         .          .    10cc7f9: JMP 0x10cc864
         .          .    10cc7fb: MOVQ R8, 0(SP)                          ;index.go:127
         .          .    10cc7ff: MOVQ CX, 0x8(SP)
         .          .    10cc804: MOVQ BX, 0x10(SP)
         .       10ms    10cc809: CALL runtime.memmove(SB)                ;main.skipOneCopy index.go:127
         .          .    10cc80e: JMP 0x10cc758                           ;index.go:127
         .          .    10cc813: XORL AX, AX
         .          .    10cc815: XORL DX, DX
         .          .    10cc817: JMP 0x10cc828                           ;index.go:75
         .          .    10cc819: INCQ AX
         .          .    10cc81c: LEAQ 0(R8)(R8*2), SI                    ;index.go:76
         .          .    10cc820: MOVQ 0x8(DI)(SI*8), SI
      30ms       30ms    10cc825: ADDQ SI, DX                             ;main.(*index).nearCount index.go:77
         .          .    10cc828: CMPQ BX, AX                             ;index.go:75
         .          .    10cc82b: JGE 0x10cc841
         .          .    10cc82d: MOVQ 0x18(CX), SI                       ;index.go:76
         .          .    10cc831: MOVQ 0x10(CX), DI
         .          .    10cc835: MOVQ 0x68(SP)(AX*8), R8
         .          .    10cc83a: CMPQ SI, R8
         .          .    10cc83d: JB 0x10cc819
         .          .    10cc83f: JMP 0x10cc859
         .          .    10cc841: MOVQ DX, 0x228(SP)                      ;index.go:80
         .          .    10cc849: MOVQ 0x1f8(SP), BP
         .          .    10cc851: ADDQ $0x200, SP
         .          .    10cc858: RET
         .          .    10cc859: MOVQ R8, AX                             ;index.go:76
         .          .    10cc85c: MOVQ SI, CX
         .          .    10cc85f: CALL runtime.panicIndexU(SB)
         .          .    10cc864: MOVQ BX, CX                             ;index.go:71
         .          .    10cc867: CALL runtime.panicIndex(SB)
         .          .    10cc86c: CALL runtime.panicdivide(SB)
         .          .    10cc871: MOVQ R8, CX                             ;index.go:125
         .          .    10cc874: CALL runtime.panicSliceB(SB)
         .          .    10cc879: MOVQ AX, CX                             ;index.go:124
         .          .    10cc87c: CALL runtime.panicSliceAcap(SB)
         .          .    10cc881: MOVQ R8, CX                             ;index.go:65
         .          .    10cc884: CALL runtime.panicSliceAcap(SB)
         .          .    10cc889: XORL AX, AX                             ;index.go:64
         .          .    10cc88b: MOVQ BX, CX
         .          .    10cc88e: CALL runtime.panicIndex(SB)
         .          .    10cc893: CALL runtime.panicdivide(SB)
         .          .    10cc898: MOVL $0x30, DX                          ;index.go:61
         .          .    10cc89d: CALL runtime.panicSliceAlen(SB)
         .          .    10cc8a2: NOPL
         .          .    10cc8a3: CALL runtime.morestack_noctxt(SB)       ;index.go:59
         .          .    10cc8a8: JMP main.(*index).nearCount(SB)
         .          .    10cc8ad: INT $0x3
         .          .    10cc8ae: INT $0x3
ROUTINE ======================== main.LoadDictionary
      20ms      2.67s (flat, cum) 46.19% of Total
         .          .    10c9e70: MOVQ GS:0x30, CX                        ;graph.go:40
         .          .    10c9e79: LEAQ 0xfffffeb8(SP), AX
         .          .    10c9e81: CMPQ 0x10(CX), AX
         .          .    10c9e85: JBE 0x10ca63e
         .          .    10c9e8b: SUBQ $0x1c8, SP
         .          .    10c9e92: MOVQ BP, 0x1c0(SP)
         .          .    10c9e9a: LEAQ 0x1c0(SP), BP
         .          .    10c9ea2: MOVQ $0x0, 0x200(SP)
         .          .    10c9eae: MOVQ 0x1e0(SP), AX                      ;graph.go:41
         .          .    10c9eb6: MOVQ AX, 0(SP)
         .          .    10c9eba: CALL strconv.Itoa(SB)
         .          .    10c9ebf: MOVQ 0x10(SP), AX
         .          .    10c9ec4: MOVQ 0x8(SP), CX
         .          .    10c9ec9: MOVQ $0x0, 0(SP)
         .          .    10c9ed1: LEAQ go.string.*+7284(SB), DX
         .          .    10c9ed8: MOVQ DX, 0x8(SP)
         .          .    10c9edd: MOVQ $0x10, 0x10(SP)
         .          .    10c9ee6: MOVQ CX, 0x18(SP)
         .          .    10c9eeb: MOVQ AX, 0x20(SP)
         .          .    10c9ef0: LEAQ go.string.*+2(SB), AX
         .          .    10c9ef7: MOVQ AX, 0x28(SP)
         .          .    10c9efc: MOVQ $0x1, 0x30(SP)
         .          .    10c9f05: CALL runtime.concatstring3(SB)
         .          .    10c9f0a: MOVQ 0x40(SP), AX
         .          .    10c9f0f: MOVQ 0x38(SP), CX
         .          .    10c9f14: MOVQ CX, 0(SP)
         .          .    10c9f18: MOVQ AX, 0x8(SP)
         .          .    10c9f1d: CALL main.newTimer(SB)
         .          .    10c9f22: MOVQ 0x10(SP), AX
         .          .    10c9f27: MOVL $0x0, 0x70(SP)
         .          .    10c9f2f: MOVQ AX, 0x88(SP)
         .          .    10c9f37: LEAQ 0x70(SP), AX
         .          .    10c9f3c: MOVQ AX, 0(SP)
         .          .    10c9f40: CALL runtime.deferprocStack(SB)
         .          .    10c9f45: TESTL AX, AX
         .          .    10c9f47: JNE 0x10ca61f
         .          .    10c9f4d: NOPL                                    ;graph.go:42
         .          .    10c9f4e: MOVQ 0x1d0(SP), AX                      ;file.go:280
         .          .    10c9f56: MOVQ AX, 0(SP)
         .          .    10c9f5a: MOVQ 0x1d8(SP), AX
         .          .    10c9f62: MOVQ AX, 0x8(SP)
         .          .    10c9f67: MOVQ $0x0, 0x10(SP)
         .          .    10c9f70: MOVL $0x0, 0x18(SP)
         .          .    10c9f78: CALL os.OpenFile(SB)
         .          .    10c9f7d: MOVQ 0x20(SP), AX
         .          .    10c9f82: MOVQ AX, 0x120(SP)
         .          .    10c9f8a: MOVQ 0x28(SP), CX
         .          .    10c9f8f: MOVQ 0x30(SP), DX
         .          .    10c9f94: TESTQ CX, CX                            ;graph.go:43
         .          .    10c9f97: JE 0x10c9fdd
         .          .    10c9f99: JE 0x10c9f9f                            ;graph.go:44
         .          .    10c9f9b: MOVQ 0x8(CX), CX
         .          .    10c9f9f: XORPS X0, X0
         .          .    10c9fa2: MOVUPS X0, 0x130(SP)
         .          .    10c9faa: MOVQ CX, 0x130(SP)
         .          .    10c9fb2: MOVQ DX, 0x138(SP)
         .          .    10c9fba: LEAQ 0x130(SP), AX
         .          .    10c9fc2: MOVQ AX, 0(SP)
         .          .    10c9fc6: MOVQ $0x1, 0x8(SP)
         .          .    10c9fcf: MOVQ $0x1, 0x10(SP)
         .          .    10c9fd8: CALL log.Fatal(SB)
         .          .    10c9fdd: MOVL $0x18, 0xa8(SP)                    ;graph.go:46
         .          .    10c9fe8: LEAQ go.func.*+293(SB), AX
         .          .    10c9fef: MOVQ AX, 0xc0(SP)
         .          .    10c9ff7: MOVQ 0x120(SP), AX
         .          .    10c9fff: MOVQ AX, 0xd8(SP)
         .          .    10ca007: LEAQ 0xa8(SP), CX
         .          .    10ca00f: MOVQ CX, 0(SP)
         .          .    10ca013: CALL runtime.deferprocStack(SB)
         .          .    10ca018: TESTL AX, AX
         .          .    10ca01a: JNE 0x10ca609
         .          .    10ca020: LEAQ runtime.types+157408(SB), AX       ;graph.go:48
         .          .    10ca027: MOVQ AX, 0(SP)
         .          .    10ca02b: CALL runtime.newobject(SB)
         .          .    10ca030: MOVQ 0x8(SP), AX
         .          .    10ca035: MOVQ AX, 0x128(SP)
         .          .    10ca03d: LEAQ runtime.types+141536(SB), CX       ;graph.go:49
         .          .    10ca044: MOVQ CX, 0(SP)
         .          .    10ca048: XORPS X0, X0
         .          .    10ca04b: MOVUPS X0, 0x8(SP)
         .          .    10ca050: CALL runtime.makeslice(SB)
         .          .    10ca055: MOVQ 0x18(SP), AX
         .          .    10ca05a: CMPL $0x0, runtime.writeBarrier(SB)     ;graph.go:48
         .          .    10ca061: JNE 0x10ca5c4
         .          .    10ca067: XORPS X0, X0
         .          .    10ca06a: MOVQ 0x128(SP), CX
         .          .    10ca072: MOVUPS X0, 0(CX)
         .          .    10ca075: MOVUPS X0, 0x10(CX)
         .          .    10ca079: MOVUPS X0, 0x20(CX)
         .          .    10ca07d: MOVQ AX, 0(CX)
         .          .    10ca080: NOPL                                    ;graph.go:54
         .          .    10ca081: LEAQ 0x140(SP), DI                      ;scan.go:87
         .          .    10ca089: MOVQ BP, -0x10(SP)
         .          .    10ca08e: LEAQ -0x10(SP), BP
         .          .    10ca093: CALL 0x10586ba
         .          .    10ca098: MOVQ 0(BP), BP
         .          .    10ca09c: LEAQ 0x140(SP), DI
         .          .    10ca0a4: MOVQ BP, -0x10(SP)
         .          .    10ca0a9: LEAQ -0x10(SP), BP
         .          .    10ca0ae: CALL 0x10586ba
         .          .    10ca0b3: MOVQ 0(BP), BP
         .          .    10ca0b7: LEAQ go.itab.*os.File,io.Reader(SB), AX
         .          .    10ca0be: MOVQ AX, 0x140(SP)
         .          .    10ca0c6: MOVQ 0x120(SP), AX
         .          .    10ca0ce: MOVQ AX, 0x148(SP)
         .          .    10ca0d6: LEAQ go.func.*+5(SB), AX
         .          .    10ca0dd: MOVQ AX, 0x150(SP)
         .          .    10ca0e5: MOVQ $0x10000, 0x158(SP)
         .          .    10ca0f1: XORL AX, AX
         .          .    10ca0f3: JMP 0x10ca0f8                           ;graph.go:55
         .          .    10ca0f5: MOVQ SI, AX                             ;graph.go:75
         .          .    10ca0f8: MOVQ AX, 0x50(SP)
         .          .    10ca0fd: LEAQ 0x140(SP), CX                      ;graph.go:55
         .          .    10ca105: MOVQ CX, 0(SP)
         .       20ms    10ca109: CALL bufio.(*Scanner).Scan(SB)          ;main.LoadDictionary graph.go:55
         .          .    10ca10e: CMPB $0x0, 0x8(SP)                      ;graph.go:55
         .          .    10ca113: JE 0x10ca256
         .          .    10ca119: NOPL                                    ;graph.go:56
         .          .    10ca11a: MOVQ 0x168(SP), AX                      ;scan.go:106
         .          .    10ca122: MOVQ AX, 0x48(SP)
         .          .    10ca127: MOVQ 0x160(SP), CX
         .          .    10ca12f: MOVQ CX, 0x108(SP)
         .          .    10ca137: LEAQ runtime.types+88864(SB), DX        ;graph.go:57
         .          .    10ca13e: MOVQ DX, 0(SP)
         .          .    10ca142: MOVQ AX, 0x8(SP)
         .          .    10ca147: MOVQ AX, 0x10(SP)
         .          .    10ca14c: CALL runtime.makeslice(SB)
         .          .    10ca151: MOVQ 0x18(SP), AX
         .          .    10ca156: MOVQ AX, 0x118(SP)
         .          .    10ca15e: MOVQ 0x108(SP), CX                      ;graph.go:58
         .          .    10ca166: CMPQ CX, AX
         .          .    10ca169: JE 0x10ca183
         .          .    10ca16b: MOVQ AX, 0(SP)
         .          .    10ca16f: MOVQ CX, 0x8(SP)
         .          .    10ca174: MOVQ 0x48(SP), CX
         .          .    10ca179: MOVQ CX, 0x10(SP)
         .          .    10ca17e: CALL runtime.memmove(SB)
         .          .    10ca183: MOVQ 0x128(SP), CX                      ;graph.go:59
         .          .    10ca18b: MOVQ 0x10(CX), DX
         .          .    10ca18f: MOVQ 0x8(CX), BX
         .          .    10ca193: LEAQ 0x1(BX), SI
         .          .    10ca197: MOVQ 0(CX), R8
         .          .    10ca19a: CMPQ DX, SI
         .          .    10ca19d: JA 0x10ca1f6
         .          .    10ca19f: LEAQ 0x1(BX), DX
         .          .    10ca1a3: MOVQ DX, 0x8(CX)
         .          .    10ca1a7: LEAQ 0(BX)(BX*2), DX
         .          .    10ca1ab: MOVQ 0x48(SP), BX
      10ms       10ms    10ca1b0: MOVQ BX, 0x8(R8)(DX*8)                  ;main.LoadDictionary graph.go:59
      10ms       10ms    10ca1b5: MOVQ BX, 0x10(R8)(DX*8)
         .          .    10ca1ba: MOVQ 0x50(SP), SI                       ;graph.go:60
         .          .    10ca1bf: CMPQ SI, BX
         .          .    10ca1c2: CMOVG BX, SI                            ;graph.go:75
         .          .    10ca1c6: LEAQ 0(R8)(DX*8), DI                    ;graph.go:59
         .          .    10ca1ca: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca1d1: JNE 0x10ca1e4
         .          .    10ca1d3: MOVQ 0x118(SP), AX
         .          .    10ca1db: MOVQ AX, 0(R8)(DX*8)
         .          .    10ca1df: JMP 0x10ca0f5
         .          .    10ca1e4: MOVQ 0x118(SP), AX
         .          .    10ca1ec: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca1f1: JMP 0x10ca0f5
         .          .    10ca1f6: LEAQ runtime.types+141536(SB), AX
         .          .    10ca1fd: MOVQ AX, 0(SP)
         .          .    10ca201: MOVQ R8, 0x8(SP)
         .          .    10ca206: MOVQ BX, 0x10(SP)
         .          .    10ca20b: MOVQ DX, 0x18(SP)
         .          .    10ca210: MOVQ SI, 0x20(SP)
         .       70ms    10ca215: CALL runtime.growslice(SB)              ;main.LoadDictionary graph.go:59
         .          .    10ca21a: MOVQ 0x28(SP), AX                       ;graph.go:59
         .          .    10ca21f: MOVQ 0x30(SP), CX
         .          .    10ca224: MOVQ 0x38(SP), DX
         .          .    10ca229: MOVQ 0x128(SP), DI
         .          .    10ca231: MOVQ DX, 0x10(DI)
         .          .    10ca235: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca23c: JNE 0x10ca24f
         .          .    10ca23e: MOVQ AX, 0(DI)
         .          .    10ca241: MOVQ CX, BX
         .          .    10ca244: MOVQ AX, R8
         .          .    10ca247: MOVQ DI, CX
         .          .    10ca24a: JMP 0x10ca19f
         .          .    10ca24f: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca254: JMP 0x10ca241
         .          .    10ca256: MOVQ 0x1f8(SP), AX                      ;graph.go:65
         .          .    10ca25e: TESTQ AX, AX
         .          .    10ca261: JNE 0x10ca566
         .          .    10ca267: MOVQ 0x128(SP), AX                      ;graph.go:69
         .          .    10ca26f: MOVQ 0x8(AX), CX
         .          .    10ca273: MOVQ CX, 0x68(SP)
         .          .    10ca278: LEAQ runtime.types+77216(SB), DX
         .          .    10ca27f: MOVQ DX, 0(SP)
         .          .    10ca283: MOVQ CX, 0x8(SP)
         .          .    10ca288: MOVQ CX, 0x10(SP)
         .       10ms    10ca28d: CALL runtime.makeslice(SB)              ;main.LoadDictionary graph.go:69
         .          .    10ca292: MOVQ 0x18(SP), AX                       ;graph.go:69
         .          .    10ca297: MOVQ 0x68(SP), CX
         .          .    10ca29c: MOVQ 0x128(SP), DX
         .          .    10ca2a4: MOVQ CX, 0x20(DX)
         .          .    10ca2a8: MOVQ CX, 0x28(DX)
         .          .    10ca2ac: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca2b3: JNE 0x10ca558
         .          .    10ca2b9: MOVQ AX, 0x18(DX)
         .          .    10ca2bd: XORL AX, AX
         .          .    10ca2bf: JMP 0x10ca2d0                           ;graph.go:70
         .          .    10ca2c1: LEAQ 0x1(SI), BX
         .          .    10ca2c5: MOVQ 0x68(SP), CX
         .          .    10ca2ca: MOVQ AX, DX                             ;graph.go:71
         .          .    10ca2cd: MOVQ BX, AX                             ;graph.go:70
         .          .    10ca2d0: CMPQ CX, AX
         .          .    10ca2d3: JGE 0x10ca351
         .          .    10ca2d5: MOVQ AX, 0x60(SP)
         .          .    10ca2da: LEAQ runtime.types+85856(SB), AX        ;graph.go:71
         .          .    10ca2e1: MOVQ AX, 0(SP)
         .          .    10ca2e5: XORPS X0, X0
         .          .    10ca2e8: MOVUPS X0, 0x8(SP)
         .          .    10ca2ed: CALL runtime.makeslice(SB)
         .          .    10ca2f2: MOVQ 0x128(SP), AX
         .          .    10ca2fa: MOVQ 0x20(AX), CX
         .          .    10ca2fe: MOVQ 0x18(AX), DX
         .          .    10ca302: MOVQ 0x18(SP), BX
         .          .    10ca307: MOVQ 0x60(SP), SI
         .          .    10ca30c: CMPQ CX, SI
         .          .    10ca30f: JAE 0x10ca635
         .          .    10ca315: LEAQ 0(SI)(SI*2), CX
         .          .    10ca319: MOVQ $0x0, 0x8(DX)(CX*8)
         .          .    10ca322: MOVQ $0x0, 0x10(DX)(CX*8)
         .          .    10ca32b: LEAQ 0(DX)(CX*8), DI
         .          .    10ca32f: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10ca336: JNE 0x10ca33e
         .          .    10ca338: MOVQ BX, 0(DX)(CX*8)
         .          .    10ca33c: JMP 0x10ca2c1
         .          .    10ca33e: MOVQ AX, CX                             ;graph.go:48
         .          .    10ca341: MOVQ BX, AX                             ;graph.go:71
         .       20ms    10ca344: CALL runtime.gcWriteBarrier(SB)         ;main.LoadDictionary graph.go:71
         .          .    10ca349: MOVQ CX, AX                             ;graph.go:71
         .          .    10ca34c: JMP 0x10ca2c1
         .          .    10ca351: LEAQ go.string.*+3453(SB), AX           ;graph.go:74
         .          .    10ca358: MOVQ AX, 0(SP)
         .          .    10ca35c: MOVQ $0xa, 0x8(SP)
         .          .    10ca365: CALL main.newTimer(SB)
         .          .    10ca36a: MOVQ 0x10(SP), AX
         .          .    10ca36f: MOVQ AX, 0xf0(SP)
         .          .    10ca377: MOVQ 0x1e0(SP), CX                      ;graph.go:75
         .          .    10ca37f: MOVQ CX, 0(SP)
         .          .    10ca383: MOVQ 0x50(SP), CX
         .          .    10ca388: MOVQ CX, 0x8(SP)
         .      120ms    10ca38d: CALL main.newIndex(SB)                  ;main.LoadDictionary graph.go:75
         .          .    10ca392: MOVQ 0x10(SP), AX                       ;graph.go:75
         .          .    10ca397: MOVQ AX, 0x100(SP)
         .          .    10ca39f: MOVQ 0x128(SP), CX                      ;graph.go:76
         .          .    10ca3a7: MOVQ 0x8(CX), DX
         .          .    10ca3ab: MOVQ 0(CX), BX
         .          .    10ca3ae: TESTQ DX, DX
         .          .    10ca3b1: JLE 0x10ca41a
         .          .    10ca3b3: MOVQ DX, 0x68(SP)
         .          .    10ca3b8: XORL SI, SI
         .          .    10ca3ba: JMP 0x10ca3d3
         .          .    10ca3bc: MOVQ 0x110(SP), DX
         .          .    10ca3c4: LEAQ 0x18(DX), BX
         .          .    10ca3c8: MOVQ AX, SI
         .          .    10ca3cb: MOVQ 0x100(SP), AX                      ;graph.go:77
         .          .    10ca3d3: MOVQ BX, 0x110(SP)                      ;graph.go:76
         .          .    10ca3db: MOVQ SI, 0x58(SP)
         .          .    10ca3e0: MOVQ 0x10(BX), CX
         .          .    10ca3e4: MOVQ 0x8(BX), DX
         .          .    10ca3e8: MOVQ 0(BX), DI
         .          .    10ca3eb: MOVQ AX, 0(SP)                          ;graph.go:77
         .          .    10ca3ef: MOVQ SI, 0x8(SP)
         .          .    10ca3f4: MOVQ DI, 0x10(SP)
         .          .    10ca3f9: MOVQ DX, 0x18(SP)
         .          .    10ca3fe: MOVQ CX, 0x20(SP)
         .      650ms    10ca403: CALL main.(*index).add(SB)              ;main.LoadDictionary graph.go:77
         .          .    10ca408: MOVQ 0x58(SP), AX                       ;graph.go:76
         .          .    10ca40d: INCQ AX
         .          .    10ca410: MOVQ 0x68(SP), CX
         .          .    10ca415: CMPQ CX, AX
         .          .    10ca418: JL 0x10ca3bc
         .          .    10ca41a: MOVQ 0xf0(SP), DX                       ;graph.go:79
         .          .    10ca422: MOVQ 0(DX), AX
         .          .    10ca425: CALL AX
         .          .    10ca427: MOVZX 0x1e8(SP), AX                     ;graph.go:40
         .          .    10ca42f: TESTL AL, AL
         .          .    10ca431: JNE 0x10ca542                           ;graph.go:81
         .          .    10ca437: LEAQ go.string.*+4781(SB), AX           ;graph.go:88
         .          .    10ca43e: MOVQ AX, 0(SP)
         .          .    10ca442: MOVQ $0xc, 0x8(SP)
         .          .    10ca44b: CALL main.newTimer(SB)
         .          .    10ca450: MOVQ 0x10(SP), AX
         .          .    10ca455: MOVQ AX, 0xf8(SP)
         .          .    10ca45d: MOVQ 0x128(SP), CX                      ;graph.go:89
         .          .    10ca465: MOVQ CX, 0(SP)
         .          .    10ca469: MOVQ 0x100(SP), DX
         .          .    10ca471: MOVQ DX, 0x8(SP)
         .      1.76s    10ca476: CALL main.(*Graph).buildAdjList(SB)     ;main.LoadDictionary graph.go:89
         .          .    10ca47b: MOVQ 0xf8(SP), DX                       ;graph.go:90
         .          .    10ca483: MOVQ 0(DX), AX
         .          .    10ca486: CALL AX
         .          .    10ca488: MOVQ 0x1f8(SP), AX                      ;graph.go:65
         .          .    10ca490: TESTQ AX, AX
         .          .    10ca493: JNE 0x10ca4da                           ;graph.go:92
         .          .    10ca495: MOVZX 0x1e8(SP), AX                     ;graph.go:40
         .          .    10ca49d: TESTL AL, AL
         .          .    10ca49f: JNE 0x10ca4c7                           ;graph.go:96
         .          .    10ca4a1: MOVQ 0x128(SP), AX                      ;graph.go:100
         .          .    10ca4a9: MOVQ AX, 0x200(SP)
         .          .    10ca4b1: NOPL
         .          .    10ca4b2: CALL runtime.deferreturn(SB)
         .          .    10ca4b7: MOVQ 0x1c0(SP), BP
         .          .    10ca4bf: ADDQ $0x1c8, SP
         .          .    10ca4c6: RET
         .          .    10ca4c7: MOVQ 0x128(SP), AX                      ;graph.go:97
         .          .    10ca4cf: MOVQ AX, 0(SP)
         .          .    10ca4d3: CALL main.adjListStats(SB)
         .          .    10ca4d8: JMP 0x10ca4a1
         .          .    10ca4da: MOVQ $0x0, 0(SP)                        ;graph.go:93
         .          .    10ca4e2: MOVQ 0x1f0(SP), CX
         .          .    10ca4ea: MOVQ CX, 0x8(SP)
         .          .    10ca4ef: MOVQ AX, 0x10(SP)
         .          .    10ca4f4: LEAQ go.string.*+2067(SB), AX
         .          .    10ca4fb: MOVQ AX, 0x18(SP)
         .          .    10ca500: MOVQ $0x8, 0x20(SP)
         .          .    10ca509: CALL runtime.concatstring2(SB)
         .          .    10ca50e: MOVQ 0x28(SP), AX
         .          .    10ca513: MOVQ 0x30(SP), CX
         .          .    10ca518: MOVQ 0x128(SP), DX
         .          .    10ca520: MOVQ DX, 0(SP)
         .          .    10ca524: MOVQ AX, 0x8(SP)
         .          .    10ca529: MOVQ CX, 0x10(SP)
         .          .    10ca52e: CALL main.(*Graph).dumpAdjList(SB)
         .          .    10ca533: MOVZX 0x1e8(SP), AX                     ;graph.go:40
         .          .    10ca53b: TESTL AL, AL
         .          .    10ca53d: JMP 0x10ca49f                           ;graph.go:93
         .          .    10ca542: MOVQ 0x100(SP), AX                      ;graph.go:82
         .          .    10ca54a: MOVQ AX, 0(SP)
         .          .    10ca54e: CALL main.(*index).printStats(SB)
         .          .    10ca553: JMP 0x10ca437                           ;graph.go:88
         .          .    10ca558: LEAQ 0x18(DX), DI                       ;graph.go:69
         .          .    10ca55c: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca561: JMP 0x10ca2bd
         .          .    10ca566: MOVQ $0x0, 0(SP)                        ;graph.go:66
         .          .    10ca56e: MOVQ 0x1f0(SP), CX
         .          .    10ca576: MOVQ CX, 0x8(SP)
         .          .    10ca57b: MOVQ AX, 0x10(SP)
         .          .    10ca580: LEAQ go.string.*+5421(SB), DX
         .          .    10ca587: MOVQ DX, 0x18(SP)
         .          .    10ca58c: MOVQ $0xd, 0x20(SP)
         .          .    10ca595: CALL runtime.concatstring2(SB)
         .          .    10ca59a: MOVQ 0x30(SP), AX
         .          .    10ca59f: MOVQ 0x28(SP), CX
         .          .    10ca5a4: MOVQ 0x128(SP), DX
         .          .    10ca5ac: MOVQ DX, 0(SP)
         .          .    10ca5b0: MOVQ CX, 0x8(SP)
         .          .    10ca5b5: MOVQ AX, 0x10(SP)
         .          .    10ca5ba: CALL main.(*Graph).dumpVertices(SB)
         .          .    10ca5bf: JMP 0x10ca267
         .          .    10ca5c4: MOVQ AX, 0x118(SP)                      ;graph.go:49
         .          .    10ca5cc: LEAQ runtime.types+157408(SB), AX       ;graph.go:48
         .          .    10ca5d3: MOVQ AX, 0(SP)
         .          .    10ca5d7: MOVQ 0x128(SP), AX
         .          .    10ca5df: MOVQ AX, 0x8(SP)
         .          .    10ca5e4: CALL runtime.typedmemclr(SB)
         .          .    10ca5e9: MOVQ 0x128(SP), DI
         .          .    10ca5f1: MOVQ 0x118(SP), AX
         .          .    10ca5f9: CALL runtime.gcWriteBarrier(SB)
         .          .    10ca5fe: MOVQ DI, CX                             ;graph.go:69
         .          .    10ca601: XORPS X0, X0                            ;graph.go:49
         .          .    10ca604: JMP 0x10ca080                           ;graph.go:48
         .          .    10ca609: NOPL                                    ;graph.go:46
         .          .    10ca60a: CALL runtime.deferreturn(SB)
         .          .    10ca60f: MOVQ 0x1c0(SP), BP
         .          .    10ca617: ADDQ $0x1c8, SP
         .          .    10ca61e: RET
         .          .    10ca61f: NOPL                                    ;graph.go:41
         .          .    10ca620: CALL runtime.deferreturn(SB)
         .          .    10ca625: MOVQ 0x1c0(SP), BP
         .          .    10ca62d: ADDQ $0x1c8, SP
         .          .    10ca634: RET
         .          .    10ca635: MOVQ SI, AX                             ;graph.go:71
         .          .    10ca638: CALL runtime.panicIndex(SB)
         .          .    10ca63d: NOPL
         .          .    10ca63e: CALL runtime.morestack_noctxt(SB)       ;graph.go:40
         .          .    10ca643: JMP main.LoadDictionary(SB)
         .          .    10ca648: INT $0x3
         .          .    10ca649: INT $0x3
         .          .    10ca64a: INT $0x3
         .          .    10ca64b: INT $0x3
         .          .    10ca64c: INT $0x3
         .          .    10ca64d: INT $0x3
         .          .    10ca64e: INT $0x3
ROUTINE ======================== main.distance
     150ms      150ms (flat, cum)  2.60% of Total
         .          .    10cb2b0: SUBQ $0x18, SP                          ;graph.go:285
         .          .    10cb2b4: MOVQ BP, 0x10(SP)
         .          .    10cb2b9: LEAQ 0x10(SP), BP
         .          .    10cb2be: MOVQ 0x28(SP), CX                       ;graph.go:291
         .          .    10cb2c3: MOVQ 0x40(SP), DX
         .          .    10cb2c8: CMPQ DX, CX
      10ms       10ms    10cb2cb: MOVQ CX, BX                             ;main.distance graph.go:294
         .          .    10cb2ce: CMOVG DX, CX                            ;graph.go:294
         .          .    10cb2d2: MOVQ BX, SI                             ;graph.go:286
         .          .    10cb2d5: SUBQ DX, BX
         .          .    10cb2d8: MOVQ DX, DI                             ;graph.go:288
         .          .    10cb2db: SUBQ SI, DX
      10ms       10ms    10cb2de: TESTQ BX, BX                            ;main.distance graph.go:287
         .          .    10cb2e1: CMOVL DX, BX                            ;graph.go:296
         .          .    10cb2e5: MOVQ 0x38(SP), DX                       ;graph.go:287
         .          .    10cb2ea: MOVQ 0x20(SP), R8
         .          .    10cb2ef: XORL AX, AX
         .          .    10cb2f1: JMP 0x10cb306
         .          .    10cb2f3: MOVZX 0(DX)(AX*1), R10                  ;graph.go:295
      90ms       90ms    10cb2f8: LEAQ 0x1(BX), R11                       ;main.distance graph.go:296
         .          .    10cb2fc: CMPL R10, R9                            ;graph.go:295
      10ms       10ms    10cb2ff: CMOVNE R11, BX                          ;main.distance graph.go:296
      10ms       10ms    10cb303: INCQ AX                                 ;main.distance graph.go:294
         .          .    10cb306: CMPQ CX, AX                             ;graph.go:294
         .          .    10cb309: JGE 0x10cb31c
         .          .    10cb30b: CMPQ SI, AX                             ;graph.go:295
         .          .    10cb30e: JAE 0x10cb333
         .          .    10cb310: MOVZX 0(R8)(AX*1), R9
      10ms       10ms    10cb315: CMPQ DI, AX                             ;main.distance graph.go:295
         .          .    10cb318: JB 0x10cb2f3                            ;graph.go:295
         .          .    10cb31a: JMP 0x10cb32b
         .          .    10cb31c: MOVQ BX, 0x50(SP)                       ;graph.go:300
      10ms       10ms    10cb321: MOVQ 0x10(SP), BP                       ;main.distance graph.go:300
         .          .    10cb326: ADDQ $0x18, SP                          ;graph.go:300
         .          .    10cb32a: RET
         .          .    10cb32b: MOVQ DI, CX                             ;graph.go:295
         .          .    10cb32e: CALL runtime.panicIndex(SB)
         .          .    10cb333: MOVQ SI, CX
         .          .    10cb336: CALL runtime.panicIndex(SB)
         .          .    10cb33b: NOPL
         .          .    10cb33c: INT $0x3
         .          .    10cb33d: INT $0x3
         .          .    10cb33e: INT $0x3
ROUTINE ======================== main.main
         0      2.71s (flat, cum) 46.89% of Total
         .          .    10cd570: MOVQ GS:0x30, CX                        ;main.go:25
         .          .    10cd579: LEAQ 0xfffffd98(SP), AX
         .          .    10cd581: CMPQ 0x10(CX), AX
         .          .    10cd585: JBE 0x10ce27e
         .          .    10cd58b: SUBQ $0x2e8, SP
         .          .    10cd592: MOVQ BP, 0x2e0(SP)
         .          .    10cd59a: LEAQ 0x2e0(SP), BP
         .          .    10cd5a2: MOVQ os.Args+8(SB), CX                  ;main.go:26
         .          .    10cd5a9: MOVQ os.Args(SB), DX                    ;flag.go:996
         .          .    10cd5b0: MOVQ os.Args+16(SB), BX
         .          .    10cd5b7: CMPQ $0x1, CX
         .          .    10cd5bb: JB 0x10ce273
         .          .    10cd5c1: MOVQ flag.CommandLine(SB), AX
         .          .    10cd5c8: MOVQ AX, 0(SP)
         .          .    10cd5cc: LEAQ -0x1(BX), AX
         .          .    10cd5d0: MOVQ AX, BX
         .          .    10cd5d3: NEGQ AX
         .          .    10cd5d6: SARQ $0x3f, AX
         .          .    10cd5da: ANDQ $0x10, AX
         .          .    10cd5de: ADDQ DX, AX
         .          .    10cd5e1: MOVQ AX, 0x8(SP)
         .          .    10cd5e6: LEAQ -0x1(CX), AX
         .          .    10cd5ea: MOVQ AX, 0x10(SP)
         .          .    10cd5ef: MOVQ BX, 0x18(SP)
         .          .    10cd5f4: CALL flag.(*FlagSet).Parse(SB)
         .          .    10cd5f9: MOVQ main.cpuprofile(SB), AX            ;main.go:28
         .          .    10cd600: MOVQ 0(AX), CX
         .          .    10cd603: MOVQ 0x8(AX), AX
         .          .    10cd607: TESTQ AX, AX
         .          .    10cd60a: JNE 0x10ce116
         .          .    10cd610: MOVQ main.traceprofile(SB), AX          ;main.go:38
         .          .    10cd617: MOVQ 0(AX), CX
         .          .    10cd61a: MOVQ 0x8(AX), AX
         .          .    10cd61e: TESTQ AX, AX
         .          .    10cd621: JNE 0x10cdfb4
         .          .    10cd627: MOVQ main.dump(SB), AX                  ;main.go:48
         .          .    10cd62e: MOVQ 0x8(AX), CX
         .          .    10cd632: MOVQ 0(AX), AX
         .          .    10cd635: TESTQ CX, CX
         .          .    10cd638: JNE 0x10cdfa1
         .          .    10cd63e: XORPS X0, X0                            ;main.go:52
         .          .    10cd641: MOVUPS X0, 0x250(SP)
         .          .    10cd649: LEAQ runtime.types+88544(SB), AX
         .          .    10cd650: MOVQ AX, 0x250(SP)
         .          .    10cd658: LEAQ internal/bytealg.IndexString.args_stackmap+640(SB), CX
         .          .    10cd65f: MOVQ CX, 0x258(SP)
         .          .    10cd667: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cd66e: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cd675: MOVQ DX, 0(SP)
         .          .    10cd679: MOVQ CX, 0x8(SP)
         .          .    10cd67e: LEAQ 0x250(SP), CX
         .          .    10cd686: MOVQ CX, 0x10(SP)
         .          .    10cd68b: MOVQ $0x1, 0x18(SP)
         .          .    10cd694: MOVQ $0x1, 0x20(SP)
         .          .    10cd69d: CALL fmt.Fprintln(SB)
         .          .    10cd6a2: MOVQ main.dict(SB), AX                  ;main.go:53
         .          .    10cd6a9: MOVQ main.numBuckets(SB), CX
         .          .    10cd6b0: MOVQ main.perfStats(SB), DX
         .          .    10cd6b7: MOVQ main.dump(SB), BX
         .          .    10cd6be: MOVQ 0x8(AX), SI
         .          .    10cd6c2: MOVQ 0(AX), AX
         .          .    10cd6c5: MOVQ 0(CX), CX
         .          .    10cd6c8: MOVZX 0(DX), DX
         .          .    10cd6cb: MOVQ 0(BX), DI
         .          .    10cd6ce: MOVQ 0x8(BX), BX
         .          .    10cd6d2: MOVQ AX, 0(SP)
         .          .    10cd6d6: MOVQ SI, 0x8(SP)
         .          .    10cd6db: MOVQ CX, 0x10(SP)
         .          .    10cd6e0: MOVB DL, 0x18(SP)
         .          .    10cd6e4: MOVQ DI, 0x20(SP)
         .          .    10cd6e9: MOVQ BX, 0x28(SP)
         .      2.67s    10cd6ee: CALL main.LoadDictionary(SB)            ;main.main main.go:53
         .          .    10cd6f3: MOVQ 0x30(SP), AX                       ;main.go:53
         .          .    10cd6f8: MOVQ AX, 0x1d0(SP)
         .          .    10cd700: MOVQ 0x8(AX), CX                        ;graph.go:305
         .          .    10cd704: MOVQ CX, 0x78(SP)
         .          .    10cd709: MOVQ AX, 0(SP)                          ;main.go:54
         .       10ms    10cd70d: CALL main.(*Graph).EdgeCount(SB)        ;main.main main.go:54
         .          .    10cd712: MOVQ 0x8(SP), AX                        ;main.go:54
         .          .    10cd717: MOVQ AX, 0x70(SP)
         .          .    10cd71c: MOVQ 0x78(SP), CX
         .          .    10cd721: MOVQ CX, 0(SP)
         .          .    10cd725: CALL runtime.convT64(SB)
         .          .    10cd72a: MOVQ 0x8(SP), AX
         .          .    10cd72f: MOVQ AX, 0x1f8(SP)
         .          .    10cd737: MOVQ 0x70(SP), CX
         .          .    10cd73c: MOVQ CX, 0(SP)
         .          .    10cd740: CALL runtime.convT64(SB)
         .          .    10cd745: MOVQ 0x8(SP), AX
         .          .    10cd74a: XORPS X0, X0
         .          .    10cd74d: MOVUPS X0, 0x2c0(SP)
         .          .    10cd755: MOVUPS X0, 0x2d0(SP)
         .          .    10cd75d: LEAQ runtime.types+85856(SB), CX
         .          .    10cd764: MOVQ CX, 0x2c0(SP)
         .          .    10cd76c: MOVQ 0x1f8(SP), DX
         .          .    10cd774: MOVQ DX, 0x2c8(SP)
         .          .    10cd77c: MOVQ CX, 0x2d0(SP)
         .          .    10cd784: MOVQ AX, 0x2d8(SP)
         .          .    10cd78c: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cd793: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cd79a: MOVQ CX, 0(SP)
         .          .    10cd79e: MOVQ AX, 0x8(SP)
         .          .    10cd7a3: LEAQ go.string.*+11032(SB), AX
         .          .    10cd7aa: MOVQ AX, 0x10(SP)
         .          .    10cd7af: MOVQ $0x14, 0x18(SP)
         .          .    10cd7b8: LEAQ 0x2c0(SP), AX
         .          .    10cd7c0: MOVQ AX, 0x20(SP)
         .          .    10cd7c5: MOVQ $0x2, 0x28(SP)
         .          .    10cd7ce: MOVQ $0x2, 0x30(SP)
         .          .    10cd7d7: CALL fmt.Fprintf(SB)
         .          .    10cd7dc: MOVQ main.dictStats(SB), AX             ;main.go:56
         .          .    10cd7e3: CMPB $0x0, 0(AX)
         .          .    10cd7e6: JNE 0x10cdf80
         .          .    10cd7ec: MOVQ main.src(SB), AX                   ;main.go:60
         .          .    10cd7f3: MOVQ 0(AX), CX
         .          .    10cd7f6: MOVQ 0x8(AX), AX
         .          .    10cd7fa: TESTQ AX, AX
         .          .    10cd7fd: JE 0x10cd811
         .          .    10cd7ff: MOVQ main.dest(SB), DX
         .          .    10cd806: CMPQ $0x0, 0x8(DX)
         .          .    10cd80b: JNE 0x10cda1d
         .          .    10cd811: MOVQ main.printGraph(SB), AX            ;main.go:84
         .          .    10cd818: CMPB $0x0, 0(AX)
         .          .    10cd81b: JNE 0x10cda07
         .          .    10cd821: MOVQ main.memprofile(SB), AX            ;main.go:88
         .          .    10cd828: CMPQ $0x0, 0x8(AX)
         .          .    10cd82d: JNE 0x10cd845
         .          .    10cd82f: NOPL                                    ;main.go:99
         .          .    10cd830: CALL runtime.deferreturn(SB)
         .          .    10cd835: MOVQ 0x2e0(SP), BP
         .          .    10cd83d: ADDQ $0x2e8, SP
         .          .    10cd844: RET
         .          .    10cd845: CALL runtime.GC(SB)                     ;main.go:89
         .          .    10cd84a: MOVQ main.memprofile(SB), AX            ;main.go:90
         .          .    10cd851: MOVQ 0(AX), CX
         .          .    10cd854: MOVQ 0x8(AX), AX
         .          .    10cd858: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cd85c: MOVQ AX, 0x8(SP)
         .          .    10cd861: MOVQ $0x602, 0x10(SP)
         .          .    10cd86a: MOVL $0x1b6, 0x18(SP)
         .          .    10cd872: CALL os.OpenFile(SB)
         .          .    10cd877: MOVQ 0x20(SP), AX
         .          .    10cd87c: MOVQ AX, 0x1f0(SP)
         .          .    10cd884: MOVQ 0x28(SP), CX
         .          .    10cd889: MOVQ 0x30(SP), DX
         .          .    10cd88e: TESTQ CX, CX                            ;main.go:91
         .          .    10cd891: JE 0x10cd8fd
         .          .    10cd893: JE 0x10cd899                            ;main.go:92
         .          .    10cd895: MOVQ 0x8(CX), CX
         .          .    10cd899: XORPS X0, X0
         .          .    10cd89c: MOVUPS X0, 0x260(SP)
         .          .    10cd8a4: MOVUPS X0, 0x270(SP)
         .          .    10cd8ac: LEAQ runtime.types+88544(SB), AX
         .          .    10cd8b3: MOVQ AX, 0x260(SP)
         .          .    10cd8bb: LEAQ internal/bytealg.IndexString.args_stackmap+672(SB), BX
         .          .    10cd8c2: MOVQ BX, 0x268(SP)
         .          .    10cd8ca: MOVQ CX, 0x270(SP)
         .          .    10cd8d2: MOVQ DX, 0x278(SP)
         .          .    10cd8da: LEAQ 0x260(SP), CX
         .          .    10cd8e2: MOVQ CX, 0(SP)
         .          .    10cd8e6: MOVQ $0x2, 0x8(SP)
         .          .    10cd8ef: MOVQ $0x2, 0x10(SP)
         .          .    10cd8f8: CALL log.Fatal(SB)
         .          .    10cd8fd: MOVL $0x18, 0xf0(SP)                    ;main.go:94
         .          .    10cd908: LEAQ go.func.*+293(SB), AX
         .          .    10cd90f: MOVQ AX, 0x108(SP)
         .          .    10cd917: MOVQ 0x1f0(SP), AX
         .          .    10cd91f: MOVQ AX, 0x120(SP)
         .          .    10cd927: LEAQ 0xf0(SP), CX
         .          .    10cd92f: MOVQ CX, 0(SP)
         .          .    10cd933: CALL runtime.deferprocStack(SB)
         .          .    10cd938: TESTL AX, AX
         .          .    10cd93a: JNE 0x10cd9f1
         .       10ms    10cd940: NOPL                                    ;runtime/pprof.WriteHeapProfile pprof.go:522
         .          .    10cd941: LEAQ go.itab.*os.File,io.Writer(SB), AX ;pprof.go:533
         .          .    10cd948: MOVQ AX, 0(SP)
         .          .    10cd94c: MOVQ 0x1f0(SP), AX
         .          .    10cd954: MOVQ AX, 0x8(SP)
         .          .    10cd959: MOVQ $0x0, 0x10(SP)
         .          .    10cd962: XORPS X0, X0
         .          .    10cd965: MOVUPS X0, 0x18(SP)
                                                                          ;runtime/pprof.writeHeap pprof.go:533
         .       10ms    10cd96a: CALL runtime/pprof.writeHeapInternal(SB)
         .          .    10cd96f: MOVQ 0x28(SP), AX                       ;pprof.go:533
         .          .    10cd974: MOVQ 0x30(SP), CX
         .       10ms    10cd979: TESTQ AX, AX                            ;main.main main.go:95
         .          .    10cd97c: JE 0x10cd82f                            ;main.go:95
         .          .    10cd982: JE 0x10cd988                            ;main.go:96
         .          .    10cd984: MOVQ 0x8(AX), AX
         .          .    10cd988: XORPS X0, X0
         .          .    10cd98b: MOVUPS X0, 0x260(SP)
         .          .    10cd993: MOVUPS X0, 0x270(SP)
         .          .    10cd99b: LEAQ runtime.types+88544(SB), DX
         .          .    10cd9a2: MOVQ DX, 0x260(SP)
         .          .    10cd9aa: LEAQ internal/bytealg.IndexString.args_stackmap+688(SB), DX
         .          .    10cd9b1: MOVQ DX, 0x268(SP)
         .          .    10cd9b9: MOVQ AX, 0x270(SP)
         .          .    10cd9c1: MOVQ CX, 0x278(SP)
         .          .    10cd9c9: LEAQ 0x260(SP), AX
         .          .    10cd9d1: MOVQ AX, 0(SP)
         .          .    10cd9d5: MOVQ $0x2, 0x8(SP)
         .          .    10cd9de: MOVQ $0x2, 0x10(SP)
         .          .    10cd9e7: CALL log.Fatal(SB)
         .          .    10cd9ec: JMP 0x10cd82f
         .          .    10cd9f1: NOPL                                    ;main.go:94
         .          .    10cd9f2: CALL runtime.deferreturn(SB)
         .          .    10cd9f7: MOVQ 0x2e0(SP), BP
         .          .    10cd9ff: ADDQ $0x2e8, SP
         .          .    10cda06: RET
         .          .    10cda07: MOVQ 0x1d0(SP), AX                      ;main.go:85
         .          .    10cda0f: MOVQ AX, 0(SP)
         .          .    10cda13: CALL main.(*Graph).PrintAdjList(SB)
         .          .    10cda18: JMP 0x10cd821
         .          .    10cda1d: MOVQ CX, 0(SP)                          ;main.go:61
         .          .    10cda21: MOVQ AX, 0x8(SP)
         .          .    10cda26: CALL runtime.convTstring(SB)
         .          .    10cda2b: MOVQ main.dest(SB), AX
         .          .    10cda32: MOVQ 0x10(SP), CX
         .          .    10cda37: MOVQ CX, 0x1f8(SP)
         .          .    10cda3f: MOVQ 0(AX), DX
         .          .    10cda42: MOVQ 0x8(AX), AX
         .          .    10cda46: MOVQ DX, 0(SP)
         .          .    10cda4a: MOVQ AX, 0x8(SP)
         .          .    10cda4f: CALL runtime.convTstring(SB)
         .          .    10cda54: MOVQ 0x10(SP), AX
         .          .    10cda59: XORPS X0, X0
         .          .    10cda5c: MOVUPS X0, 0x2a0(SP)
         .          .    10cda64: MOVUPS X0, 0x2b0(SP)
         .          .    10cda6c: LEAQ runtime.types+88544(SB), CX
         .          .    10cda73: MOVQ CX, 0x2a0(SP)
         .          .    10cda7b: MOVQ 0x1f8(SP), DX
         .          .    10cda83: MOVQ DX, 0x2a8(SP)
         .          .    10cda8b: MOVQ CX, 0x2b0(SP)
         .          .    10cda93: MOVQ AX, 0x2b8(SP)
         .          .    10cda9b: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdaa2: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdaa9: MOVQ DX, 0(SP)
         .          .    10cdaad: MOVQ AX, 0x8(SP)
         .          .    10cdab2: LEAQ go.string.*+16301(SB), AX
         .          .    10cdab9: MOVQ AX, 0x10(SP)
         .          .    10cdabe: MOVQ $0x1b, 0x18(SP)
         .          .    10cdac7: LEAQ 0x2a0(SP), AX
         .          .    10cdacf: MOVQ AX, 0x20(SP)
         .          .    10cdad4: MOVQ $0x2, 0x28(SP)
         .          .    10cdadd: MOVQ $0x2, 0x30(SP)
         .          .    10cdae6: CALL fmt.Fprintf(SB)
         .          .    10cdaeb: MOVQ main.src(SB), AX                   ;main.go:62
         .          .    10cdaf2: MOVQ 0x8(AX), CX
         .          .    10cdaf6: MOVQ 0(AX), AX
         .          .    10cdaf9: MOVQ 0x1d0(SP), DX
         .          .    10cdb01: MOVQ DX, 0(SP)
         .          .    10cdb05: MOVQ AX, 0x8(SP)
         .          .    10cdb0a: MOVQ CX, 0x10(SP)
         .          .    10cdb0f: CALL main.(*Graph).Find(SB)
         .          .    10cdb14: MOVQ main.dest(SB), AX                  ;main.go:63
         .          .    10cdb1b: MOVQ 0x18(SP), CX                       ;main.go:62
         .          .    10cdb20: MOVQ CX, 0x58(SP)
         .          .    10cdb25: MOVQ 0x8(AX), DX                        ;main.go:63
         .          .    10cdb29: MOVQ 0(AX), AX
         .          .    10cdb2c: MOVQ 0x1d0(SP), BX
         .          .    10cdb34: MOVQ BX, 0(SP)
         .          .    10cdb38: MOVQ AX, 0x8(SP)
         .          .    10cdb3d: MOVQ DX, 0x10(SP)
         .          .    10cdb42: CALL main.(*Graph).Find(SB)
         .          .    10cdb47: MOVQ 0x18(SP), AX
         .          .    10cdb4c: MOVQ 0x58(SP), CX                       ;main.go:65
         .          .    10cdb51: TESTQ CX, CX
         .          .    10cdb54: JL 0x10cde25
         .          .    10cdb5a: TESTQ AX, AX
         .          .    10cdb5d: JL 0x10cde22
         .          .    10cdb63: XORPS X0, X0                            ;main.go:75
         .          .    10cdb66: MOVUPS X0, 0x220(SP)
         .          .    10cdb6e: LEAQ runtime.types+88544(SB), AX
         .          .    10cdb75: MOVQ AX, 0x220(SP)
         .          .    10cdb7d: LEAQ internal/bytealg.IndexString.args_stackmap+656(SB), CX
         .          .    10cdb84: MOVQ CX, 0x228(SP)
         .          .    10cdb8c: MOVQ os.Stdout(SB), CX                  ;print.go:274
         .          .    10cdb93: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdb9a: MOVQ DX, 0(SP)
         .          .    10cdb9e: MOVQ CX, 0x8(SP)
         .          .    10cdba3: LEAQ 0x220(SP), CX
         .          .    10cdbab: MOVQ CX, 0x10(SP)
         .          .    10cdbb0: MOVQ $0x1, 0x18(SP)
         .          .    10cdbb9: MOVQ $0x1, 0x20(SP)
         .          .    10cdbc2: CALL fmt.Fprintln(SB)
         .          .    10cdbc7: MOVQ 0x1d0(SP), AX                      ;main.go:76
         .          .    10cdbcf: MOVQ AX, 0(SP)
         .          .    10cdbd3: MOVQ 0x58(SP), CX
         .          .    10cdbd8: MOVQ CX, 0x8(SP)
         .          .    10cdbdd: CALL main.(*Graph).AllPaths(SB)
         .          .    10cdbe2: MOVQ main.dest(SB), AX                  ;main.go:77
         .          .    10cdbe9: MOVQ 0x10(SP), CX                       ;main.go:76
         .          .    10cdbee: MOVQ 0x8(AX), DX                        ;main.go:77
         .          .    10cdbf2: MOVQ 0(AX), AX
         .          .    10cdbf5: MOVQ CX, 0(SP)
         .          .    10cdbf9: MOVQ AX, 0x8(SP)
         .          .    10cdbfe: MOVQ DX, 0x10(SP)
         .          .    10cdc03: CALL main.(*Paths).To(SB)
         .          .    10cdc08: MOVQ 0x18(SP), AX
         .          .    10cdc0d: MOVQ AX, 0x1c8(SP)
         .          .    10cdc15: MOVQ 0x20(SP), CX
         .          .    10cdc1a: MOVQ CX, 0x60(SP)
         .          .    10cdc1f: TESTQ CX, CX                            ;main.go:78
         .          .    10cdc22: JE 0x10cdd34
         .          .    10cdc28: MOVQ 0x1d0(SP), DX                      ;main.go:81
         .          .    10cdc30: XORL BX, BX
         .          .    10cdc32: JMP 0x10cdd12
         .          .    10cdc37: MOVQ BX, 0x78(SP)
         .          .    10cdc3c: LEAQ 0(SI)(SI*2), AX                    ;main.go:82
         .          .    10cdc40: MOVQ 0x10(R8)(AX*8), CX
         .          .    10cdc45: MOVQ 0(R8)(AX*8), DX
         .          .    10cdc49: MOVQ 0x8(R8)(AX*8), AX
         .          .    10cdc4e: MOVQ $0x0, 0(SP)
         .          .    10cdc56: MOVQ DX, 0x8(SP)
         .          .    10cdc5b: MOVQ AX, 0x10(SP)
         .          .    10cdc60: MOVQ CX, 0x18(SP)
         .          .    10cdc65: CALL runtime.slicebytetostring(SB)
         .          .    10cdc6a: MOVQ 0x28(SP), AX
         .          .    10cdc6f: MOVQ 0x20(SP), CX
         .          .    10cdc74: MOVQ CX, 0(SP)
         .          .    10cdc78: MOVQ AX, 0x8(SP)
         .          .    10cdc7d: CALL runtime.convTstring(SB)
         .          .    10cdc82: MOVQ 0x10(SP), AX
         .          .    10cdc87: XORPS X0, X0
         .          .    10cdc8a: MOVUPS X0, 0x210(SP)
         .          .    10cdc92: LEAQ runtime.types+88544(SB), CX
         .          .    10cdc99: MOVQ CX, 0x210(SP)
         .          .    10cdca1: MOVQ AX, 0x218(SP)
         .          .    10cdca9: MOVQ os.Stdout(SB), AX                  ;print.go:274
         .          .    10cdcb0: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdcb7: MOVQ DX, 0(SP)
         .          .    10cdcbb: MOVQ AX, 0x8(SP)
         .          .    10cdcc0: LEAQ 0x210(SP), AX
         .          .    10cdcc8: MOVQ AX, 0x10(SP)
         .          .    10cdccd: MOVQ $0x1, 0x18(SP)
         .          .    10cdcd6: MOVQ $0x1, 0x20(SP)
         .          .    10cdcdf: CALL fmt.Fprintln(SB)
         .          .    10cdce4: MOVQ 0x78(SP), AX                       ;main.go:81
         .          .    10cdce9: LEAQ 0x1(AX), BX
         .          .    10cdced: MOVQ 0x60(SP), AX
         .          .    10cdcf2: MOVQ 0x1d0(SP), CX
         .          .    10cdcfa: MOVQ 0x1c8(SP), DX
         .          .    10cdd02: MOVQ DX, AX
         .          .    10cdd05: MOVQ 0x60(SP), CX
         .          .    10cdd0a: MOVQ 0x1d0(SP), DX                      ;main.go:82
         .          .    10cdd12: CMPQ CX, BX                             ;main.go:81
         .          .    10cdd15: JGE 0x10cd821
         .          .    10cdd1b: MOVQ 0(AX)(BX*8), SI
         .          .    10cdd1f: MOVQ 0x8(DX), DI                        ;main.go:82
         .          .    10cdd23: MOVQ 0(DX), R8
         .          .    10cdd26: CMPQ DI, SI
         .          .    10cdd29: JB 0x10cdc37
         .          .    10cdd2f: JMP 0x10ce268
         .          .    10cdd34: MOVQ main.src(SB), AX                   ;main.go:79
         .          .    10cdd3b: MOVQ 0x8(AX), CX
         .          .    10cdd3f: MOVQ 0(AX), AX
         .          .    10cdd42: MOVQ AX, 0(SP)
         .          .    10cdd46: MOVQ CX, 0x8(SP)
         .          .    10cdd4b: CALL runtime.convTstring(SB)
         .          .    10cdd50: MOVQ main.dest(SB), AX
         .          .    10cdd57: MOVQ 0x10(SP), CX
         .          .    10cdd5c: MOVQ CX, 0x1f8(SP)
         .          .    10cdd64: MOVQ 0x8(AX), DX
         .          .    10cdd68: MOVQ 0(AX), AX
         .          .    10cdd6b: MOVQ AX, 0(SP)
         .          .    10cdd6f: MOVQ DX, 0x8(SP)
         .          .    10cdd74: CALL runtime.convTstring(SB)
         .          .    10cdd79: MOVQ 0x10(SP), AX
         .          .    10cdd7e: XORPS X0, X0
         .          .    10cdd81: MOVUPS X0, 0x280(SP)
         .          .    10cdd89: MOVUPS X0, 0x290(SP)
         .          .    10cdd91: LEAQ runtime.types+88544(SB), CX
         .          .    10cdd98: MOVQ CX, 0x280(SP)
         .          .    10cdda0: MOVQ 0x1f8(SP), DX
         .          .    10cdda8: MOVQ DX, 0x288(SP)
         .          .    10cddb0: MOVQ CX, 0x290(SP)
         .          .    10cddb8: MOVQ AX, 0x298(SP)
         .          .    10cddc0: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cddc7: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cddce: MOVQ DX, 0(SP)
         .          .    10cddd2: MOVQ AX, 0x8(SP)
         .          .    10cddd7: LEAQ go.string.*+20067(SB), AX
         .          .    10cddde: MOVQ AX, 0x10(SP)
         .          .    10cdde3: MOVQ $0x1f, 0x18(SP)
         .          .    10cddec: LEAQ 0x280(SP), AX
         .          .    10cddf4: MOVQ AX, 0x20(SP)
         .          .    10cddf9: MOVQ $0x2, 0x28(SP)
         .          .    10cde02: MOVQ $0x2, 0x30(SP)
         .          .    10cde0b: CALL fmt.Fprintf(SB)
         .          .    10cde10: MOVQ 0x1c8(SP), AX                      ;main.go:81
         .          .    10cde18: MOVQ 0x60(SP), CX
         .          .    10cde1d: JMP 0x10cdc28
         .          .    10cde22: TESTQ CX, CX                            ;main.go:65
         .          .    10cde25: JL 0x10cdede                            ;main.go:66
         .          .    10cde2b: TESTQ AX, AX                            ;main.go:69
         .          .    10cde2e: JL 0x10cde46
         .          .    10cde30: NOPL                                    ;main.go:72
         .          .    10cde31: CALL runtime.deferreturn(SB)
         .          .    10cde36: MOVQ 0x2e0(SP), BP
         .          .    10cde3e: ADDQ $0x2e8, SP
         .          .    10cde45: RET
         .          .    10cde46: MOVQ main.dest(SB), AX                  ;main.go:70
         .          .    10cde4d: MOVQ 0(AX), CX
         .          .    10cde50: MOVQ 0x8(AX), AX
         .          .    10cde54: MOVQ CX, 0(SP)
         .          .    10cde58: MOVQ AX, 0x8(SP)
         .          .    10cde5d: CALL runtime.convTstring(SB)
         .          .    10cde62: MOVQ 0x10(SP), AX
         .          .    10cde67: XORPS X0, X0
         .          .    10cde6a: MOVUPS X0, 0x230(SP)
         .          .    10cde72: LEAQ runtime.types+88544(SB), CX
         .          .    10cde79: MOVQ CX, 0x230(SP)
         .          .    10cde81: MOVQ AX, 0x238(SP)
         .          .    10cde89: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cde90: LEAQ go.itab.*os.File,io.Writer(SB), CX
         .          .    10cde97: MOVQ CX, 0(SP)
         .          .    10cde9b: MOVQ AX, 0x8(SP)
         .          .    10cdea0: LEAQ go.string.*+7929(SB), AX
         .          .    10cdea7: MOVQ AX, 0x10(SP)
         .          .    10cdeac: MOVQ $0x11, 0x18(SP)
         .          .    10cdeb5: LEAQ 0x230(SP), AX
         .          .    10cdebd: MOVQ AX, 0x20(SP)
         .          .    10cdec2: MOVQ $0x1, 0x28(SP)
         .          .    10cdecb: MOVQ $0x1, 0x30(SP)
         .          .    10cded4: CALL fmt.Fprintf(SB)
         .          .    10cded9: JMP 0x10cde30                           ;main.go:72
         .          .    10cdede: MOVQ AX, 0x50(SP)                       ;main.go:63
         .          .    10cdee3: MOVQ main.src(SB), AX                   ;main.go:67
         .          .    10cdeea: MOVQ 0x8(AX), CX
         .          .    10cdeee: MOVQ 0(AX), AX
         .          .    10cdef1: MOVQ AX, 0(SP)
         .          .    10cdef5: MOVQ CX, 0x8(SP)
         .          .    10cdefa: CALL runtime.convTstring(SB)
         .          .    10cdeff: MOVQ 0x10(SP), AX
         .          .    10cdf04: XORPS X0, X0
         .          .    10cdf07: MOVUPS X0, 0x240(SP)
         .          .    10cdf0f: LEAQ runtime.types+88544(SB), CX
         .          .    10cdf16: MOVQ CX, 0x240(SP)
         .          .    10cdf1e: MOVQ AX, 0x248(SP)
         .          .    10cdf26: MOVQ os.Stdout(SB), AX                  ;print.go:213
         .          .    10cdf2d: LEAQ go.itab.*os.File,io.Writer(SB), DX
         .          .    10cdf34: MOVQ DX, 0(SP)
         .          .    10cdf38: MOVQ AX, 0x8(SP)
         .          .    10cdf3d: LEAQ go.string.*+7929(SB), AX
         .          .    10cdf44: MOVQ AX, 0x10(SP)
         .          .    10cdf49: MOVQ $0x11, 0x18(SP)
         .          .    10cdf52: LEAQ 0x240(SP), BX
         .          .    10cdf5a: MOVQ BX, 0x20(SP)
         .          .    10cdf5f: MOVQ $0x1, 0x28(SP)
         .          .    10cdf68: MOVQ $0x1, 0x30(SP)
         .          .    10cdf71: CALL fmt.Fprintf(SB)
         .          .    10cdf76: MOVQ 0x50(SP), AX                       ;main.go:69
         .          .    10cdf7b: JMP 0x10cde2b
         .          .    10cdf80: MOVQ main.dict(SB), AX                  ;main.go:57
         .          .    10cdf87: MOVQ 0x8(AX), CX
         .          .    10cdf8b: MOVQ 0(AX), AX
         .          .    10cdf8e: MOVQ AX, 0(SP)
         .          .    10cdf92: MOVQ CX, 0x8(SP)
         .          .    10cdf97: CALL main.dictionaryStats(SB)
         .          .    10cdf9c: JMP 0x10cd7ec
         .          .    10cdfa1: MOVQ AX, 0(SP)                          ;main.go:49
         .          .    10cdfa5: MOVQ CX, 0x8(SP)
         .          .    10cdfaa: CALL main.createPathIfNotExists(SB)
         .          .    10cdfaf: JMP 0x10cd63e
         .          .    10cdfb4: NOPL                                    ;main.go:39
         .          .    10cdfb5: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10cdfb9: MOVQ AX, 0x8(SP)
         .          .    10cdfbe: MOVQ $0x602, 0x10(SP)
         .          .    10cdfc7: MOVL $0x1b6, 0x18(SP)
         .          .    10cdfcf: CALL os.OpenFile(SB)
         .          .    10cdfd4: MOVQ 0x20(SP), AX
         .          .    10cdfd9: MOVQ AX, 0x1d8(SP)
         .          .    10cdfe1: MOVQ 0x30(SP), CX
         .          .    10cdfe6: MOVQ 0x28(SP), DX
         .          .    10cdfeb: TESTQ DX, DX                            ;main.go:40
         .          .    10cdfee: JE 0x10ce05a
         .          .    10cdff0: JE 0x10cdff6                            ;main.go:41
         .          .    10cdff2: MOVQ 0x8(DX), DX
         .          .    10cdff6: XORPS X0, X0
         .          .    10cdff9: MOVUPS X0, 0x260(SP)
         .          .    10ce001: MOVUPS X0, 0x270(SP)
         .          .    10ce009: LEAQ runtime.types+88544(SB), AX
         .          .    10ce010: MOVQ AX, 0x260(SP)
         .          .    10ce018: LEAQ internal/bytealg.IndexString.args_stackmap+624(SB), BX
         .          .    10ce01f: MOVQ BX, 0x268(SP)
         .          .    10ce027: MOVQ DX, 0x270(SP)
         .          .    10ce02f: MOVQ CX, 0x278(SP)
         .          .    10ce037: LEAQ 0x260(SP), CX
         .          .    10ce03f: MOVQ CX, 0(SP)
         .          .    10ce043: MOVQ $0x2, 0x8(SP)
         .          .    10ce04c: MOVQ $0x2, 0x10(SP)
         .          .    10ce055: CALL log.Fatal(SB)
         .          .    10ce05a: MOVL $0x18, 0x138(SP)                   ;main.go:43
         .          .    10ce065: LEAQ go.func.*+293(SB), AX
         .          .    10ce06c: MOVQ AX, 0x150(SP)
         .          .    10ce074: MOVQ 0x1d8(SP), CX
         .          .    10ce07c: MOVQ CX, 0x168(SP)
         .          .    10ce084: LEAQ 0x138(SP), DX
         .          .    10ce08c: MOVQ DX, 0(SP)
         .          .    10ce090: CALL runtime.deferprocStack(SB)
         .          .    10ce095: TESTL AX, AX
         .          .    10ce097: JNE 0x10ce100
         .          .    10ce099: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:44
         .          .    10ce0a0: MOVQ AX, 0(SP)
         .          .    10ce0a4: MOVQ 0x1d8(SP), CX
         .          .    10ce0ac: MOVQ CX, 0x8(SP)
         .          .    10ce0b1: CALL runtime/trace.Start(SB)
         .          .    10ce0b6: MOVL $0x0, 0x80(SP)                     ;main.go:45
         .          .    10ce0c1: LEAQ go.func.*+1597(SB), AX
         .          .    10ce0c8: MOVQ AX, 0x98(SP)
         .          .    10ce0d0: LEAQ 0x80(SP), AX
         .          .    10ce0d8: MOVQ AX, 0(SP)
         .          .    10ce0dc: CALL runtime.deferprocStack(SB)
         .          .    10ce0e1: TESTL AX, AX
         .          .    10ce0e3: JNE 0x10ce0ea
         .          .    10ce0e5: JMP 0x10cd627
         .          .    10ce0ea: NOPL
         .          .    10ce0eb: CALL runtime.deferreturn(SB)
         .          .    10ce0f0: MOVQ 0x2e0(SP), BP
         .          .    10ce0f8: ADDQ $0x2e8, SP
         .          .    10ce0ff: RET
         .          .    10ce100: NOPL                                    ;main.go:43
         .          .    10ce101: CALL runtime.deferreturn(SB)
         .          .    10ce106: MOVQ 0x2e0(SP), BP
         .          .    10ce10e: ADDQ $0x2e8, SP
         .          .    10ce115: RET
         .          .    10ce116: NOPL                                    ;main.go:29
         .          .    10ce117: MOVQ CX, 0(SP)                          ;file.go:289
         .          .    10ce11b: MOVQ AX, 0x8(SP)
         .          .    10ce120: MOVQ $0x602, 0x10(SP)
         .          .    10ce129: MOVL $0x1b6, 0x18(SP)
         .          .    10ce131: CALL os.OpenFile(SB)
         .          .    10ce136: MOVQ 0x20(SP), AX
         .          .    10ce13b: MOVQ AX, 0x1e0(SP)
         .          .    10ce143: MOVQ 0x28(SP), CX
         .          .    10ce148: MOVQ CX, 0x68(SP)
         .          .    10ce14d: MOVQ 0x30(SP), DX
         .          .    10ce152: MOVQ DX, 0x1e8(SP)
         .          .    10ce15a: MOVL $0x18, 0x180(SP)                   ;main.go:30
         .          .    10ce165: LEAQ go.func.*+293(SB), BX
         .          .    10ce16c: MOVQ BX, 0x198(SP)
         .          .    10ce174: MOVQ AX, 0x1b0(SP)
         .          .    10ce17c: LEAQ 0x180(SP), SI
         .          .    10ce184: MOVQ SI, 0(SP)
         .          .    10ce188: CALL runtime.deferprocStack(SB)
         .          .    10ce18d: TESTL AX, AX
         .          .    10ce18f: JNE 0x10ce252
         .          .    10ce195: MOVQ 0x68(SP), AX                       ;main.go:31
         .          .    10ce19a: TESTQ AX, AX
         .          .    10ce19d: JE 0x10ce1eb
         .          .    10ce19f: JE 0x10ce1a5                            ;main.go:32
         .          .    10ce1a1: MOVQ 0x8(AX), AX
         .          .    10ce1a5: XORPS X0, X0
         .          .    10ce1a8: MOVUPS X0, 0x200(SP)
         .          .    10ce1b0: MOVQ AX, 0x200(SP)
         .          .    10ce1b8: MOVQ 0x1e8(SP), AX
         .          .    10ce1c0: MOVQ AX, 0x208(SP)
         .          .    10ce1c8: LEAQ 0x200(SP), AX
         .          .    10ce1d0: MOVQ AX, 0(SP)
         .          .    10ce1d4: MOVQ $0x1, 0x8(SP)
         .          .    10ce1dd: MOVQ $0x1, 0x10(SP)
         .          .    10ce1e6: CALL log.Fatal(SB)
         .          .    10ce1eb: LEAQ go.itab.*os.File,io.Writer(SB), AX ;main.go:34
         .          .    10ce1f2: MOVQ AX, 0(SP)
         .          .    10ce1f6: MOVQ 0x1e0(SP), CX
         .          .    10ce1fe: MOVQ CX, 0x8(SP)
         .          .    10ce203: CALL runtime/pprof.StartCPUProfile(SB)
         .          .    10ce208: MOVL $0x0, 0xb8(SP)                     ;main.go:35
         .          .    10ce213: LEAQ go.func.*+1565(SB), AX
         .          .    10ce21a: MOVQ AX, 0xd0(SP)
         .          .    10ce222: LEAQ 0xb8(SP), AX
         .          .    10ce22a: MOVQ AX, 0(SP)
         .          .    10ce22e: CALL runtime.deferprocStack(SB)
         .          .    10ce233: TESTL AX, AX
         .          .    10ce235: JNE 0x10ce23c
         .          .    10ce237: JMP 0x10cd610
         .          .    10ce23c: NOPL
         .          .    10ce23d: CALL runtime.deferreturn(SB)
         .          .    10ce242: MOVQ 0x2e0(SP), BP
         .          .    10ce24a: ADDQ $0x2e8, SP
         .          .    10ce251: RET
         .          .    10ce252: NOPL                                    ;main.go:30
         .          .    10ce253: CALL runtime.deferreturn(SB)
         .          .    10ce258: MOVQ 0x2e0(SP), BP
         .          .    10ce260: ADDQ $0x2e8, SP
         .          .    10ce267: RET
         .          .    10ce268: MOVQ SI, AX                             ;main.go:82
         .          .    10ce26b: MOVQ DI, CX
         .          .    10ce26e: CALL runtime.panicIndex(SB)
         .          .    10ce273: MOVL $0x1, AX                           ;flag.go:996
         .          .    10ce278: CALL runtime.panicSliceB(SB)
         .          .    10ce27d: NOPL
         .          .    10ce27e: CALL runtime.morestack_noctxt(SB)       ;main.go:25
         .          .    10ce283: JMP main.main(SB)
         .          .    10ce288: INT $0x3
         .          .    10ce289: INT $0x3
         .          .    10ce28a: INT $0x3
         .          .    10ce28b: INT $0x3
         .          .    10ce28c: INT $0x3
         .          .    10ce28d: INT $0x3
         .          .    10ce28e: INT $0x3
ROUTINE ======================== main.newIndex
     110ms      120ms (flat, cum)  2.08% of Total
      10ms       10ms    10cbff0: MOVQ GS:0x30, CX                        ;main.newIndex index.go:18
         .          .    10cbff9: CMPQ 0x10(CX), SP                       ;index.go:18
         .          .    10cbffd: JBE 0x10cc1fe
         .          .    10cc003: SUBQ $0x48, SP
         .          .    10cc007: MOVQ BP, 0x40(SP)
         .          .    10cc00c: LEAQ 0x40(SP), BP
         .          .    10cc011: LEAQ runtime.types+77216(SB), AX        ;index.go:19
         .          .    10cc018: MOVQ AX, 0(SP)
         .          .    10cc01c: MOVQ 0x50(SP), AX
         .          .    10cc021: MOVQ AX, 0x8(SP)
         .          .    10cc026: MOVQ AX, 0x10(SP)
         .       10ms    10cc02b: CALL runtime.makeslice(SB)              ;main.newIndex index.go:19
         .          .    10cc030: MOVQ 0x18(SP), AX                       ;index.go:19
         .          .    10cc035: MOVQ AX, 0x38(SP)
         .          .    10cc03a: XORL CX, CX
         .          .    10cc03c: JMP 0x10cc045                           ;index.go:20
         .          .    10cc03e: LEAQ 0x1(AX), CX
         .          .    10cc042: MOVQ BX, AX                             ;index.go:21
         .          .    10cc045: MOVQ 0x50(SP), DX                       ;index.go:20
         .          .    10cc04a: CMPQ DX, CX
         .          .    10cc04d: JGE 0x10cc0b4
         .          .    10cc04f: MOVQ CX, 0x20(SP)
         .          .    10cc054: LEAQ runtime.types+85856(SB), AX        ;index.go:21
         .          .    10cc05b: MOVQ AX, 0(SP)
         .          .    10cc05f: XORPS X0, X0
         .          .    10cc062: MOVUPS X0, 0x8(SP)
         .          .    10cc067: CALL runtime.makeslice(SB)
         .          .    10cc06c: MOVQ 0x20(SP), AX
         .          .    10cc071: LEAQ 0(AX)(AX*2), CX
         .          .    10cc075: MOVQ 0x18(SP), DX
         .          .    10cc07a: MOVQ 0x38(SP), BX
      40ms       40ms    10cc07f: MOVQ $0x0, 0x8(BX)(CX*8)                ;main.newIndex index.go:21
      60ms       60ms    10cc088: MOVQ $0x0, 0x10(BX)(CX*8)
         .          .    10cc091: LEAQ 0(BX)(CX*8), DI                    ;index.go:21
         .          .    10cc095: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc09c: JNE 0x10cc0a4
         .          .    10cc09e: MOVQ DX, 0(BX)(CX*8)
         .          .    10cc0a2: JMP 0x10cc03e
         .          .    10cc0a4: MOVQ AX, CX                             ;index.go:20
         .          .    10cc0a7: MOVQ DX, AX                             ;index.go:21
         .          .    10cc0aa: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc0af: MOVQ CX, AX                             ;index.go:20
         .          .    10cc0b2: JMP 0x10cc03e                           ;index.go:21
         .          .    10cc0b4: NOPL                                    ;murmur64.go:18
         .          .    10cc0b5: MOVL $0x0, 0(SP)                        ;murmur64.go:22
         .          .    10cc0bc: CALL erichgess/wordladder/vendor/github.com/spaolacci/murmur3.New128WithSeed(SB)
         .          .    10cc0c1: MOVQ 0x10(SP), AX
         .          .    10cc0c6: MOVQ 0x8(SP), CX
         .          .    10cc0cb: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest128,erichgess/wordladder/vendor/github.com/spaolacci/murmur3.Hash128(SB), DX
         .          .    10cc0d2: CMPQ DX, CX
         .          .    10cc0d5: JNE 0x10cc1dc
         .          .    10cc0db: MOVQ AX, 0x28(SP)
         .          .    10cc0e0: LEAQ runtime.types+88864(SB), AX        ;index.go:25
         .          .    10cc0e7: MOVQ AX, 0(SP)
         .          .    10cc0eb: MOVQ $0x0, 0x8(SP)
         .          .    10cc0f4: MOVQ 0x58(SP), AX
         .          .    10cc0f9: MOVQ AX, 0x10(SP)
         .          .    10cc0fe: CALL runtime.makeslice(SB)
         .          .    10cc103: MOVQ 0x18(SP), AX
         .          .    10cc108: MOVQ AX, 0x30(SP)
         .          .    10cc10d: LEAQ runtime.types+195616(SB), CX       ;index.go:27
         .          .    10cc114: MOVQ CX, 0(SP)
         .          .    10cc118: CALL runtime.newobject(SB)
         .          .    10cc11d: MOVQ 0x8(SP), AX
                                                                          ;index.go:24
         .          .    10cc122: LEAQ go.itab.*erichgess/wordladder/vendor/github.com/spaolacci/murmur3.digest64,hash.Hash64(SB), CX
         .          .    10cc129: MOVQ CX, 0(AX)
         .          .    10cc12c: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc133: JNE 0x10cc1c3
         .          .    10cc139: MOVQ 0x28(SP), CX
         .          .    10cc13e: MOVQ CX, 0x8(AX)
         .          .    10cc142: MOVQ $0x0, 0x30(AX)                     ;index.go:25
         .          .    10cc14a: MOVQ 0x58(SP), CX
         .          .    10cc14f: MOVQ CX, 0x38(AX)
         .          .    10cc153: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc15a: JNE 0x10cc1ad
         .          .    10cc15c: MOVQ 0x30(SP), CX
         .          .    10cc161: MOVQ CX, 0x28(AX)
         .          .    10cc165: MOVQ 0x50(SP), CX                       ;index.go:26
         .          .    10cc16a: MOVQ CX, 0x18(AX)
         .          .    10cc16e: MOVQ CX, 0x20(AX)
         .          .    10cc172: CMPL $0x0, runtime.writeBarrier(SB)
         .          .    10cc179: JNE 0x10cc197
         .          .    10cc17b: MOVQ 0x38(SP), DX
         .          .    10cc180: MOVQ DX, 0x10(AX)
         .          .    10cc184: MOVQ CX, 0x40(AX)                       ;index.go:27
         .          .    10cc188: MOVQ AX, 0x60(SP)                       ;index.go:23
         .          .    10cc18d: MOVQ 0x40(SP), BP
         .          .    10cc192: ADDQ $0x48, SP
         .          .    10cc196: RET
         .          .    10cc197: LEAQ 0x10(AX), DI                       ;index.go:26
         .          .    10cc19b: MOVQ AX, DX                             ;index.go:27
         .          .    10cc19e: MOVQ 0x38(SP), AX                       ;index.go:26
         .          .    10cc1a3: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc1a8: MOVQ DX, AX                             ;index.go:27
         .          .    10cc1ab: JMP 0x10cc184                           ;index.go:26
         .          .    10cc1ad: LEAQ 0x28(AX), DI                       ;index.go:25
         .          .    10cc1b1: MOVQ AX, CX                             ;index.go:27
         .          .    10cc1b4: MOVQ 0x30(SP), AX                       ;index.go:25
         .          .    10cc1b9: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc1be: MOVQ CX, AX                             ;index.go:26
         .          .    10cc1c1: JMP 0x10cc165                           ;index.go:25
         .          .    10cc1c3: LEAQ 0x8(AX), DI                        ;index.go:24
         .          .    10cc1c7: MOVQ AX, CX                             ;index.go:27
         .          .    10cc1ca: MOVQ 0x28(SP), AX                       ;index.go:24
         .          .    10cc1cf: CALL runtime.gcWriteBarrier(SB)
         .          .    10cc1d4: MOVQ CX, AX                             ;index.go:25
         .          .    10cc1d7: JMP 0x10cc142                           ;index.go:24
         .          .    10cc1dc: MOVQ CX, 0(SP)                          ;murmur64.go:22
         .          .    10cc1e0: LEAQ runtime.types+200512(SB), AX
         .          .    10cc1e7: MOVQ AX, 0x8(SP)
         .          .    10cc1ec: LEAQ runtime.types+156288(SB), AX
         .          .    10cc1f3: MOVQ AX, 0x10(SP)
         .          .    10cc1f8: CALL runtime.panicdottypeI(SB)
         .          .    10cc1fd: NOPL
         .          .    10cc1fe: CALL runtime.morestack_noctxt(SB)       ;index.go:18
         .          .    10cc203: JMP main.newIndex(SB)
         .          .    10cc208: INT $0x3
         .          .    10cc209: INT $0x3
         .          .    10cc20a: INT $0x3
         .          .    10cc20b: INT $0x3
         .          .    10cc20c: INT $0x3
         .          .    10cc20d: INT $0x3
         .          .    10cc20e: INT $0x3
ROUTINE ======================== runtime.main
         0      2.69s (flat, cum) 46.54% of Total
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
         .          .    102cc11: LEAQ runtime.types+83104(SB), AX        ;proc.go:168
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
         .      2.69s    102cd0c: CALL AX                                 ;runtime.main proc.go:203
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
