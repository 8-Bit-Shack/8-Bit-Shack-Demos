************************************************************
* lens_rc1 - LENS (disassembly)
*
* Disassembled from the original binary (11416 bytes, $6000-$8C97).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and license terms.
* Entry point $6000 (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $6000

KEYBD          EQU    $C000
RAMRDOFF       EQU    $C002
RAMRDON        EQU    $C003
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
AN1OFF         EQU    $C05A
AN2OFF         EQU    $C05C
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
SETTXT         EQU    $FB39
VTAB           EQU    $FC22
HOME           EQU    $FC58
WAIT           EQU    $FCA8
COUT           EQU    $FDED

START          LDA    #$00
               STA    $11
               STA    $0370
               JSR    SUB6670
               JSR    SUB6345
               JSR    SUB71AE
               JSR    SUB66B8
               JSR    SUB66C7
               JSR    SUB670A
               JSR    SUB674B
               JSR    SUB64D5
               JSR    SUB71EC
               LDA    $0370
               BNE    L602A
               JMP    L6037
L602A          JSR    SUB650C
               JSR    SUB660D
               JSR    SUB6808
               JSR    SUB688A
               CLI
L6037          LDA    #$00
               STA    $0325
               STA    $10
               JSR    SUB7DC1
               JSR    SUB7C1F
               LDA    #$0D
               JSR    SUB63B8
               JSR    SUB62A7
               LDA    $0370
               BEQ    L6052
               CLI
L6052          LDA    #$4F
               STA    $0300
L6057          STZ    $0327
L605A          LDX    $0327
               LDA    D7300,X
               STA    $0321
               LDA    D7400,X
               STA    $0322
               JSR    SUB6150
               LDA    KEYBD
               BMI    L6079
               INC    $0327
               BNE    L605A
               JMP    L6057
L6079          LDA    KEYBD
               BPL    L60E1
               BIT    STROBE
               CMP    #$D1
               BEQ    L60E4
               CMP    #$C9
               BNE    L609C
               LDA    $0322
               CMP    #$03
               BNE    L6093
               JMP    L60E1
L6093          DEC    $0322
               JSR    SUB6150
               JMP    L60E1
L609C          CMP    #$CD
               BNE    L60B3
               LDA    $0322
               CMP    #$22
               BNE    L60AA
               JMP    L60E1
L60AA          INC    $0322
               JSR    SUB6150
               JMP    L60E1
L60B3          CMP    #$CA
               BNE    L60CA
               LDA    $0321
               CMP    #$03
               BNE    L60C1
               JMP    L60E1
L60C1          DEC    $0321
               JSR    SUB6150
               JMP    L60E1
L60CA          CMP    #$CB
               BNE    L60E1
               LDA    $0321
               CMP    #$43
               BNE    L60D8
               JMP    L60E1
L60D8          INC    $0321
               JSR    SUB6150
               JMP    L60E1
L60E1          JMP    L6079
L60E4          LDA    STROBE
               JSR    SUB7C5B
               LDA    #$0E
               STA    $24
               LDX    #$E2
               LDY    #$63
               JSR    SUB6779
               JSR    SUB6773
               JSR    SUB6773
               JSR    SUB6773
               JSR    SUB6773
               JSR    SUB6773
               JSR    SUB6773
               JSR    SUB6773
               LDA    #$06
               STA    $24
               LDX    #$B9
               LDY    #$64
               JSR    SUB6779
               JSR    SUB6773
               JSR    SUB6773
               JSR    SUB6773
               JSR    SUB6773
               LDA    #$0D
               STA    $24
               LDX    #$AB
               LDY    #$64
               JSR    SUB6779
               JSR    SUB6773
L612F          LDA    KEYBD
               BPL    L612F
               LDA    STROBE
               SEI
               JSR    SUB65A5
               JSR    SUB71F7
               JMP    $03D0
               HEX    60AD00030A9002491D8D0003290160
SUB6150        STZ    $0326
               STZ    $0324
L6156          STZ    $0323
L6159          LDX    $0326
               LDA    D7500,X
               CLC
               ADC    $0322
               AND    #$0F
               ASL
               ASL
               ASL
               ASL
               STA    D6177+1
               LDA    D7579,X
               CLC
               ADC    $0321
               DEC
               AND    #$0F
               TAX
D6177          LDA    D7800,X
               AND    #$0F
               STA    $23
               LDX    $0326
               LDA    D7694,X
               BEQ    L618A
               LDA    #$0F
               STA    $23
L618A          LDA    $0321
               CLC
               ADC    $0323
               STA    $20
               LDA    $0322
               CLC
               ADC    $0324
               STA    $21
               JSR    SUB7D43
               INC    $0326
               INC    $0323
               LDA    $0323
               CMP    #$0B
               BNE    L6159
               INC    $0324
               LDA    $0324
               CMP    #$0B
               BNE    L6156
               JSR    SUB61BA
               RTS
SUB61BA        LDA    #$01
               STA    $0323
               LDA    $0322
               DEC
               STA    $21
               AND    #$0F
               ASL
               ASL
               ASL
               ASL
               STA    D61D9+1
L61CE          LDA    $0323
               CLC
               ADC    $0321
               DEC
               AND    #$0F
               TAX
D61D9          LDA    D7800,X
               AND    #$0F
               STA    $23
               LDA    $0321
               CLC
               ADC    $0323
               STA    $20
               JSR    SUB7D43
               INC    $0323
               LDA    $0323
               CMP    #$0B
               BNE    L61CE
               LDA    #$01
               STA    $0323
               LDA    $0322
               CLC
               ADC    #$0B
               STA    $21
               AND    #$0F
               ASL
               ASL
               ASL
               ASL
               STA    D6217+1
L620C          LDA    $0323
               CLC
               ADC    $0321
               DEC
               AND    #$0F
               TAX
D6217          LDA    D7800,X
               AND    #$0F
               STA    $23
               LDA    $0321
               CLC
               ADC    $0323
               STA    $20
               JSR    SUB7D43
               INC    $0323
               LDA    $0323
               CMP    #$0B
               BNE    L620C
               LDA    #$01
               STA    $0324
               LDA    $0321
               DEC
               STA    $20
               DEC
               AND    #$0F
               STA    $16
L6244          LDA    $0322
               CLC
               ADC    $0324
               STA    $21
               AND    #$0F
               ASL
               ASL
               ASL
               ASL
               STA    D6258+1
               LDX    $16
D6258          LDA    D7800,X
               AND    #$0F
               STA    $23
               JSR    SUB7D43
               INC    $0324
               LDA    $0324
               CMP    #$0B
               BNE    L6244
               LDA    #$01
               STA    $0324
               LDA    $0321
               CLC
               ADC    #$0B
               STA    $20
               DEC
               AND    #$0F
               STA    $16
L627E          LDA    $0322
               CLC
               ADC    $0324
               STA    $21
               AND    #$0F
               ASL
               ASL
               ASL
               ASL
               STA    D6292+1
               LDX    $16
D6292          LDA    D7800,X
               AND    #$0F
               STA    $23
               JSR    SUB7D43
               INC    $0324
               LDA    $0324
               CMP    #$0B
               BNE    L627E
               RTS
SUB62A7        LDY    #$26
               LDX    #$01
               STZ    $15
               INC    $15
               STZ    $14
               INC    $14
L62B3          LDX    $15
               LDA    D8740,X
               STA    D62F6+1
               STA    D6326+1
               LDA    D8600,X
               STA    D62F6+2
               STA    D6326+2
               LDA    $15
               ASL
               ASL
               ASL
               ASL
               ASL
               STA    D62E3+1
               STA    D62EF+1
               STA    D6310+1
               STA    D631C+1
               LDY    $14
L62DC          LDA    $14
               ASL
               AND    #$0F
               PHA
               TAX
D62E3          LDA    D7800,X
               AND    #$0F
               STA    $12
               PLA
               CLC
               ADC    #$10
               TAX
D62EF          LDA    D7800,X
               AND    #$F0
               ORA    $12
D62F6          STA:   $40,Y
               INC    $14
               LDA    $14
               TAY
               CMP    #$27
               BNE    L62DC
               STZ    $14
               INC    $14
               LDY    $14
L6308          LDA    $14
               ASL
               DEC
               AND    #$0F
               PHA
               TAX
D6310          LDA    D7A00,X
               AND    #$0F
               STA    $12
               PLA
               CLC
               ADC    #$10
               TAX
D631C          LDA    D7A00,X
               AND    #$F0
               ORA    $12
               STA    RAMWRTON
D6326          STA:   $40,Y
               STA    RAMWRTOFF
               INC    $14
               LDA    $14
               TAY
               CMP    #$27
               BNE    L6308
               STZ    $14
               INC    $14
               INC    $15
               LDA    $15
               CMP    #$17
               BCS    L6344
               JMP    L62B3
L6344          RTS
SUB6345        JSR    SETTXT
               JSR    HOME
               LDA    #$00
               STA    $0325
               LDA    #$0E
               STA    $24
               LDX    #$E2
               LDY    #$63
               JSR    SUB6779
               LDA    #$50
               STA    $0325
               LDA    #$10
               STA    $24
               LDA    #$12
               STA    $25
               JSR    VTAB
               LDX    #$24
               LDY    #$64
               JSR    SUB6779
               LDA    #$06
               STA    $24
               LDA    #$14
               STA    $25
               JSR    VTAB
               LDX    #$4B
               LDY    #$64
               JSR    SUB6779
               LDA    #$04
               STA    $24
               LDA    #$15
               STA    $25
               JSR    VTAB
               LDX    #$64
               LDY    #$64
               LDA    #$06
               STA    $24
               LDA    #$15
               STA    $25
               JSR    VTAB
               LDX    #$2D
               LDY    #$64
               JSR    SUB6779
               LDA    #$0B
               STA    $24
               LDA    #$0A
               STA    $25
               JSR    VTAB
               LDX    #$0F
               LDY    #$64
               JSR    SUB6779
               RTS
SUB63B8        STA    $23
               LDA    #$00
               STA    $20
               STA    $21
               LDA    #$4F
               STA    $27
               JSR    SUB80D6
               LDA    #$2F
               STA    $21
               STA    $28
               JSR    SUB80D6
               LDA    #$00
               STA    $21
               STA    $20
               JSR    SUB8183
               LDA    #$4F
               STA    $20
               JSR    SUB8183
               RTS
               HEX    60B8ADC2C9D4ADD3C8C1C3CB00D0F2E5
               ASC    "ss a key to start the demo..."
               HEX    00CCEFE1E4E9EEE7A0E4E5EDEFA0E4E1
               HEX    F4E1AEAEAE00CFF0F4E9EFEEF3BA00A0
               ASC    " <Q>:         Quit LENS-Demo"
               HEX    00A0A0BCC9ACCAACCBACCDBEBAA0A0A0
               ASC    "Move lens"
               HEX    00A0A0BCCDAFCEBEBAA0C9EEE3F2E5E1
               ASC    "se/Decrease heat"
               HEX    00CDC5D2D2D9A0D8ADCDC1D3A0B2B0B2
               ASC    "0 AND A HAPPY NEW YEAR!"
               HEX    00BCD0D2C5D3D3A0C1A0CBC5D9BE00CD
               ASC    "ORE INFO: WWW.GOLOMBECK.EU"
               HEX    00
SUB64D5        LDA    #$00
               STA    $08
L64D9          LDA    #$07
               STA    $0371
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L64E6          LDA    ($08),Y
               STA    $10
               LDA    ($08),Y
               SEC
               SBC    $10
               CMP    #$F8
               BEQ    L64FB
               CMP    #$F9
               BEQ    L64FB
               CMP    #$F7
               BNE    L6503
L64FB          DEX
               BNE    L64E6
               INX
L64FF          STX    $0370
               RTS
L6503          DEC    L64D9+1
               BNE    L64D9
               LDX    #$00
               BEQ    L64FF
SUB650C        LDA    $09
               STA    D6585+2
               STA    D6588+2
               STA    D658B+2
               STA    D658E+2
               STA    D6593+2
               STA    D6598+2
               STA    D659D+2
               STA    D65A2+2
               STA    D65DC+2
               STA    D65E1+2
               STA    D65E4+2
               STA    D65E9+2
               STA    D65EE+2
               STA    D65F7+2
               STA    D65FC+2
               STA    D65FF+2
               STA    D6604+2
               STA    D6609+2
               STA    D65BC+2
               STA    D65C1+2
               STA    D65C6+2
               STA    D65C9+2
               STA    D65CE+2
               STA    D65D3+2
               STA    D67D3
               STA    D67D6
               STA    D67DB
               STA    D67DE
               STA    D67E3
               STA    D67E6
               STA    D67E9
               STA    D67EC
               STA    D67F1
               STA    D67F4
               STA    D67F7
               STA    D67FA
               STA    SUB65D7+2
               STA    SUB65F2+2
               STA    D67AC
               LDA    #$FF
D6585          STA    $C402
D6588          STA    $C403
D658B          STA    $C482
D658E          STA    $C483
               LDA    #$00
D6593          STA    $C400
               LDA    #$04
D6598          STA    $C400
               LDA    #$00
D659D          STA    $C480
               LDA    #$04
D65A2          STA    $C480
SUB65A5        LDY    #$0E
               LDX    #$00
L65A9          JSR    SUB65F2
               DEY
               BPL    L65A9
               LDY    #$0E
               LDX    #$00
L65B3          JSR    SUB65D7
               DEY
               BPL    L65B3
               SEI
               LDA    #$40
D65BC          STA    $C40B
               LDA    #$7F
D65C1          STA    $C40E
               LDA    #$C0
D65C6          STA    $C40D
D65C9          STA    $C40E
               LDA    #$E7
D65CE          STA    $C404
               LDA    #$4F
D65D3          STA    $C405
               RTS
SUB65D7        STY    $C401
               LDA    #$07
D65DC          STA    $C400
               LDA    #$04
D65E1          STA    $C400
D65E4          STX    $C401
               LDA    #$06
D65E9          STA    $C400
               LDA    #$04
D65EE          STA    $C400
               RTS
SUB65F2        STY    $C481
               LDA    #$07
D65F7          STA    $C480
               LDA    #$04
D65FC          STA    $C480
D65FF          STX    $C481
               LDA    #$06
D6604          STA    $C480
               LDA    #$04
D6609          STA    $C480
               RTS
SUB660D        LDA    $0372
               CMP    #$FF
               BEQ    L6638
               CMP    #$EA
               BEQ    L6627
               CMP    #$38
               BEQ    L6627
               LDA    #$A6
               STA    $03FE
               LDA    #$67
               STA    $03FF
               RTS
L6627          LDA    $C083
               LDA    $C083
               LDA    #$A6
               STA    $FFFE
               LDA    #$67
               STA    $FFFF
               RTS
L6638          LDA    #$C0
               STA    $03FE
               LDA    #$03
               STA    $03FF
               LDA    #$AD
               STA    $03C0
               LDA    #$83
               STA    $03C1
               LDA    #$C0
               STA    $03C2
               LDA    #$AD
               STA    $03C3
               LDA    #$83
               STA    $03C4
               LDA    #$C0
               STA    $03C5
               LDA    #$4C
               STA    $03C6
               LDA    #$A6
               STA    $03C7
               LDA    #$67
               STA    $03C8
               RTS
SUB6670        LDA    #$FF
               STA    $07
               LDA    $FBB3
               CMP    #$06
               BEQ    L6683
               STA    $0372
               LDA    #$DF
               STA    $07
               RTS
L6683          LDA    $FBC0
               BEQ    L66B4
               SEC
               JSR    $FE1F
               BCS    L66AE
               LDA    #$FF
               STA    $0372
               LDA    $C036
               AND    #$7F
               STA    $C036
               LDA    $C034
               AND    #$F0
               STA    $C034
               LDA    $C022
               AND    #$F0
               ORA    #$F0
               STA    $C022
               RTS
L66AE          LDA    #$7F
               STA    $0372
               RTS
L66B4          STA    $0372
               RTS
SUB66B8        LDA    #$00
               BRA    L66BE
               HEX    F005
L66BE          INC
               HEX    EB3AEB1A8D780360
SUB66C7        LDA    #$5A
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               LDX    #$00
L66D7          LDA    D66DD,X
               INX
               BNE    L66D7
D66DD          LDA    AN2OFF
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L6704
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L6704
               LDA    #$00
               STA    AN1OFF
               LDA    #$A5
               STA    AN1OFF
               LDA    #$01
               STA    $0374
               RTS
L6704          LDA    #$00
               STA    $0374
               RTS
SUB670A        LDA    $0372
               LDX    #$00
               CMP    #$7F
               BEQ    L6715
               BNE    L6746
L6715          LDY    #$04
               LDA    #$6A
L6719          STA    $C06A
               DEY
               BNE    L6719
               LDA    #$00
               STA    $C06B
               LDY    $C06B
               CPY    #$80
               BNE    L6746
               LDA    $C06D
               STA    $037A
               LDA    #$80
               STA    $C06D
               LDA    #$09
               STA    $C06D
               LDA    #$A6
               STA    $C06A
               LDA    #$01
               STA    $0375
               RTS
L6746          TXA
               STA    $0375
               RTS
SUB674B        LDA    $C083
               LDA    $C083
               LDA    $D000
               INC    $D000
               CMP    $D000
               BEQ    L6767
               DEC    $D000
               LDA    #$01
               STA    $0376
               JMP    L676C
L6767          LDA    #$00
               STA    $0376
L676C          LDA    $C081
               RTS
               HEX    A90760
SUB6773        LDA    #$8D
               JSR    COUT
               RTS
SUB6779        STX    L6781+1
               STY    L6781+2
               LDX    #$00
L6781          LDA    $1000,X
               BEQ    L67A5
               CMP    #$E1
               BCC    L6790
               CMP    #$FB
               BCS    L6790
               AND    $07
L6790          JSR    COUT
               LDA    $0325
               BEQ    L67A2
               TXA
               PHA
               LDA    $0325
               JSR    WAIT
               PLA
               TAX
L67A2          INX
               BNE    L6781
L67A5          RTS
               HEX    0848DA5A2C04
D67AC          HEX    C4AD8BC0A57BF0034C036820A06DA57C
               HEX    F0082008684C0368A9
D67C5          HEX    00AAB565E00DD004C9FFF02F8E01
D67D3          HEX    C48E81
D67D6          HEX    C4A0078C00
D67DB          HEX    C48C80
D67DE          HEX    C4A0048C00
D67E3          HEX    C48C80
D67E6          HEX    C48D01
D67E9          HEX    C48D81
D67EC          HEX    C4A9068D00
D67F1          HEX    C48D80
D67F4          HEX    C48C00
D67F7          HEX    C48C80
D67FA          HEX    C4E8E00E30C720E1637AFA682840
SUB6808        LDX    #$00
               LDA    #$00
               STA    $7B
               STA    $7C
               STA    $7D
               STA    D6D45
               STA    D6DA5
               STA    D6DA1
L681B          STA    $65,X
               INX
               CPX    #$16
               BNE    L681B
               LDX    #$00
L6824          STA    $80,X
               INX
               CPX    #$78
               BNE    L6824
               RTS
SUB682C        LDA    #$00
               JSR    SUB685D
               LDA    #$01
               STY    $7E
               ASL
               TAY
               LDA    $2069,Y
               STA    $79
               LDA    $206A,Y
               ADC    #$20
               STA    $7A
               LDY    #$00
               LDA    ($79),Y
               STA    $87,X
               INY
               LDA    ($79),Y
               STA    $88,X
               LDA    $79
               ADC    #$02
               STA    $85,X
               LDA    $7A
               ADC    #$00
               STA    $86,X
               LDY    $7E
               RTS
SUB685D        STY    $7E
               ASL
               TAY
               LDA    $20A9,Y
               STA    $77
               LDA    $20AA,Y
               ADC    #$20
               STA    $78
               LDA    #$00
               STA    $99,X
               TAY
               LDA    ($77),Y
               STA    $93,X
               INY
               LDA    ($77),Y
               STA    $94,X
               LDA    $77
               ADC    #$02
               STA    $91,X
               LDA    $78
               ADC    #$00
               STA    $92,X
               LDY    $7E
               RTS
SUB688A        LDA    #$00
               STA    $7C
               LDX    #$78
L6890          DEX
               STA    $80,X
               BNE    L6890
               STA    D6E70
               STA    D6E72
               STA    D6E9A
               STA    D6E9F
               STA    D6EA6
               STA    D6EAB
               STA    D6EF5
               STA    D6EFD
               STA    D6E9C
               STA    D6ED6
               STA    D6ED8
               STA    D6EE3
               STA    D6EEC
               STA    D6AC9
               STA    D6D45
               STA    D6DA1
               STA    D6DA5
               LDA    #$0A
               STA    $80
               STA    $A8
               STA    $D0
               LDX    #$00
               JSR    SUB682C
               LDX    #$28
               JSR    SUB682C
               LDX    #$50
               JSR    SUB682C
               LDA    $2064
               STA    D6DB6
               LDA    $2066
               STA    D67C5
               LDX    #$06
               LDA    $200D
               SEC
               SBC    #$30
               CMP    #$09
               BCS    L68F8
               TAX
L68F8          LDA    #$2C
               CPX    #$06
               BCC    L6900
               ADC    #$1F
L6900          STA    D6C75
               CPX    #$05
               LDA    #$00
               STA    D692B+1
               LDY    #$11
               LDX    #$2A
               BCS    L6914
               DEY
               TYA
               LDX    #$EA
L6914          STY    D6922+1
               STA    D6924+1
               STX    D693C
               LDY    #$10
               LDX    #$10
L6921          CLC
D6922          LDA    #$D1
D6924          ADC    #$D1
               STA    D6924+1
               LDA    #$00
D692B          ADC    #$D1
               STA    D692B+1
               LDA    #$00
               ADC    #$FF
               EOR    #$FF
               STA    D693D+1
               PHA
L693A          PLA
               PHA
D693C          NOP
D693D          LDA    #$D1
               ADC    #$00
               STA    D70AE,Y
               INY
               PLA
               ADC    D6924+1
               PHA
               LDA    D693D+1
               ADC    D692B+1
               STA    D693D+1
               INX
               TXA
               AND    #$0F
               BNE    L693A
               PLA
               LDA    D6924+1
               CMP    #$77
               BNE    L6964
               INC    D6924+1
L6964          TXA
               BNE    L6921
               RTS
               HEX    B583D005958B4CE56AB586857AB58585
               HEX    79B5928578B5918577B59A0A0AA8B179
               HEX    8D7B6AC8B1798D366AC8B17975969589
               HEX    C8B1797597958A2C366A50069597B589
               HEX    959618B499B177758C1002A900C96090
               HEX    02A95F20026F18B4819875898DD069B5
               HEX    8A75828DD66918A9D169D19589A9D169
               HEX    D1290F958AB5983054F052D698D04E18
               HEX    9875A09581A8B58275A19582B5A29598
               HEX    B5A3D039B5A1101898D5A5B582F5A650
               HEX    024980301C98D5A5D006B582D5A6F011
               HEX    B5A1301998D5A5B582F5A65002498030
               HEX    0CB5A4958CA900959895819582A9D129
               HEX    0F2C7B6A101DA8B59D38500CE90F5002
               HEX    4980100FF69DD00AE9F1500249803003
               HEX    D69D9818759D3007C9109005A90F2CA9
               HEX    008D736AB5800A0A0A0A09D1A8B9AE70
               HEX    958BA9D14AA8B00AB584F006B58B0910
               HEX    958BAD7B6A0A0A0AA9202C366A08101E
               HEX    9809F0B003290F18759B8DAC6A28F002
               HEX    959B18A9D16D9C6E8D9C6E4CC26A9818
               HEX    759C8D726E28F002959CAD366A4A2948
               HEX    09
D6AC9          HEX    D18DC96AF69AB59AD5889004B587959A
               HEX    F699B599D5949004B59395994EC96AB5
               HEX    95F010D695D00CB58349019583A9CAB5
               HEX    9F959560D68E60A200200C6BA228200C
               HEX    6BA250A0008CF86BB58EC902B0E6B58C
               HEX    8D4B6CB5828D7D6CB5818D796CB58D95
               HEX    8EB58F8575B5908576B1758D3D6B290F
               HEX    8D436BA9D129F0D00FA9D18DF86BD023
               HEX    958ECEAC6D4CF66BC910D01AAD436BD0
               HEX    049584F00320036DC8B1754A203368A9
               HEX    0095994CF26BC940B00BAD3D6B69E08D
               HEX    706E4CF26BD009AD436B205D684CF26B
               HEX    C9B0B010AD3D6B69B0958C20286DA901
               HEX    9583D059D01DAD436BF00DE901D00FC8
               HEX    B175958D958EB04195849599F03B2003
               HEX    6DB036C9C0D010AD436BD00795832028
               HEX    6DF02A9580D022C9F0F00DAD3D6B38E9
               HEX    D0F01A2033689011A9009584AD436B20
               HEX    5D68C8B1754A203368C84C266BC8A9D1
               HEX    C901D01995A34A9595B175C895A29598
               HEX    B175C895A0B175C895A14CF46CC902F0
               HEX    034C9F6CA90095A39595B175C895A295
               HEX    98C8C8C8B17508100249FF95A188B175
               HEX    2818100349FF38690095A09002F6A1C8
               HEX    C8A9D120026FADD2698D626CADD8698D
               HEX    696CB58C20026F38E9D195A5ADD869E9
               HEX    D195A6B58C95A4AD4B6C958C
D6C75          HEX    4C806CA9D19581A9D1958238B5A5F581
               HEX    B5A6F5821069B5A049FF18690195A0B5
               HEX    A149FF690095A14CF46CC903D007B175
               HEX    C8959AD04AC904D007B175C89599D03F
               HEX    C905D016B175C8959E9595B175C8959F
               HEX    A900959895819582F025C908D017B175
               HEX    C88DE36E8DEC6EB175C88DF56EB175C8
               HEX    8DFD6ED00AC909D006B175C88DB66D18
               HEX    98758F958FA900759095908576608DD6
               HEX    6EA9788DD86EC8B1758D9F6EC8B1758D
               HEX    9A6EA90195844A95998DE36E8DA66E8D
               HEX    AB6E60A900959A959D959C959B959995
               HEX    989581958295969597959560857C60A0
D6D45          HEX    D1B9C920C9FFF0F40AA818AD67208575
               HEX    AD682069208576B175858FC8B1756920
               HEX    8590C8B17585B7C8B175692085B8C8B1
               HEX    7585DFC8B175692085E0A9008D706EA9
               HEX    038DAC6D60EE456D8DA16D8DA56DADA5
               HEX    6DD00C20446DA57CF00560A9
D6DA1          HEX    D1F0EFA9
D6DA5          HEX    D1D00720006BA9D1F0DBEEA56DADA56D
               HEX    49
D6DB6          HEX    00D0138DA56DEEA16DADA16D4940D006
               HEX    8DA16DEE456DA2008EC96A8E9C6E2068
               HEX    69A228206869A25020686938A5898565
               HEX    A58A8566A58990220A26660A26660A26
               HEX    661865898565A58A65666A66656A6665
               HEX    6A66656A6665290F856638A5B18567A5
               HEX    B28568A5B190220A26680A26680A2668
               HEX    1865B18567A5B265686A66676A66676A
               HEX    66676A6667290F856838A5D98569A5DA
               HEX    856AA5D990220A266A0A266A0A266A18
               HEX    65D98569A5DA656A6A66696A66696A66
               HEX    696A6669290F856A18A9
D6E70          HEX    D169
D6E72          HEX    D1291F856B38900B0A0A0A656B6A6A6A
               HEX    6A291F856BADC96A856CA58B856DA5B3
               HEX    856EA5DB856F18A9
D6E9A          HEX    D169
D6E9C          HEX    D1A8A9
D6E9F          HEX    D16900AA189869
D6EA6          HEX    D185708A69
D6EAB          HEX    D18571389024A8A5700A26710A26710A
               HEX    267118657085709865716A66706A6670
               HEX    6A66706A6670290F8571A9
D6ED6          HEX    D1C9
D6ED8          HEX    D18DD86ED002A9FF8572A9
D6EE3          HEX    D1F01BCEE36ED016A9
D6EEC          HEX    D18DE36E18ADA66E69
D6EF5          HEX    D18DA66EADAB6E69
D6EFD          HEX    D18DAB6E60847EA8AD6320C901D00FB9
               HEX    2A6F8DD869B98A6F8DD269A47E60B9EA
               HEX    6F8DD869B94A708DD269A47E600E0E0D
               HEX    0C0B0B0A090908080707070606050505
               HEX    04040404030303030302020202020202
               HEX    01010101010101010101010100000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000F81060
               HEX    80D82888F060E058E07C08B040EC9444
               HEX    F8B0702CFDBE845820F6CAA27C583816
               HEX    F8DFC2AC907B65513E2C1C0AFCEFE1D6
               HEX    C8BDB2A89F968E857E77706B645E5954
               HEX    4F4B47423F3B3835322F2C2A27252321
               HEX    1F1D1C1A19171615131211100F0D0C0B
               HEX    0A0A0909080807070606060505050404
               HEX    04040303030303020202020202020101
               HEX    01010101010101010101000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000001055A4
               HEX    FC5FCA3DB83BC555EC882AD27E2FE59E
               HEX    5C1DE2AB764415E9BF98724F2E0FF1D5
               HEX    BBA28B74604C39281707F9EBDDD1C5BA
               HEX    B0A69D948C847C756F69635D58534E4A
               HEX    46423E3B3734312F2C29272523211F1D
               HEX    1C1A19171615141211100F0E0D000000
               HEX    00
D70AE          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
SUB71AE        LDA    #$8D
               JSR    COUT
               JSR    SUB71CB
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    D3CFCEC7ACC1A4B2B0B0B08D0060
SUB71CB        PLA
               STA    $02
               PLA
               STA    $03
               LDY    #$01
L71D3          LDA    ($02),Y
               BEQ    L71DD
               JSR    COUT
               INY
               BNE    L71D3
L71DD          CLC
               TYA
               ADC    $02
               STA    $02
               LDA    $03
               ADC    #$00
               PHA
               LDA    $02
               PHA
               RTS
SUB71EC        LDX    #$00
L71EE          LDA    $00,X
               STA    $1000,X
               INX
               BNE    L71EE
               RTS
SUB71F7        LDX    #$00
L71F9          LDA    $1000,X
               STA    $00,X
               INX
               BNE    L71F9
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000000000000000
D7300          HEX    03030303030303030303030404040405
               HEX    0505060606070707080809090A0A0B0B
               HEX    0C0C0D0E0E0F0F101111121313141516
               HEX    16171818191A1B1B1C1D1E1F1F202122
               HEX    2323242526262728292A2A2B2C2D2D2E
               HEX    2F2F3031323233343435363637373839
               HEX    393A3A3B3B3C3C3D3D3E3E3E3F3F3F40
               HEX    40404141414142424242424242424242
               HEX    42424242424242424242424141414140
               HEX    40403F3F3F3E3E3E3D3D3C3C3B3B3A3A
               HEX    3939383737363635343433323231302F
               HEX    2F2E2D2D2C2B2A2A2928272626252423
               HEX    222221201F1F1E1D1C1B1B1A19181817
               HEX    161615141313121111100F0F0E0E0D0C
               HEX    0C0B0B0A0A0909080807070706060605
               HEX    05050404040403030303030303030303
D7400          HEX    131314151516171818191A1A1B1B1C1D
               HEX    1D1E1E1F1F1F20202021212121212121
               HEX    21212121212121212020201F1F1F1E1E
               HEX    1D1D1C1B1B1A1A191818171615151413
               HEX    12121110100F0E0D0D0C0B0B0A0A0908
               HEX    08070706060605050504040404040404
               HEX    04040404040404040505050606060707
               HEX    0808090A0A0B0B0C0D0D0E0F10101112
               HEX    131314151516171818191A1A1B1B1C1D
               HEX    1D1E1E1F1F1F20202021212121212121
               HEX    21212121212121212020201F1F1F1E1E
               HEX    1D1D1C1B1B1A1A191818171615151413
               HEX    12121110100F0E0D0D0C0B0B0A0A0908
               HEX    08070706060605050504040404040404
               HEX    04040404040404040505050606060707
               HEX    0808090A0A0B0B0C0D0D0E0F10101112
D7500          HEX    00000000000000000000000101010202
               HEX    02020201010102020303030303030302
               HEX    02030404040404040404040304040505
               HEX    05050505050404050505050505050505
               HEX    05050606050505050505050606070706
               HEX    06060606060607070808070707070707
               HEX    07080809090908080808080909090A0A
               HEX    0A0A0A0A0A0A0A0A0A
D7579          HEX    000102030405060708090A0001020404
               HEX    05060708090A00010304050505060709
               HEX    0A000203040505050607080A00020304
               HEX    0505050607080A000203040505050607
               HEX    080A000203040505050607080A000203
               HEX    040505050607080A0001030405050506
               HEX    07090A000102040405060708090A0001
               HEX    02030405060708090A00000000000000
               HEX    00000102020203020202010203030303
               HEX    03030302030304040404040303040404
               HEX    04040404040405050404040404050506
               HEX    05050505050505060706060606060606
               HEX    07080808080808080808000102030405
               HEX    06070800020303040505060800020304
               HEX    04040506080002030404040506080003
               HEX    03040404050608000203040404050608
               HEX    00020304040405060800020303040505
               HEX    0608000102030405060708
D7694          HEX    00000001010101010000000000010000
               HEX    00000001000000010000000000000001
               HEX    00010000000000000000000101000000
               HEX    00000000000001010000000000000000
               HEX    00010100000000000000000001010000
               HEX    00000000000000010001000000000000
               HEX    00010000000100000000000100000000
               HEX    00010101010100000000000000000000
               HEX    00000101010202020101010202030303
               HEX    03030202030303030303030303040404
               HEX    04040404040405050505050505050506
               HEX    06050505050506060707070606060707
               HEX    07080808080808080808000102030405
               HEX    06070800010203040506070800010303
               HEX    04050507080002030304050506080002
               HEX    03030405050608000203030405050608
               HEX    00010303040505070800010203040506
               HEX    07080001020304050607080000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000
D7800          HEX    99999999990000000099999999999999
               HEX    11111111110000000011111111111111
               HEX    11111111111100000000111111111111
               HEX    33333333333333000000003333333333
               HEX    33333333333300000000000033333333
               HEX    66666666660000000000000000666666
               HEX    00006666000000000000000000006666
               HEX    000000000000CCDD9900000000000000
               HEX    0000CC00000000113366000000000000
               HEX    00CCCC00000000000000000000000000
               HEX    CCCC0000000000000000000000000000
               HEX    CC00CCCCCC00000000000000CCCCCC00
               ASC    "LLLLLLL"
               HEX    00000000CCCCCCCCCCDDDDDDDDDDDD00
               HEX    000000DDDDDDDDDDDDDDDDDDDDDD0000
               HEX    0000DDDDDDDDDDDDDD99999999990000
               HEX    00009999999999999999999999999999
               HEX    00000000999999999911111111111111
               HEX    00000000111111111111111111111100
               HEX    00000011111111111133333333330000
               HEX    00003333333333333333333333000000
               HEX    00000033333333333366666600000000
               HEX    00000000666666666666660000000000
               HEX    000000000066660000000000000000CC
               HEX    DD990000000000000000000000000000
               HEX    113366000000CC000000000000000000
               HEX    000000000000CCCC0000000000000000
               HEX    00000000000000CCCC00CCCCCC000000
               HEX    00000000CCCCCC00CCCCCCCCCCCC0000
               HEX    0000CCCCCCCCCCCCCCDDDDDDDDDDDD00
               HEX    000000DDDDDDDDDDDDDDDDDDDDDDDDDD
               HEX    00000000DDDDDDDDDD99999999999999
               HEX    000000009999999999
D7A00          ASC    "LLLLL"
               HEX    00000000CCCCCCCCCCCCCC8888888888
               HEX    00000000888888888888888888888888
               HEX    88000000008888888888889999999999
               HEX    99990000000099999999999999999999
               HEX    99000000000000999999993333333333
               HEX    00000000000000003333330000333300
               HEX    00000000000000000033330000000000
               HEX    0066EECC000000000000000000660000
               HEX    00008899330000000000000066660000
               HEX    00000000000000000000006666000000
               HEX    00000000000000000000006600666666
               HEX    00000000000000666666006666666666
               HEX    6666000000006666666666EEEEEEEEEE
               HEX    EE00000000EEEEEEEEEEEEEEEEEEEEEE
               HEX    00000000EEEEEEEEEEEEEECCCCCCCCCC
               HEX    00000000CCCCCCCCCCCCCCCCCCCCCCCC
               HEX    CCCC00000000CCCCCCCCCC8888888888
               HEX    88880000000088888888888888888888
               HEX    88000000008888888888889999999999
               HEX    00000000999999999999999999999900
               HEX    00000000009999999999993333330000
               HEX    00000000000033333333333333000000
               HEX    00000000000000333300000000000000
               HEX    0066EECC000000000000000000000000
               HEX    00008899330000006600000000000000
               HEX    00000000000000006666000000000000
               HEX    00000000000000000066660066666600
               HEX    00000000000066666600666666666666
               HEX    0000000066666666666666EEEEEEEEEE
               HEX    EE00000000EEEEEEEEEEEEEEEEEEEEEE
               HEX    EEEE00000000EEEEEEEEEECCCCCCCCCC
               HEX    CCCC00000000CCCCCCCCCC00
D7C01          HEX    00
D7C02          HEX    00
D7C03          HEX    00
D7C04          HEX    00
D7C05          HEX    00000000000000000000000000000000
               HEX    00000000
D7C19          HEX    00
D7C1A          HEX    00
D7C1B          HEX    000000
D7C1E          HEX    01
SUB7C1F        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB82C6
               JSR    SUB8620
               JSR    SUB8353
               JSR    SUB8649
               LDA    #$01
               STA    D7C01
               LDA    #$2F
               STA    D7C1B
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    $03EA
               RTS
SUB7C5B        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               LDX    #$00
               JSR    $FE95
               RTS
               HEX    AD017CC903D029A200A9009D000C9D00
               HEX    0D9D000E9D000FE8D0F18D05C09D000C
               HEX    9D000D9D000E9D000FE8D0F18D04C060
               HEX    A623BD3087A8AD017CC902F0109820C6
               HEX    82AD1B7CC927F0049820728660982053
               HEX    83AD1B7CC927F00498209F8660A5214A
               HEX    AABD40878540BD00868541A5202C1E7C
               HEX    D0284AA88D03C0B1408D02C0AABD0085
               HEX    8529A5212901F00BA52929F04A4A4A4A
               HEX    852960A529290F8529604AA8B1408529
               HEX    A5212901F00BA52929F04A4A4A4A8529
               HEX    60A529290F852960A520EAC950900160
               HEX    A521CD1B7CF003900160
SUB7D43        LDA    $23
               STA    $24
               LDA    $21
               LSR
               TAX
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               LDX    $23
               LDA    $20
               BIT    D7C1E
               BNE    L7D9A
               LSR
               TAY
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               STA    $25
               LDA    D8400,X
               STA    $24
               LDA    $21
               AND    #$01
               BEQ    L7D87
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    D8720,X
               TAX
               LDA    D8400,X
               STA    $24
               JMP    L7D8D
L7D87          LDA    $25
               AND    #$F0
               STA    $25
L7D8D          LDA    $24
               ORA    $25
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               RTS
L7D9A          LSR
               TAY
               LDA    ($40),Y
               STA    $25
               LDA    $21
               AND    #$01
               BEQ    L7DB4
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    D8720,X
               STA    $24
               JMP    L7DBA
L7DB4          LDA    $25
               AND    #$F0
               STA    $25
L7DBA          LDA    $24
               ORA    $25
               STA    ($40),Y
               RTS
SUB7DC1        LDX    #$00
               STX    $22
               STX    $0301
               STX    $0302
               LDA    #$00
               STA    D7C05
               STA    D7C04
               STA    $10
               STA    $11
               STA    $3C
               LDA    #$60
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$8F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$60
               STA    $43
               SEC
               JMP    $C311
               HEX    60A520C5279011A62785278620A521A6
               HEX    28852886214C1D7EA521C528900EA628
               HEX    85288621A627A52085278620A52038E5
               HEX    27F01AB02049FF1869018D097CA5208D
               HEX    067CA5218D087C38E5284C567E208381
               HEX    6020D680608D097CA5278D067CA5288D
               HEX    087C38E521B00B49FF69018D0B7CA9EE
               HEX    D007F0DD8D0B7CA9CE8DAF7E8DE57EAD
               HEX    097CCD0B7CB0034CB57E18690185263A
               HEX    4A8D0E7C4C907E608D0E7CC626F0F8AD
               HEX    067C8520AD087C852120437DEE067CAD
               HEX    0E7C38ED0B7CB0E06D097C8D0E7CEE08
               HEX    7C4C8C7EA621EC087CD002A6288EE27E
               HEX    AD0B7C4A8D0E7CAE087C4CD17E8D0E7C
               HEX    AD067C8520AD087C852120437DAD087C
               HEX    C900F017EE087CAD0E7C38ED097CB0DD
               HEX    6D0B7C8D0E7CEE067CD0D5608D05C0A2
               HEX    00A900853E8A186910853FA900A00091
               HEX    3EC8C05090F9E8E03090E68D04C0A900
               HEX    853EA940853FAD177C8520AD187C8521
               HEX    20D67CA5298D157CA000AD177C8D05C0
               HEX    913EC8AD187C913E8D04C018A53E6902
               HEX    853EA53F6900853FA53ED007A53FC940
               HEX    D0016038A53EE902853EA53FE900853F
               HEX    A0008D03C0B13E8D02C085388520853A
               HEX    C88D03C0B13E8D02C085398521186910
               HEX    853B8D03C0B23A8D02C0D0BC20437DA9
               HEX    028D05C0923A8D04C0A539CD1B7CB035
               HEX    1869018521A538852020D67CA529CD15
               HEX    7CD022C523F01EA000A5388D05C0913E
               HEX    C8A521913E8D04C018A53E6902853EA5
               HEX    3F6900853FA539F0333A8521A5388520
               HEX    20D67CA529CD157CD022C523F01EA000
               HEX    A5388D05C0913EC8A521913E8D04C018
               HEX    A53E6902853EA53F6900853FA538C94F
               HEX    B0351869018520A539852120D67CA529
               HEX    CD157CD022C523F01EA000A5208D05C0
               HEX    913EC8A539913E8D04C018A53E690285
               HEX    3EA53F6900853FA538F0333A8520A539
               HEX    852120D67CA529CD157CD022C523F01E
               HEX    A000A5208D05C0913EC8A539913E8D04
               HEX    C018A53E6902853EA53F6900853F4C59
               HEX    7FA520EAC527900AF03AA6278D1A7C8E
               HEX    197CA5201007A20086204CB680C95090
               HEX    04A94F8520A5271007A20086274CC980
               HEX    C9509004A94F8527A521100160CD1B7C
               HEX    F003900160
SUB80D6        LDA    $20
               CMP    $27
               BCC    L80EC
               BEQ    L80E9
               LDX    $27
               STA    D7C1A
               STX    D7C19
               JMP    L80F4
L80E9          JMP    SUB7D43
L80EC          STA    D7C19
               LDA    $27
               STA    D7C1A
L80F4          SEC
               SBC    D7C19
               CLC
               ADC    #$01
               STA    D7C02
               INC    D7C1A
               LDA    $21
               LSR
               TAX
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               LDA    $21
               BIT    D7C1E
               BEQ    L8119
               JMP    L812E
L8119          LDA    $23
               STA    $24
               TAX
               LDA    D8400,X
               STA    $25
               LDA    #$F0
               STA    D8155+1
               STA    D8171+1
               JMP    L8143
L812E          LDX    $23
               LDA    D8720,X
               STA    $24
               TAX
               LDA    D8400,X
               STA    $25
               LDA    #$0F
               STA    D8155+1
               STA    D8171+1
L8143          LDA    D7C19
               BIT    D7C1E
               BNE    L816D
               LSR
               TAY
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
D8155          AND    #$F0
               ORA    $25
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               INC    D7C19
               LDA    D7C19
               CMP    D7C1A
               BCC    L8143
               RTS
L816D          LSR
               TAY
               LDA    ($40),Y
D8171          AND    #$F0
               ORA    $24
               STA    ($40),Y
               INC    D7C19
               LDA    D7C19
               CMP    D7C1A
               BCC    L8143
               RTS
SUB8183        LDA    $21
               CMP    $28
               BCC    L8197
               BEQ    L8194
               LDX    $28
               STA    $28
               STX    $21
               JMP    L8197
L8194          JMP    SUB7D43
L8197          LDA    $28
               SEC
               SBC    $21
               CLC
               ADC    #$01
               STA    D7C02
               LDA    $20
               BIT    D7C1E
               BEQ    L81AC
               JMP    L8252
L81AC          LSR
               TAY
               LDA    $21
               LSR
               STA    D7C03
               LDA    $21
               BIT    D7C1E
               BEQ    L81F1
               LDX    D7C03
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               TAX
               LDA    D8500,X
               AND    #$0F
               STA    $25
               LDX    $23
               LDA    D8720,X
               ORA    $25
               TAX
               LDA    D8400,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               INC    D7C03
               DEC    D7C02
L81F1          LDA    D7C02
               CMP    #$02
               BCC    L8222
               LDX    D7C03
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               LDX    $23
               LDA    D8730,X
               TAX
               LDA    D8400,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               DEC    D7C02
               DEC    D7C02
               INC    D7C03
               JMP    L81F1
L8222          LDA    D7C02
               BNE    L8228
               RTS
L8228          LDX    D7C03
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               TAX
               LDA    D8500,X
               AND    #$F0
               ORA    $23
               TAX
               LDA    D8400,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               RTS
L8252          LSR
               TAY
               LDA    $21
               LSR
               STA    D7C03
               LDA    $21
               BIT    D7C1E
               BEQ    L8283
               LDX    D7C03
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               LDA    ($40),Y
               AND    #$0F
               STA    $25
               LDX    $23
               LDA    D8720,X
               ORA    $25
               STA    ($40),Y
               INC    D7C03
               DEC    D7C02
L8283          LDA    D7C02
               CMP    #$02
               BCC    L82AA
               LDX    D7C03
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               LDX    $23
               LDA    D8730,X
               STA    ($40),Y
               DEC    D7C02
               DEC    D7C02
               INC    D7C03
               JMP    L8283
L82AA          LDA    D7C02
               BNE    L82B0
               RTS
L82B0          LDX    D7C03
               LDA    D8740,X
               STA    $40
               LDA    D8600,X
               STA    $41
               LDA    ($40),Y
               AND    #$F0
               ORA    $23
               STA    ($40),Y
               RTS
SUB82C6        LDX    #$28
L82C8          DEX
               STA    $0400,X
               STA    $0480,X
               STA    $0500,X
               STA    $0580,X
               STA    $0600,X
               STA    $0680,X
               STA    $0700,X
               STA    $0780,X
               STA    $0428,X
               STA    $04A8,X
               STA    $0528,X
               STA    $05A8,X
               STA    $0628,X
               STA    $06A8,X
               STA    $0728,X
               STA    $07A8,X
               STA    $0450,X
               STA    $04D0,X
               STA    $0550,X
               STA    $05D0,X
               BNE    L82C8
               TAX
               LDA    D8400,X
               LDX    #$28
L830D          DEX
               STA    RAMWRTON
               STA    $0400,X
               STA    $0480,X
               STA    $0500,X
               STA    $0580,X
               STA    $0600,X
               STA    $0680,X
               STA    $0700,X
               STA    $0780,X
               STA    $0428,X
               STA    $04A8,X
               STA    $0528,X
               STA    $05A8,X
               STA    $0628,X
               STA    $06A8,X
               STA    $0728,X
               STA    $07A8,X
               STA    $0450,X
               STA    $04D0,X
               STA    $0550,X
               STA    $05D0,X
               STA    RAMWRTOFF
               BNE    L830D
               RTS
SUB8353        LDX    #$28
L8355          DEX
               STA    $0800,X
               STA    $0880,X
               STA    $0900,X
               STA    $0980,X
               STA    $0A00,X
               STA    $0A80,X
               STA    $0B00,X
               STA    $0B80,X
               STA    $0828,X
               STA    $08A8,X
               STA    $0928,X
               STA    $09A8,X
               STA    $0A28,X
               STA    $0AA8,X
               STA    $0B28,X
               STA    $0BA8,X
               STA    $0850,X
               STA    $08D0,X
               STA    $0950,X
               STA    $09D0,X
               BNE    L8355
               TAX
               LDA    D8400,X
               LDX    #$28
L839A          DEX
               STA    RAMWRTON
               STA    $0800,X
               STA    $0880,X
               STA    $0900,X
               STA    $0980,X
               STA    $0A00,X
               STA    $0A80,X
               STA    $0B00,X
               STA    $0B80,X
               STA    $0828,X
               STA    $08A8,X
               STA    $0928,X
               STA    $09A8,X
               STA    $0A28,X
               STA    $0AA8,X
               STA    $0B28,X
               STA    $0BA8,X
               STA    $0850,X
               STA    $08D0,X
               STA    $0950,X
               STA    $09D0,X
               STA    RAMWRTOFF
               BNE    L839A
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D8400          HEX    00080109020A030B040C050D060E070F
               HEX    80888189828A838B848C858D868E878F
               HEX    10181119121A131B141C151D161E171F
               HEX    90989199929A939B949C959D969E979F
               HEX    20282129222A232B242C252D262E272F
               HEX    A0A8A1A9A2AAA3ABA4ACA5ADA6AEA7AF
               HEX    30383139323A333B343C353D363E373F
               HEX    B0B8B1B9B2BAB3BBB4BCB5BDB6BEB7BF
               ASC    '@HAIBJCKDLEMFNGO'
               ASC    "@HAIBJCKDLEMFNGO"
               HEX    50585159525A535B545C555D565E575F
               HEX    D0D8D1D9D2DAD3DBD4DCD5DDD6DED7DF
               ASC    '`haibjckdlemfngo'
               ASC    "`haibjckdlemfngo"
               HEX    70787179727A737B747C757D767E777F
               HEX    F0F8F1F9F2FAF3FBF4FCF5FDF6FEF7FF
D8500          HEX    00020406080A0C0E01030507090B0D0F
               HEX    20222426282A2C2E21232527292B2D2F
               ASC    '@BDFHJLNACEGIKMO`bdfhjlnacegikmo'
               HEX    80828486888A8C8E81838587898B8D8F
               HEX    A0A2A4A6A8AAACAEA1A3A5A7A9ABADAF
               ASC    "@BDFHJLNACEGIKMO`bdfhjlnacegikmo"
               HEX    10121416181A1C1E11131517191B1D1F
               HEX    30323436383A3C3E31333537393B3D3F
               HEX    50525456585A5C5E51535557595B5D5F
               HEX    70727476787A7C7E71737577797B7D7F
               HEX    90929496989A9C9E91939597999B9D9F
               HEX    B0B2B4B6B8BABCBEB1B3B5B7B9BBBDBF
               HEX    D0D2D4D6D8DADCDED1D3D5D7D9DBDDDF
               HEX    F0F2F4F6F8FAFCFEF1F3F5F7F9FBFDFF
D8600          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
SUB8620        LDX    #$28
L8622          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L8622
               LDX    #$28
L8633          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L8633
               RTS
SUB8649        LDX    #$28
L864B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L864B
               LDX    #$28
L865C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L865C
               RTS
               HEX    A228CA9D50069DD0069D50079DD007D0
               HEX    F1AABD0084A228CA8D05C09D50069DD0
               HEX    069D50079DD0078D04C0D0EB60A228CA
               HEX    9D500A9DD00A9D500B9DD00BD0F1AABD
               HEX    0084A228CA8D05C09D500A9DD00A9D50
               HEX    0B9DD00B8D04C0D0EB60000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000808
               HEX    09090A0A0B0B080809090A0A0B0B0808
               HEX    09090A0A0B0B080809090A0A0B0B
D8720          HEX    00102030405060708090A0B0C0D0E0F0
D8730          HEX    00112233445566778899AABBCCDDEEFF
D8740          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D078F878F878F878F8
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0C0C0D0D0E0E0F0F0C0C0D0D0E0E0F0F
               HEX    0C0C0D0D0E0E0F0F0C0C0D0D0E0E0F0F
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    1D1E1F20212223241D1E1F2021222324
               HEX    3231302F2E2D2C2B3231302F2E2D2C2B
               HEX    1D1E1F20212223241D1E1F2021222324
               HEX    3231302F2E2D2C2B3231302F2E2D2C2B
               HEX    1D1E1F20212223241D1E1F2021222324
               HEX    3231302F2E2D2C2B3231302F2E2D2C2B
               HEX    1D1E1F20212223241D1E1F2021222324
               HEX    3231302F2E2D2C2B3231302F2E2D2C2B
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    06060606060606060707070707070707
               HEX    06060606060606060707070707070707
               HEX    04040404040404040505050505050505
               HEX    04040404040404040505050505050505
               HEX    03030303030303030202020202020202
               HEX    03030303030303030202020202020202
               HEX    08080808080808080909090909090909
               HEX    08080808080808080909090909090909
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000
