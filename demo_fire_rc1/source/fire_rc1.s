************************************************************
* fire_rc1 - FIRE (disassembly)
*
* Disassembled from the original binary (10136 bytes, $6000-$8797).
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
               JSR    SUB67AD
               JSR    SUB62FC
               JSR    SUB72EB
               JSR    SUB67F5
               JSR    SUB6804
               JSR    SUB6847
               JSR    SUB6888
               JSR    SUB6612
               JSR    SUB7329
               LDA    $0370
               BNE    L6027
               JMP    L6034
L6027          JSR    SUB6649
               JSR    SUB674A
               JSR    SUB6945
               JSR    SUB69C7
               CLI
L6034          LDA    #$00
               STA    $0325
               STA    $10
               STA    $0320
               INC    $0320
               LDA    STROBE
               JSR    SUB78CD
               JSR    SUB772B
               LDA    #$0D
               JSR    SUB6372
               LDA    $0370
               BEQ    L6054
L6054          JSR    SUB62AB
               INC    $11
               LDA    #$4F
               STA    $0300
               LDA    #$0F
               STA    $19
               LDA    #$10
               STA    $1B
               STZ    $1E
               STZ    $1F
               LDA    #$07
               STA    $13
               STZ    $0F
               STZ    $0E
               LDA    STROBE
L6075          LDX    #$FE
L6077          LDA    $1100,X
               BEQ    L60A7
               TAY
               LDA    $0300
               ASL
               BCC    L6085
               EOR    #$A9
L6085          STA    $0300
               CMP    #$A0
               BCS    L60A6
               BRA    L60A2
               HEX    C980B0108E0C778A186910AABD0012AE
               HEX    0C778005
L60A2          TYA
               DEC
               BRA    L60A7
L60A6          TYA
L60A7          INX
               STA    $1100,X
               DEX
               LDA    $1200,X
               BEQ    L60DC
               TAY
               LDA    $0300
               ASL
               BCC    L60BA
               EOR    #$A9
L60BA          STA    $0300
               CMP    #$A0
               BCS    L60DB
               BRA    L60D7
               HEX    C980B0108E0C778A186910AABD0011AE
               HEX    0C778005
L60D7          TYA
               DEC
               BRA    L60DC
L60DB          TYA
L60DC          INX
               STA    $1200,X
               DEX
               DEX
               TXA
               AND    #$0F
               CMP    #$0F
               BNE    L60EA
               DEX
L60EA          CPX    #$FE
               BNE    L6077
               LDX    $0F
               LDA    D76D8,X
               STA    $19
               LDX    $0E
               LDA    D76EE,X
               STA    $1B
               INC    $0F
               LDA    $0F
               CMP    #$15
               BNE    L6106
               STZ    $0F
L6106          INC    $0E
               LDA    $0E
               CMP    #$1F
               BNE    L6110
               STZ    $0E
L6110          LDX    #$0C
               STZ    $12
               STZ    $18
               STZ    $1D
               LDA    $19
               CLC
               ADC    #$0B
               STA    $1A
               INC    $1A
               LDA    $1B
               SEC
               SBC    #$03
               STA    $1C
L6128          LDY    #$10
L612A          PHY
               PHX
               LDA    $1E
               BEQ    L6144
               TXA
               CMP    $19
               BCC    L6144
               CMP    $1A
               BCS    L6144
               TYA
               CMP    $1C
               BCC    L6144
               CMP    $1B
               BCS    L6144
               INC    $1D
L6144          LDX    $12
               LDA    $1200,X
               STA    $16
               LDA    $1100,X
               TAX
               LDA    D734F,X
               STA    $14
               LDX    $16
               LDA    D735F,X
               STA    $16
               INC    $12
               LDX    $12
               LDA    $1200,X
               STA    $17
               LDA    $1100,X
               TAX
               LDA    D7347,X
               CLC
               ADC    $14
               STA    $15
               LDX    $17
               LDA    D7357,X
               CLC
               ADC    $16
               STA    $17
               INC    $12
               TYA
               TAX
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               PLX
               TXA
               PHX
               TAY
               LDA    $1D
               BEQ    L61A1
               LDX    $18
               LDA    D7648,X
               LDX    $15
               AND    D7400,X
               CLC
               ADC    $15
               INC    $18
               BRA    L61A3
L61A1          LDA    $15
L61A3          STA    ($40),Y
               LDA    $1D
               BEQ    L61BC
               LDX    $18
               LDA    D7648,X
               LDX    $17
               AND    D7400,X
               CLC
               ADC    $17
               STZ    $1D
               INC    $18
               BRA    L61BE
L61BC          LDA    $17
L61BE          STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               PLX
               PLY
               DEY
               CPY    #$08
               BEQ    L61D0
               JMP    L612A
L61D0          INX
               CPX    #$1C
               BEQ    L61D8
               JMP    L6128
L61D8          INC    $0300
               LDA    #$14
               JSR    WAIT
               LDA    KEYBD
               BPL    L623C
               BIT    STROBE
               CMP    #$D1
               BEQ    L623F
               CMP    #$D2
               BNE    L61F3
               JMP    L623C
L61F3          CMP    #$D4
               BNE    L6210
               LDA    $11
               BNE    L623C
               LDA    $0320
               BEQ    L6208
               DEC    $0320
               JSR    SUB62D0
               BRA    L623C
L6208          INC    $0320
               JSR    SUB62E6
               BRA    L623C
L6210          CMP    #$CE
               BNE    L6227
               LDA    $11
               BNE    L623C
               LDA    $13
               CMP    #$03
               BEQ    L623C
               DEC    $13
               LDA    $13
               JSR    SUB64A1
               BRA    L623C
L6227          CMP    #$CD
               BNE    L623C
               LDA    $11
               BNE    L623C
               LDA    $13
               CMP    #$07
               BEQ    L623C
               INC    $13
               LDA    $13
               JSR    SUB64A1
L623C          JMP    L6075
L623F          LDA    STROBE
               JSR    SUB7767
               LDA    #$0E
               STA    $24
               LDX    #$22
               LDY    #$65
               JSR    SUB68B6
               JSR    SUB68B0
               JSR    SUB68B0
               JSR    SUB68B0
               JSR    SUB68B0
               JSR    SUB68B0
               JSR    SUB68B0
               JSR    SUB68B0
               LDA    #$06
               STA    $24
               LDX    #$F6
               LDY    #$65
               JSR    SUB68B6
               JSR    SUB68B0
               JSR    SUB68B0
               JSR    SUB68B0
               JSR    SUB68B0
               LDA    #$0D
               STA    $24
               LDX    #$E8
               LDY    #$65
               JSR    SUB68B6
               JSR    SUB68B0
L628A          LDA    KEYBD
               BPL    L628A
               LDA    STROBE
               SEI
               JSR    SUB66E2
               JSR    SUB7334
               JMP    $03D0
               HEX    60AD00030A9002491D8D0003290160
SUB62AB        LDX    #$00
               LDA    #$00
L62AF          STA    $1100,X
               STA    $1200,X
               TAY
               TXA
               AND    #$0F
               BNE    L62C3
               LDA    #$03
               STA    $1100,X
               STA    $1200,X
L62C3          TYA
               INX
               BNE    L62AF
               LDA    #$03
               STA    $1100
               STA    $1200
               RTS
SUB62D0        LDX    #$00
L62D2          TXA
               ASL
               ASL
               ASL
               ASL
               TAY
               LDA    #$00
               STA    $1100,Y
               STA    $1200,Y
               INX
               CPX    #$10
               BNE    L62D2
               RTS
SUB62E6        LDX    #$00
L62E8          TXA
               ASL
               ASL
               ASL
               ASL
               TAY
               LDA    $13
               STA    $1100,Y
               STA    $1200,Y
               INX
               CPX    #$10
               BNE    L62E8
               RTS
SUB62FC        JSR    SETTXT
               JSR    HOME
               LDA    #$00
               STA    $0325
               LDA    #$0E
               STA    $24
               LDX    #$22
               LDY    #$65
               JSR    SUB68B6
               LDA    #$50
               STA    $0325
               LDA    #$10
               STA    $24
               LDA    #$12
               STA    $25
               JSR    VTAB
               LDX    #$64
               LDY    #$65
               JSR    SUB68B6
               LDA    #$04
               STA    $24
               LDA    #$14
               STA    $25
               JSR    VTAB
               LDX    #$85
               LDY    #$65
               JSR    SUB68B6
               LDA    #$04
               STA    $24
               LDA    #$15
               STA    $25
               JSR    VTAB
               LDX    #$A1
               LDY    #$65
               JSR    SUB68B6
               LDA    #$04
               STA    $24
               LDA    #$16
               STA    $25
               JSR    VTAB
               LDX    #$6D
               LDY    #$65
               JSR    SUB68B6
               LDA    #$0B
               STA    $24
               LDA    #$0A
               STA    $25
               JSR    VTAB
               LDX    #$4F
               LDY    #$65
               JSR    SUB68B6
               RTS
SUB6372        STA    $23
               LDA    #$00
               STA    $20
               STA    $21
               LDA    #$4F
               STA    $27
               JSR    SUB7BE2
               LDA    #$2F
               STA    $21
               STA    $28
               JSR    SUB7BE2
               LDA    #$00
               STA    $21
               STA    $20
               JSR    SUB7C8F
               LDA    #$4F
               STA    $20
               JSR    SUB7C8F
               RTS
               HEX    EE0003A51EC901905AE610A510C908D0
               HEX    52A51EC905D045A51FD014A9768D9461
               HEX    8DAD61A9008D93618DAC61E61F802AC9
               HEX    01D014A9768D94618DAD61A9488D9361
               HEX    8DAC61E61F8012A9768D94618DAD61A9
               HEX    908D93618DAC61641F641060E61EC61B
               HEX    641060A511D00160E610A510C9F0F001
               HEX    60A200FE0011FE0012A210FE0011FE00
               HEX    12A220FE0011FE0012A230FE0011FE00
               HEX    12A240FE0011FE0012A250FE0011FE00
               HEX    12A260FE0011FE0012A270FE0011FE00
               HEX    12A280FE0011FE0012A290FE0011FE00
               HEX    12A2A0FE0011FE0012A2B0FE0011FE00
               HEX    12A2C0FE0011FE0012A2D0FE0011FE00
               HEX    12A2E0FE0011FE0012A2F0FE0011FE00
               HEX    12A9008510E611A511C905D008A90085
               HEX    11A901851E60
SUB64A1        LDX    #$00
               STA    $1100,X
               STA    $1200,X
               LDX    #$10
               STA    $1100,X
               STA    $1200,X
               LDX    #$20
               STA    $1100,X
               STA    $1200,X
               LDX    #$30
               STA    $1100,X
               STA    $1200,X
               LDX    #$40
               STA    $1100,X
               STA    $1200,X
               LDX    #$50
               STA    $1100,X
               STA    $1200,X
               LDX    #$60
               STA    $1100,X
               STA    $1200,X
               LDX    #$70
               STA    $1100,X
               STA    $1200,X
               LDX    #$80
               STA    $1100,X
               STA    $1200,X
               LDX    #$90
               STA    $1100,X
               STA    $1200,X
               LDX    #$A0
               STA    $1100,X
               STA    $1200,X
               LDX    #$B0
               STA    $1100,X
               STA    $1200,X
               LDX    #$C0
               STA    $1100,X
               STA    $1200,X
               LDX    #$D0
               STA    $1100,X
               STA    $1200,X
               LDX    #$E0
               STA    $1100,X
               STA    $1200,X
               LDX    #$F0
               STA    $1100,X
               STA    $1200,X
               RTS
               HEX    B8ADC2C9D4ADD3C8C1C3CB00D0F2E5F3
               ASC    "s a key to start the demo..."
               HEX    00CCEFE1E4E9EEE7A0E4E5EDEFA0E4E1
               HEX    F4E1AEAEAE00CFF0F4E9EFEEF3BA00A0
               ASC    " <Q>:   Quit FIRE-Demo"
               HEX    00A0A0BCD4BEBAA0A0A0D4EFE7E7ECE5
               ASC    " fire ON/OFF"
               HEX    00A0A0BCCDAFCEBEBAA0C9EEE3F2E5E1
               ASC    "se/Decrease heat"
               HEX    00CDC5D2D2D9A0D8ADCDC1D3A0B2B0B2
               ASC    "0 AND A HAPPY NEW YEAR!"
               HEX    00BCD0D2C5D3D3A0C1A0CBC5D9BE00CD
               ASC    "ORE INFO: WWW.GOLOMBECK.EU"
               HEX    00
SUB6612        LDA    #$00
               STA    $08
L6616          LDA    #$07
               STA    $0371
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L6623          LDA    ($08),Y
               STA    $10
               LDA    ($08),Y
               SEC
               SBC    $10
               CMP    #$F8
               BEQ    L6638
               CMP    #$F9
               BEQ    L6638
               CMP    #$F7
               BNE    L6640
L6638          DEX
               BNE    L6623
               INX
L663C          STX    $0370
               RTS
L6640          DEC    L6616+1
               BNE    L6616
               LDX    #$00
               BEQ    L663C
SUB6649        LDA    $09
               STA    D66C2+2
               STA    D66C5+2
               STA    D66C8+2
               STA    D66CB+2
               STA    D66D0+2
               STA    D66D5+2
               STA    D66DA+2
               STA    D66DF+2
               STA    D6719+2
               STA    D671E+2
               STA    D6721+2
               STA    D6726+2
               STA    D672B+2
               STA    D6734+2
               STA    D6739+2
               STA    D673C+2
               STA    D6741+2
               STA    D6746+2
               STA    D66F9+2
               STA    D66FE+2
               STA    D6703+2
               STA    D6706+2
               STA    D670B+2
               STA    D6710+2
               STA    D6910
               STA    D6913
               STA    D6918
               STA    D691B
               STA    D6920
               STA    D6923
               STA    D6926
               STA    D6929
               STA    D692E
               STA    D6931
               STA    D6934
               STA    D6937
               STA    SUB6714+2
               STA    SUB672F+2
               STA    D68E9
               LDA    #$FF
D66C2          STA    $C402
D66C5          STA    $C403
D66C8          STA    $C482
D66CB          STA    $C483
               LDA    #$00
D66D0          STA    $C400
               LDA    #$04
D66D5          STA    $C400
               LDA    #$00
D66DA          STA    $C480
               LDA    #$04
D66DF          STA    $C480
SUB66E2        LDY    #$0E
               LDX    #$00
L66E6          JSR    SUB672F
               DEY
               BPL    L66E6
               LDY    #$0E
               LDX    #$00
L66F0          JSR    SUB6714
               DEY
               BPL    L66F0
               SEI
               LDA    #$40
D66F9          STA    $C40B
               LDA    #$7F
D66FE          STA    $C40E
               LDA    #$C0
D6703          STA    $C40D
D6706          STA    $C40E
               LDA    #$E7
D670B          STA    $C404
               LDA    #$4F
D6710          STA    $C405
               RTS
SUB6714        STY    $C401
               LDA    #$07
D6719          STA    $C400
               LDA    #$04
D671E          STA    $C400
D6721          STX    $C401
               LDA    #$06
D6726          STA    $C400
               LDA    #$04
D672B          STA    $C400
               RTS
SUB672F        STY    $C481
               LDA    #$07
D6734          STA    $C480
               LDA    #$04
D6739          STA    $C480
D673C          STX    $C481
               LDA    #$06
D6741          STA    $C480
               LDA    #$04
D6746          STA    $C480
               RTS
SUB674A        LDA    $0372
               CMP    #$FF
               BEQ    L6775
               CMP    #$EA
               BEQ    L6764
               CMP    #$38
               BEQ    L6764
               LDA    #$E3
               STA    $03FE
               LDA    #$68
               STA    $03FF
               RTS
L6764          LDA    $C083
               LDA    $C083
               LDA    #$E3
               STA    $FFFE
               LDA    #$68
               STA    $FFFF
               RTS
L6775          LDA    #$C0
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
               LDA    #$E3
               STA    $03C7
               LDA    #$68
               STA    $03C8
               RTS
SUB67AD        LDA    #$FF
               STA    $07
               LDA    $FBB3
               CMP    #$06
               BEQ    L67C0
               STA    $0372
               LDA    #$DF
               STA    $07
               RTS
L67C0          LDA    $FBC0
               BEQ    L67F1
               SEC
               JSR    $FE1F
               BCS    L67EB
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
L67EB          LDA    #$7F
               STA    $0372
               RTS
L67F1          STA    $0372
               RTS
SUB67F5        LDA    #$00
               BRA    L67FB
               HEX    F005
L67FB          INC
               HEX    EB3AEB1A8D780360
SUB6804        LDA    #$5A
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               LDX    #$00
L6814          LDA    D681A,X
               INX
               BNE    L6814
D681A          LDA    AN2OFF
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L6841
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L6841
               LDA    #$00
               STA    AN1OFF
               LDA    #$A5
               STA    AN1OFF
               LDA    #$01
               STA    $0374
               RTS
L6841          LDA    #$00
               STA    $0374
               RTS
SUB6847        LDA    $0372
               LDX    #$00
               CMP    #$7F
               BEQ    L6852
               BNE    L6883
L6852          LDY    #$04
               LDA    #$6A
L6856          STA    $C06A
               DEY
               BNE    L6856
               LDA    #$00
               STA    $C06B
               LDY    $C06B
               CPY    #$80
               BNE    L6883
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
L6883          TXA
               STA    $0375
               RTS
SUB6888        LDA    $C083
               LDA    $C083
               LDA    $D000
               INC    $D000
               CMP    $D000
               BEQ    L68A4
               DEC    $D000
               LDA    #$01
               STA    $0376
               JMP    L68A9
L68A4          LDA    #$00
               STA    $0376
L68A9          LDA    $C081
               RTS
               HEX    A90760
SUB68B0        LDA    #$8D
               JSR    COUT
               RTS
SUB68B6        STX    L68BE+1
               STY    L68BE+2
               LDX    #$00
L68BE          LDA    $1000,X
               BEQ    L68E2
               CMP    #$E1
               BCC    L68CD
               CMP    #$FB
               BCS    L68CD
               AND    $07
L68CD          JSR    COUT
               LDA    $0325
               BEQ    L68DF
               TXA
               PHA
               LDA    $0325
               JSR    WAIT
               PLA
               TAX
L68DF          INX
               BNE    L68BE
L68E2          RTS
               HEX    0848DA5A2C04
D68E9          HEX    C4AD8BC0A57BF0034C406920DD6EA57C
               HEX    F0082045694C4069A9
D6902          HEX    00AAB565E00DD004C9FFF02F8E01
D6910          HEX    C48E81
D6913          HEX    C4A0078C00
D6918          HEX    C48C80
D691B          HEX    C4A0048C00
D6920          HEX    C48C80
D6923          HEX    C48D01
D6926          HEX    C48D81
D6929          HEX    C4A9068D00
D692E          HEX    C48D80
D6931          HEX    C48C00
D6934          HEX    C48C80
D6937          HEX    C4E8E00E30C7209B637AFA682840
SUB6945        LDX    #$00
               LDA    #$00
               STA    $7B
               STA    $7C
               STA    $7D
               STA    D6E82
               STA    D6EE2
               STA    D6EDE
L6958          STA    $65,X
               INX
               CPX    #$16
               BNE    L6958
               LDX    #$00
L6961          STA    $80,X
               INX
               CPX    #$78
               BNE    L6961
               RTS
SUB6969        LDA    #$00
               JSR    SUB699A
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
SUB699A        STY    $7E
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
SUB69C7        LDA    #$00
               STA    $7C
               LDX    #$78
L69CD          DEX
               STA    $80,X
               BNE    L69CD
               STA    D6FAD
               STA    D6FAF
               STA    D6FD7
               STA    D6FDC
               STA    D6FE3
               STA    D6FE8
               STA    D7032
               STA    D703A
               STA    D6FD9
               STA    D7013
               STA    D7015
               STA    D7020
               STA    D7029
               STA    D6C06
               STA    D6E82
               STA    D6EDE
               STA    D6EE2
               LDA    #$0A
               STA    $80
               STA    $A8
               STA    $D0
               LDX    #$00
               JSR    SUB6969
               LDX    #$28
               JSR    SUB6969
               LDX    #$50
               JSR    SUB6969
               LDA    $2064
               STA    D6EF3
               LDA    $2066
               STA    D6902
               LDX    #$06
               LDA    $200D
               SEC
               SBC    #$30
               CMP    #$09
               BCS    L6A35
               TAX
L6A35          LDA    #$2C
               CPX    #$06
               BCC    L6A3D
               ADC    #$1F
L6A3D          STA    D6DB2
               CPX    #$05
               LDA    #$00
               STA    D6A68+1
               LDY    #$11
               LDX    #$2A
               BCS    L6A51
               DEY
               TYA
               LDX    #$EA
L6A51          STY    D6A5F+1
               STA    D6A61+1
               STX    D6A79
               LDY    #$10
               LDX    #$10
L6A5E          CLC
D6A5F          LDA    #$D1
D6A61          ADC    #$D1
               STA    D6A61+1
               LDA    #$00
D6A68          ADC    #$D1
               STA    D6A68+1
               LDA    #$00
               ADC    #$FF
               EOR    #$FF
               STA    D6A7A+1
               PHA
L6A77          PLA
               PHA
D6A79          NOP
D6A7A          LDA    #$D1
               ADC    #$00
               STA    D71EB,Y
               INY
               PLA
               ADC    D6A61+1
               PHA
               LDA    D6A7A+1
               ADC    D6A68+1
               STA    D6A7A+1
               INX
               TXA
               AND    #$0F
               BNE    L6A77
               PLA
               LDA    D6A61+1
               CMP    #$77
               BNE    L6AA1
               INC    D6A61+1
L6AA1          TXA
               BNE    L6A5E
               RTS
               HEX    B583D005958B4C226CB586857AB58585
               HEX    79B5928578B5918577B59A0A0AA8B179
               HEX    8DB86BC8B1798D736BC8B17975969589
               HEX    C8B1797597958A2C736B50069597B589
               HEX    959618B499B177758C1002A900C96090
               HEX    02A95F203F7018B4819875898D0D6BB5
               HEX    8A75828D136B18A9D169D19589A9D169
               HEX    D1290F958AB5983054F052D698D04E18
               HEX    9875A09581A8B58275A19582B5A29598
               HEX    B5A3D039B5A1101898D5A5B582F5A650
               HEX    024980301C98D5A5D006B582D5A6F011
               HEX    B5A1301998D5A5B582F5A65002498030
               HEX    0CB5A4958CA900959895819582A9D129
               HEX    0F2CB86B101DA8B59D38500CE90F5002
               HEX    4980100FF69DD00AE9F1500249803003
               HEX    D69D9818759D3007C9109005A90F2CA9
               HEX    008DB06BB5800A0A0A0A09D1A8B9EB71
               HEX    958BA9D14AA8B00AB584F006B58B0910
               HEX    958BADB86B0A0A0AA9202C736B08101E
               HEX    9809F0B003290F18759B8DE96B28F002
               HEX    959B18A9D16DD96F8DD96F4CFF6B9818
               HEX    759C8DAF6F28F002959CAD736B4A2948
               HEX    09
D6C06          HEX    D18D066CF69AB59AD5889004B587959A
               HEX    F699B599D5949004B59395994E066CB5
               HEX    95F010D695D00CB58349019583A9CAB5
               HEX    9F959560D68E60A20020496CA2282049
               HEX    6CA250A0008C356DB58EC902B0E6B58C
               HEX    8D886DB5828DBA6DB5818DB66DB58D95
               HEX    8EB58F8575B5908576B1758D7A6C290F
               HEX    8D806CA9D129F0D00FA9D18D356DD023
               HEX    958ECEE96E4C336DC910D01AAD806CD0
               HEX    049584F00320406EC8B1754A207069A9
               HEX    0095994C2F6DC940B00BAD7A6C69E08D
               HEX    AD6F4C2F6DD009AD806C209A694C2F6D
               HEX    C9B0B010AD7A6C69B0958C20656EA901
               HEX    9583D059D01DAD806CF00DE901D00FC8
               HEX    B175958D958EB04195849599F03B2040
               HEX    6EB036C9C0D010AD806CD00795832065
               HEX    6EF02A9580D022C9F0F00DAD7A6C38E9
               HEX    D0F01A2070699011A9009584AD806C20
               HEX    9A69C8B1754A207069C84C636CC8A9D1
               HEX    C901D01995A34A9595B175C895A29598
               HEX    B175C895A0B175C895A14C316EC902F0
               HEX    034CDC6DA90095A39595B175C895A295
               HEX    98C8C8C8B17508100249FF95A188B175
               HEX    2818100349FF38690095A09002F6A1C8
               HEX    C8A9D1203F70AD0F6B8D9F6DAD156B8D
               HEX    A66DB58C203F7038E9D195A5AD156BE9
               HEX    D195A6B58C95A4AD886D958C
D6DB2          HEX    4CBD6DA9D19581A9D1958238B5A5F581
               HEX    B5A6F5821069B5A049FF18690195A0B5
               HEX    A149FF690095A14C316EC903D007B175
               HEX    C8959AD04AC904D007B175C89599D03F
               HEX    C905D016B175C8959E9595B175C8959F
               HEX    A900959895819582F025C908D017B175
               HEX    C88D20708D2970B175C88D3270B175C8
               HEX    8D3A70D00AC909D006B175C88DF36E18
               HEX    98758F958FA900759095908576608D13
               HEX    70A9788D1570C8B1758DDC6FC8B1758D
               HEX    D76FA90195844A95998D20708DE36F8D
               HEX    E86F60A900959A959D959C959B959995
               HEX    989581958295969597959560857C60A0
D6E82          HEX    D1B9C920C9FFF0F40AA818AD67208575
               HEX    AD682069208576B175858FC8B1756920
               HEX    8590C8B17585B7C8B175692085B8C8B1
               HEX    7585DFC8B175692085E0A9008DAD6FA9
               HEX    038DE96E60EE826E8DDE6E8DE26EADE2
               HEX    6ED00C20816EA57CF00560A9
D6EDE          HEX    D1F0EFA9
D6EE2          HEX    D1D007203D6CA9D1F0DBEEE26EADE26E
               HEX    49
D6EF3          HEX    00D0138DE26EEEDE6EADDE6E4940D006
               HEX    8DDE6EEE826EA2008E066C8ED96F20A5
               HEX    6AA22820A56AA25020A56A38A5898565
               HEX    A58A8566A58990220A26660A26660A26
               HEX    661865898565A58A65666A66656A6665
               HEX    6A66656A6665290F856638A5B18567A5
               HEX    B28568A5B190220A26680A26680A2668
               HEX    1865B18567A5B265686A66676A66676A
               HEX    66676A6667290F856838A5D98569A5DA
               HEX    856AA5D990220A266A0A266A0A266A18
               HEX    65D98569A5DA656A6A66696A66696A66
               HEX    696A6669290F856A18A9
D6FAD          HEX    D169
D6FAF          HEX    D1291F856B38900B0A0A0A656B6A6A6A
               HEX    6A291F856BAD066C856CA58B856DA5B3
               HEX    856EA5DB856F18A9
D6FD7          HEX    D169
D6FD9          HEX    D1A8A9
D6FDC          HEX    D16900AA189869
D6FE3          HEX    D185708A69
D6FE8          HEX    D18571389024A8A5700A26710A26710A
               HEX    267118657085709865716A66706A6670
               HEX    6A66706A6670290F8571A9
D7013          HEX    D1C9
D7015          HEX    D18D1570D002A9FF8572A9
D7020          HEX    D1F01BCE2070D016A9
D7029          HEX    D18D207018ADE36F69
D7032          HEX    D18DE36FADE86F69
D703A          HEX    D18DE86F60847EA8AD6320C901D00FB9
               HEX    67708D156BB9C7708D0F6BA47E60B927
               HEX    718D156BB987718D0F6BA47E600E0E0D
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
D71EB          HEX    00000000000000000000000000000000
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
SUB72EB        LDA    #$8D
               JSR    COUT
               JSR    SUB7308
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    D3CFCEC7ACC1A4B2B0B0B08D0060
SUB7308        PLA
               STA    $02
               PLA
               STA    $03
               LDY    #$01
L7310          LDA    ($02),Y
               BEQ    L731A
               JSR    COUT
               INY
               BNE    L7310
L731A          CLC
               TYA
               ADC    $02
               STA    $02
               LDA    $03
               ADC    #$00
               PHA
               LDA    $02
               PHA
               RTS
SUB7329        LDX    #$00
L732B          LDA    $00,X
               STA    $1000,X
               INX
               BNE    L732B
               RTS
SUB7334        LDX    #$00
L7336          LDA    $1000,X
               STA    $00,X
               INX
               BNE    L7336
               RTS
               HEX    00050A0801090D0F
D7347          HEX    0008080101090D0F
D734F          HEX    008080101090D0F0
D7357          HEX    00040408080C0E0F
D735F          HEX    0040408080C0E0F00000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00
D7400          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0000000000FF0F0F0F0F00000FFF0F00
               HEX    00FF0F0F0FF000FF0F0F0F0F00000000
               HEX    0000000000FFF0F0F000000000FF0000
               HEX    00FFF0F0F00F00FFF0F0F00000000000
               HEX    0000000000FF000000000000F0FFF000
               HEX    00FF00000FF000FFF0F0F0F000000000
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
               HEX    00FFF0FF0FFF0000F0F00F0F00000000
               HEX    000FFFF0FF00FF0F00F00000000F00FF
               HEX    F0FF0FFF0F00F0F00F0F00F0000F00F0
               HEX    F0FFF0FF0FFFF0F0F0F00F0F00F00000
               HEX    000F000000000000
D7648          HEX    00EED0EE0DEE0000D0E00D0E00000000
               HEX    000EDDE0DD00DD0E00E00000000E00EE
               HEX    D0EE0DEE0D00D0E00D0E00E0000E00E0
               HEX    D0EED0EE0DEED0E0D0E00D0E00E00000
               HEX    000E00000000000000CC90CC09CC0000
               HEX    90C0090C00000000000C99C09900990C
               HEX    00C00000000C00CC90CC09CC090090C0
               HEX    090C00C0000C00C090CC90CC09CC90C0
               HEX    90C0090C00C00000000C000000000000
D76D8          HEX    0F101111121212121111100F0E0D0D0C
               HEX    0C0C0C0D0D0E
D76EE          HEX    0C0C0C0D0E0F0F0F0E0D0C0C0C0D0E0F
               HEX    0F0F0E0D0C0C0C0D0E0F0F0F0E0D00
D770D          HEX    00
D770E          HEX    00
D770F          HEX    00
D7710          HEX    00
D7711          HEX    00000000000000000000000000000000
               HEX    00000000
D7725          HEX    00
D7726          HEX    00
D7727          HEX    000000
D772A          HEX    01
SUB772B        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB7DD2
               JSR    SUB8120
               JSR    SUB7E5F
               JSR    SUB8149
               LDA    #$01
               STA    D770D
               LDA    #$2F
               STA    D7727
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    $03EA
               RTS
SUB7767        LDA    STROBE
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
               HEX    AD0D77C903D029A200A9009D000C9D00
               HEX    0D9D000E9D000FE8D0F18D05C09D000C
               HEX    9D000D9D000E9D000FE8D0F18D04C060
               HEX    A623BD3082A8AD0D77C902F0109820D2
               HEX    7DAD2777C927F004982072816098205F
               HEX    7EAD2777C927F00498209F8160A5214A
               HEX    AABD40828540BD00818541A5202C2A77
               HEX    D0284AA88D03C0B1408D02C0AABD0080
               HEX    8529A5212901F00BA52929F04A4A4A4A
               HEX    852960A529290F8529604AA8B1408529
               HEX    A5212901F00BA52929F04A4A4A4A8529
               HEX    60A529290F852960A520EAC950900160
               HEX    A521CD2777F003900160
L784F          LDA    $23
               STA    $24
               LDA    $21
               LSR
               TAX
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               LDX    $23
               LDA    $20
               BIT    D772A
               BNE    L78A6
               LSR
               TAY
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               STA    $25
               LDA    D7F00,X
               STA    $24
               LDA    $21
               AND    #$01
               BEQ    L7893
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    D8220,X
               TAX
               LDA    D7F00,X
               STA    $24
               JMP    L7899
L7893          LDA    $25
               AND    #$F0
               STA    $25
L7899          LDA    $24
               ORA    $25
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               RTS
L78A6          LSR
               TAY
               LDA    ($40),Y
               STA    $25
               LDA    $21
               AND    #$01
               BEQ    L78C0
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    D8220,X
               STA    $24
               JMP    L78C6
L78C0          LDA    $25
               AND    #$F0
               STA    $25
L78C6          LDA    $24
               ORA    $25
               STA    ($40),Y
               RTS
SUB78CD        LDX    #$00
               STX    $22
               STX    $0301
               STX    $0302
               LDA    #$00
               STA    D7711
               STA    D7710
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
               HEX    28852886214C2979A521C528900EA628
               HEX    85288621A627A52085278620A52038E5
               HEX    27F01AB02049FF1869018D1577A5208D
               HEX    1277A5218D147738E5284C6279208F7C
               HEX    6020E27B608D1577A5278D1277A5288D
               HEX    147738E521B00B49FF69018D1777A9EE
               HEX    D007F0DD8D1777A9CE8DBB798DF179AD
               HEX    1577CD1777B0034CC17918690185263A
               HEX    4A8D1A774C9C79608D1A77C626F0F8AD
               HEX    12778520AD14778521204F78EE1277AD
               HEX    1A7738ED1777B0E06D15778D1A77EE14
               HEX    774C9879A621EC1477D002A6288EEE79
               HEX    AD17774A8D1A77AE14774CDD798D1A77
               HEX    AD12778520AD14778521204F78AD1477
               HEX    C900F017EE1477AD1A7738ED1577B0DD
               HEX    6D17778D1A77EE1277D0D5608D05C0A2
               HEX    00A900853E8A186910853FA900A00091
               HEX    3EC8C05090F9E8E03090E68D04C0A900
               HEX    853EA940853FAD23778520AD24778521
               HEX    20E277A5298D2177A000AD23778D05C0
               HEX    913EC8AD2477913E8D04C018A53E6902
               HEX    853EA53F6900853FA53ED007A53FC940
               HEX    D0016038A53EE902853EA53FE900853F
               HEX    A0008D03C0B13E8D02C085388520853A
               HEX    C88D03C0B13E8D02C085398521186910
               HEX    853B8D03C0B23A8D02C0D0BC204F78A9
               HEX    028D05C0923A8D04C0A539CD2777B035
               HEX    1869018521A538852020E277A529CD21
               HEX    77D022C523F01EA000A5388D05C0913E
               HEX    C8A521913E8D04C018A53E6902853EA5
               HEX    3F6900853FA539F0333A8521A5388520
               HEX    20E277A529CD2177D022C523F01EA000
               HEX    A5388D05C0913EC8A521913E8D04C018
               HEX    A53E6902853EA53F6900853FA538C94F
               HEX    B0351869018520A539852120E277A529
               HEX    CD2177D022C523F01EA000A5208D05C0
               HEX    913EC8A539913E8D04C018A53E690285
               HEX    3EA53F6900853FA538F0333A8520A539
               HEX    852120E277A529CD2177D022C523F01E
               HEX    A000A5208D05C0913EC8A539913E8D04
               HEX    C018A53E6902853EA53F6900853F4C65
               HEX    7AA520EAC527900AF03AA6278D26778E
               HEX    2577A5201007A20086204CC27BC95090
               HEX    04A94F8520A5271007A20086274CD57B
               HEX    C9509004A94F8527A521100160CD2777
               HEX    F003900160
SUB7BE2        LDA    $20
               CMP    $27
               BCC    L7BF8
               BEQ    L7BF5
               LDX    $27
               STA    D7726
               STX    D7725
               JMP    L7C00
L7BF5          JMP    L784F
L7BF8          STA    D7725
               LDA    $27
               STA    D7726
L7C00          SEC
               SBC    D7725
               CLC
               ADC    #$01
               STA    D770E
               INC    D7726
               LDA    $21
               LSR
               TAX
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               LDA    $21
               BIT    D772A
               BEQ    L7C25
               JMP    L7C3A
L7C25          LDA    $23
               STA    $24
               TAX
               LDA    D7F00,X
               STA    $25
               LDA    #$F0
               STA    D7C61+1
               STA    D7C7D+1
               JMP    L7C4F
L7C3A          LDX    $23
               LDA    D8220,X
               STA    $24
               TAX
               LDA    D7F00,X
               STA    $25
               LDA    #$0F
               STA    D7C61+1
               STA    D7C7D+1
L7C4F          LDA    D7725
               BIT    D772A
               BNE    L7C79
               LSR
               TAY
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
D7C61          AND    #$F0
               ORA    $25
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               INC    D7725
               LDA    D7725
               CMP    D7726
               BCC    L7C4F
               RTS
L7C79          LSR
               TAY
               LDA    ($40),Y
D7C7D          AND    #$F0
               ORA    $24
               STA    ($40),Y
               INC    D7725
               LDA    D7725
               CMP    D7726
               BCC    L7C4F
               RTS
SUB7C8F        LDA    $21
               CMP    $28
               BCC    L7CA3
               BEQ    L7CA0
               LDX    $28
               STA    $28
               STX    $21
               JMP    L7CA3
L7CA0          JMP    L784F
L7CA3          LDA    $28
               SEC
               SBC    $21
               CLC
               ADC    #$01
               STA    D770E
               LDA    $20
               BIT    D772A
               BEQ    L7CB8
               JMP    L7D5E
L7CB8          LSR
               TAY
               LDA    $21
               LSR
               STA    D770F
               LDA    $21
               BIT    D772A
               BEQ    L7CFD
               LDX    D770F
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               TAX
               LDA    D8000,X
               AND    #$0F
               STA    $25
               LDX    $23
               LDA    D8220,X
               ORA    $25
               TAX
               LDA    D7F00,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               INC    D770F
               DEC    D770E
L7CFD          LDA    D770E
               CMP    #$02
               BCC    L7D2E
               LDX    D770F
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               LDX    $23
               LDA    D8230,X
               TAX
               LDA    D7F00,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               DEC    D770E
               DEC    D770E
               INC    D770F
               JMP    L7CFD
L7D2E          LDA    D770E
               BNE    L7D34
               RTS
L7D34          LDX    D770F
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               TAX
               LDA    D8000,X
               AND    #$F0
               ORA    $23
               TAX
               LDA    D7F00,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               RTS
L7D5E          LSR
               TAY
               LDA    $21
               LSR
               STA    D770F
               LDA    $21
               BIT    D772A
               BEQ    L7D8F
               LDX    D770F
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               LDA    ($40),Y
               AND    #$0F
               STA    $25
               LDX    $23
               LDA    D8220,X
               ORA    $25
               STA    ($40),Y
               INC    D770F
               DEC    D770E
L7D8F          LDA    D770E
               CMP    #$02
               BCC    L7DB6
               LDX    D770F
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               LDX    $23
               LDA    D8230,X
               STA    ($40),Y
               DEC    D770E
               DEC    D770E
               INC    D770F
               JMP    L7D8F
L7DB6          LDA    D770E
               BNE    L7DBC
               RTS
L7DBC          LDX    D770F
               LDA    D8240,X
               STA    $40
               LDA    D8100,X
               STA    $41
               LDA    ($40),Y
               AND    #$F0
               ORA    $23
               STA    ($40),Y
               RTS
SUB7DD2        LDX    #$28
L7DD4          DEX
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
               BNE    L7DD4
               TAX
               LDA    D7F00,X
               LDX    #$28
L7E19          DEX
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
               BNE    L7E19
               RTS
SUB7E5F        LDX    #$28
L7E61          DEX
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
               BNE    L7E61
               TAX
               LDA    D7F00,X
               LDX    #$28
L7EA6          DEX
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
               BNE    L7EA6
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000
D7F00          HEX    00080109020A030B040C050D060E070F
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
D8000          HEX    00020406080A0C0E01030507090B0D0F
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
D8100          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
SUB8120        LDX    #$28
L8122          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L8122
               LDX    #$28
L8133          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L8133
               RTS
SUB8149        LDX    #$28
L814B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L814B
               LDX    #$28
L815C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L815C
               RTS
               HEX    A228CA9D50069DD0069D50079DD007D0
               HEX    F1AABD007FA228CA8D05C09D50069DD0
               HEX    069D50079DD0078D04C0D0EB60A228CA
               HEX    9D500A9DD00A9D500B9DD00BD0F1AABD
               HEX    007FA228CA8D05C09D500A9DD00A9D50
               HEX    0B9DD00B8D04C0D0EB60000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000808
               HEX    09090A0A0B0B080809090A0A0B0B0808
               HEX    09090A0A0B0B080809090A0A0B0B
D8220          HEX    00102030405060708090A0B0C0D0E0F0
D8230          HEX    00112233445566778899AABBCCDDEEFF
D8240          HEX    008000800080008028A828A828A828A8
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
