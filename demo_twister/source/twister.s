************************************************************
* twister - TWISTER (disassembly)
*
* Disassembled from the original binary (5225 bytes, $0A00-$1E68).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and license terms.
* Entry point $0A00 (NMOS 6502 opcodes only).
************************************************************

               ORG    $0A00

KEYBD          EQU    $C000
RAMRDOFF       EQU    $C002
RAMWRTOFF      EQU    $C004
STROBE         EQU    $C010
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
HISCR          EQU    $C055
HIRES          EQU    $C057
SETTXT         EQU    $FB39
HOME           EQU    $FC58

START          JSR    SUB0A67
               JSR    SUB0A57
               JSR    SUB0AB6
               JSR    SUB0CFE
L0A0C          JSR    SUB0AD8
               INC    $FC
               INC    $FC
               INC    $FC
               INC    $FC
               LDA    $FC
               BEQ    L0A22
               LDA    #$00
               STA    $FB
               JMP    L0A0C
L0A22          JSR    SUB0A8A
L0A25          JSR    SUB0C2A
               JSR    SUB0CB3
               LDA    KEYBD
               BMI    L0A3C
               BIT    STROBE
               LDA    $B5
               CMP    #$A0
               BEQ    L0A22
               JMP    L0A25
L0A3C          LDA    STROBE
               STA    RAMRDOFF
               STA    RAMWRTOFF
               STA    TXTSET
               STA    MIXCLR
               STA    LOWSCR
               JSR    SETTXT
               JSR    HOME
               JMP    $03D0
SUB0A57        LDA    #$00
               STA    HIRES
               STA    LOWSCR
               STA    TXTCLR
               STA    MIXCLR
               RTS
               HEX    60
SUB0A67        LDA    STROBE
               JSR    SUB0AB6
               LDA    #$15
               STA    $D9
               LDA    #$17
               STA    $DB
               LDA    #$19
               STA    $DD
               LDA    #$1B
               STA    $DF
               LDA    #$00
               STA    $FC
               LDA    #$20
               STA    $06
               LDA    #$01
               STA    $030B
SUB0A8A        LDA    #$00
               STA    $B4
               LDA    #$60
               STA    $B5
               LDA    #$40
               STA    $B6
               LDA    #$60
               STA    $B7
               LDA    #$80
               STA    $A0
               LDA    #$60
               STA    $A1
               LDA    #$C0
               STA    $A2
               LDA    #$60
               STA    $A3
               RTS
               HEX    CD19C010FBCD19C030FB60
SUB0AB6        LDX    #$20
               LDA    #$00
               TAY
L0ABB          STA    $2000,Y
D0ABE          STA    $4000,Y
               INY
               BNE    L0ABB
               INC    L0ABB+2
               INC    D0ABE+2
               DEX
               BNE    L0ABB
               LDA    #$20
               STA    L0ABB+2
               LDA    #$40
               STA    D0ABE+2
               RTS
SUB0AD8        LDA    #$00
               STA    $FB
               LDX    $FC
               LDA    D1D40,X
               LDY    #$04
               JSR    SUB0CD1
               STY    $86
               STA    $85
               LDA    #$7F
               LDY    #$05
               JSR    SUB0CD1
               STY    $88
               STA    $87
               CLC
               LDA    $85
               ADC    $87
               STA    $A4
               LDA    $86
               ADC    $88
               STA    $A5
               LDX    $FC
               LDA    D1D00,X
               LDY    #$03
               JSR    SUB0CD1
               STY    $8A
               STA    $89
               LDA    #$7F
               LDY    #$03
               JSR    SUB0CD1
               STY    $8C
               STA    $8B
               CLC
               LDA    $89
               ADC    $8B
               STA    $A6
               LDA    $8A
               ADC    $8C
               STA    $A7
               ASL    $A4
               ROL    $A5
               ASL    $A6
               ROL    $A7
               ASL    $A4
               ROL    $A5
               ASL    $A6
               ROL    $A7
               ASL    $A4
               ROL    $A5
               ASL    $A6
               ROL    $A7
L0B40          LDA    $FB
               ASL
               CLC
               ADC    #$01
               TAX
               LDA    D1D40,X
               CLC
               ADC    #$01
               LDY    $A5
               JSR    SUB0CD1
               STY    $A9
               STA    $A8
               CLC
               LDA    $A8
               ADC    $A6
               STA    $AA
               LDA    $A9
               ADC    $A7
               STA    $AB
               ASL    $AA
               ROL    $AB
               ASL    $AA
               ROL    $AB
               ASL    $AA
               ROL    $AB
               LDA    $AB
               TAX
               LDA    D1D40,X
               BPL    L0B86
               SEC
               SBC    #$01
               EOR    #$FF
               LSR
               LSR
               EOR    #$FF
               CLC
               ADC    #$01
               JMP    L0B88
L0B86          LSR
               LSR
L0B88          STA    $AD
               EOR    #$FF
               CLC
               ADC    #$01
               CLC
               ADC    #$81
               STA    $B1
               LDA    $AD
               CLC
               ADC    #$81
               STA    $AD
               LDA    D1D00,X
               BPL    L0BAF
               SEC
               SBC    #$01
               EOR    #$FF
               LSR
               LSR
               EOR    #$FF
               CLC
               ADC    #$01
               JMP    L0BB1
L0BAF          LSR
               LSR
L0BB1          STA    $AF
               EOR    #$FF
               CLC
               ADC    #$01
               CLC
               ADC    #$81
               STA    $B3
               LDA    $AF
               CLC
               ADC    #$81
               STA    $AF
               LDY    $FB
               LDA    #$00
               STA    ($B4),Y
               STA    ($B6),Y
               STA    ($A0),Y
               STA    ($A2),Y
               LDA    $AD
               CMP    $AF
               BCS    L0BE3
               LDA    $AD
               LDY    $FB
               STA    ($B4),Y
               LDA    $AF
               STA    ($B6),Y
               JMP    L0BF3
L0BE3          LDA    $B1
               CMP    $B3
               BCS    L0BF3
               LDA    $B1
               LDY    $FB
               STA    ($B4),Y
               LDA    $B3
               STA    ($B6),Y
L0BF3          LDA    $AF
               CMP    $B1
               BCS    L0C06
               LDA    $AF
               LDY    $FB
               STA    ($A0),Y
               LDA    $B1
               STA    ($A2),Y
               JMP    L0C16
L0C06          LDA    $B3
               CMP    $AD
               BCS    L0C16
               LDA    $B3
               LDY    $FB
               STA    ($A0),Y
               LDA    $AD
               STA    ($A2),Y
L0C16          INC    $FB
               LDA    $FB
               CMP    #$40
               BEQ    L0C21
               JMP    L0B40
L0C21          INC    $B5
               INC    $B7
               INC    $A1
               INC    $A3
               RTS
SUB0C2A        LDA    $B4
               STA    $30
               LDA    $B5
               STA    $31
               LDA    $B6
               STA    $32
               LDA    $B7
               STA    $33
               LDA    #$49
               STA    D0DA9+1
               STA    D0DC9+1
               STA    D0DE0+1
               STA    D0DF9+1
               LDA    #$10
               STA    D0DA9+2
               STA    D0DC9+2
               STA    D0DE0+2
               STA    D0DF9+2
               LDA    #$01
               STA    $031A
               STA    $28
               LDA    #$00
               STA    $0318
               LDA    #$3F
               STA    $0319
               JSR    SUB0D3E
               LDA    $A0
               STA    $30
               LDA    $A1
               STA    $31
               LDA    $A2
               STA    $32
               LDA    $A3
               STA    $33
               LDA    #$71
               STA    D0DA9+1
               STA    D0DC9+1
               STA    D0DE0+1
               STA    D0DF9+1
               LDA    #$10
               STA    D0DA9+2
               STA    D0DC9+2
               STA    D0DE0+2
               STA    D0DF9+2
               LDA    #$02
               STA    $031A
               DEC    $28
               JSR    SUB0D3E
               INC    $B5
               INC    $B7
               INC    $A1
               INC    $A3
               RTS
               HEX    CD19C010FBCD19C030FB
SUB0CB3        LDA    $030B
               CMP    #$02
               BEQ    L0CC6
               LDA    #$40
               STA    $06
               STA    LOWSCR
               INC    $030B
               BNE    L0CD0
L0CC6          LDA    #$20
               STA    $06
               STA    HISCR
               DEC    $030B
L0CD0          RTS
SUB0CD1        STY    $BC
               STA    $BD
               STA    $D8
               STA    $DA
               EOR    #$FF
               STA    $DC
               STA    $DE
               LDA    ($D8),Y
               SEC
               SBC    ($DC),Y
               STA    $0318
               LDA    ($DA),Y
               SBC    ($DE),Y
               LDY    $BC
               BPL    L0CF2
               SEC
               SBC    $BD
L0CF2          LDY    $BD
               BPL    L0CF9
               SEC
               SBC    $BC
L0CF9          TAY
               LDA    $0318
               RTS
SUB0CFE        LDX    #$00
               LDA    D100B,X
               STA    D0D0E+1
               LDA    D1003,X
               LDY    #$27
L0D0B          STA    D1021,Y
D0D0E          EOR    #$00
               DEY
               BPL    L0D0B
               LDX    #$01
               LDA    D100B,X
               STA    D0D23+1
               LDA    D1003,X
               LDY    #$27
L0D20          STA    D1049,Y
D0D23          EOR    #$00
               DEY
               BPL    L0D20
               LDX    #$02
               LDA    D100B,X
               STA    D0D38+1
               LDA    D1003,X
               LDY    #$27
L0D35          STA    D1071,Y
D0D38          EOR    #$00
               DEY
               BPL    L0D35
               RTS
SUB0D3E        LDX    $031A
               LDA    D100B,X
               CMP    D0F02+1
               BEQ    L0D4C
               JSR    SUB0E0B
L0D4C          LDA    #$00
               STA    $26
               LDY    $0318
L0D53          STY    $24
               LDA    $24
               ASL
               CLC
               ADC    #$21
               TAY
               LDX    D1100,Y
               STX    $08
               LDA    D1200,Y
               ORA    $06
               STA    $09
               LDA    $28
               BEQ    L0D76
               LDA    #$00
               LDY    #$0E
               STA    ($08),Y
               LDY    #$16
               STA    ($08),Y
L0D76          LDY    $24
               LDA    ($30),Y
               BNE    L0D7F
               JMP    L0DFF
L0D7F          TAX
               LDA    D1400,X
               STA    $1F
               LDA    D1300,X
               STA    $1E
               LDA    ($32),Y
               TAX
               LDA    D1400,X
               STA    $21
               LDA    D1300,X
               STA    $20
               CMP    $1E
               BNE    L0DB7
               LDY    $1F
               LDA    D1013,Y
               LDX    $21
               AND    D101A,X
               STA    $23
               LDY    $1E
D0DA9          LDA    D1021,Y
               EOR    ($08),Y
               AND    $23
               EOR    ($08),Y
               STA    ($08),Y
               JMP    L0DFF
L0DB7          SEC
               SBC    $1E
               TAX
               INX
               LDY    $21
               CPY    #$06
               BEQ    L0DD5
               LDA    D101A,Y
               STA    $23
               LDY    $20
D0DC9          LDA    D1021,Y
               EOR    ($08),Y
               AND    $23
               EOR    ($08),Y
               STA    ($08),Y
               DEX
L0DD5          LDY    $1F
               BEQ    L0DF1
               LDA    D1013,Y
               STA    $23
               LDY    $1E
D0DE0          LDA    D1021,Y
               EOR    ($08),Y
               AND    $23
               EOR    ($08),Y
               STA    ($08),Y
               DEX
               BEQ    L0DFF
               INY
               BNE    L0DF3
L0DF1          LDY    $1E
L0DF3          LDA    D0FCB,X
               STA    D0DFC+1
D0DF9          LDA    D1021,Y
D0DFC          JMP    L0F00
L0DFF          LDY    $24
               CPY    $0319
               BCS    L0E0A
               INY
               JMP    L0D53
L0E0A          RTS
SUB0E0B        STA    D0F02+1
               STA    D0F07+1
               STA    D0F0C+1
               STA    D0F11+1
               STA    D0F16+1
               STA    D0F1B+1
               STA    D0F20+1
               STA    D0F25+1
               STA    D0F2A+1
               STA    D0F2F+1
               STA    D0F34+1
               STA    D0F39+1
               STA    D0F3E+1
               STA    D0F43+1
               STA    D0F48+1
               STA    D0F4D+1
               STA    D0F52+1
               STA    D0F57+1
               STA    D0F5C+1
               STA    D0F61+1
               STA    D0F66+1
               STA    D0F6B+1
               STA    D0F70+1
               STA    D0F75+1
               STA    D0F7A+1
               STA    D0F7F+1
               STA    D0F84+1
               STA    D0F89+1
               STA    D0F8E+1
               STA    D0F93+1
               STA    D0F98+1
               STA    D0F9D+1
               STA    D0FA2+1
               STA    D0FA7+1
               STA    D0FAC+1
               STA    D0FB1+1
               STA    D0FB6+1
               STA    D0FBB+1
               STA    D0FC0+1
               STA    D0FC5+1
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000
L0F00          STA    ($08),Y
D0F02          EOR    #$00
               INY
               STA    ($08),Y
D0F07          EOR    #$00
               INY
               STA    ($08),Y
D0F0C          EOR    #$00
               INY
               STA    ($08),Y
D0F11          EOR    #$00
               INY
               STA    ($08),Y
D0F16          EOR    #$00
               INY
               STA    ($08),Y
D0F1B          EOR    #$00
               INY
               STA    ($08),Y
D0F20          EOR    #$00
               INY
               STA    ($08),Y
D0F25          EOR    #$00
               INY
               STA    ($08),Y
D0F2A          EOR    #$00
               INY
               STA    ($08),Y
D0F2F          EOR    #$00
               INY
               STA    ($08),Y
D0F34          EOR    #$00
               INY
               STA    ($08),Y
D0F39          EOR    #$00
               INY
               STA    ($08),Y
D0F3E          EOR    #$00
               INY
               STA    ($08),Y
D0F43          EOR    #$00
               INY
               STA    ($08),Y
D0F48          EOR    #$00
               INY
               STA    ($08),Y
D0F4D          EOR    #$00
               INY
               STA    ($08),Y
D0F52          EOR    #$00
               INY
               STA    ($08),Y
D0F57          EOR    #$00
               INY
               STA    ($08),Y
D0F5C          EOR    #$00
               INY
               STA    ($08),Y
D0F61          EOR    #$00
               INY
               STA    ($08),Y
D0F66          EOR    #$00
               INY
               STA    ($08),Y
D0F6B          EOR    #$00
               INY
               STA    ($08),Y
D0F70          EOR    #$00
               INY
               STA    ($08),Y
D0F75          EOR    #$00
               INY
               STA    ($08),Y
D0F7A          EOR    #$00
               INY
               STA    ($08),Y
D0F7F          EOR    #$00
               INY
               STA    ($08),Y
D0F84          EOR    #$00
               INY
               STA    ($08),Y
D0F89          EOR    #$00
               INY
               STA    ($08),Y
D0F8E          EOR    #$00
               INY
               STA    ($08),Y
D0F93          EOR    #$00
               INY
               STA    ($08),Y
D0F98          EOR    #$00
               INY
               STA    ($08),Y
D0F9D          EOR    #$00
               INY
               STA    ($08),Y
D0FA2          EOR    #$00
               INY
               STA    ($08),Y
D0FA7          EOR    #$00
               INY
               STA    ($08),Y
D0FAC          EOR    #$00
               INY
               STA    ($08),Y
D0FB1          EOR    #$00
               INY
               STA    ($08),Y
D0FB6          EOR    #$00
               INY
               STA    ($08),Y
D0FBB          EOR    #$00
               INY
               STA    ($08),Y
D0FC0          EOR    #$00
               INY
               STA    ($08),Y
D0FC5          EOR    #$00
               INY
               JMP    L0DFF
D0FCB          HEX    C8C3BEB9B4AFAAA5A09B96918C87827D
               HEX    78736E69645F5A55504B46413C37322D
               HEX    28231E19140F0A05008182848890A0C0
               HEX    002A557F80AAD5FF
D1003          HEX    00552A7F80D5AAFF
D100B          HEX    007F7F00007F7F00
D1013          HEX    FFFEFCF8F0E0C0
D101A          HEX    8183878F9FBFFF
D1021          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000
D1049          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000
D1071          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000000000000000
D1100          HEX    00000000000000008080808080808080
               HEX    00000000000000008080808080808080
               HEX    00000000000000008080808080808080
               HEX    00000000000000008080808080808080
               HEX    2828282828282828A8A8A8A8A8A8A8A8
               HEX    2828282828282828A8A8A8A8A8A8A8A8
               HEX    2828282828282828A8A8A8A8A8A8A8A8
               HEX    2828282828282828A8A8A8A8A8A8A8A8
               ASC    'PPPPPPPP'
               ASC    "PPPPPPPP"
               ASC    'PPPPPPPP'
               ASC    "PPPPPPPP"
               ASC    'PPPPPPPP'
               ASC    "PPPPPPPP"
               ASC    'PPPPPPPP'
               ASC    "PPPPPPPP"
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D1200          HEX    0004080C1014181C0004080C1014181C
               HEX    0105090D1115191D0105090D1115191D
               HEX    02060A0E12161A1E02060A0E12161A1E
               HEX    03070B0F13171B1F03070B0F13171B1F
               HEX    0004080C1014181C0004080C1014181C
               HEX    0105090D1115191D0105090D1115191D
               HEX    02060A0E12161A1E02060A0E12161A1E
               HEX    03070B0F13171B1F03070B0F13171B1F
               HEX    0004080C1014181C0004080C1014181C
               HEX    0105090D1115191D0105090D1115191D
               HEX    02060A0E12161A1E02060A0E12161A1E
               HEX    03070B0F13171B1F03070B0F13171B1F
               HEX    24242425252525252525262626262626
               HEX    26272727272727270405060001020304
               HEX    05060001020304050600010203040506
               HEX    00000000000000000000000000000000
D1300          HEX    00000000000000010101010101010202
               HEX    02020202020303030303030304040404
               HEX    04040405050505050505060606060606
               HEX    06070707070707070808080808080809
               HEX    0909090909090A0A0A0A0A0A0A0B0B0B
               HEX    0B0B0B0B0C0C0C0C0C0C0C0D0D0D0D0D
               HEX    0D0D0E0E0E0E0E0E0E0F0F0F0F0F0F0F
               HEX    10101010101010111111111111111212
               HEX    12121212121313131313131314141414
               HEX    14141415151515151515161616161616
               HEX    16171717171717171818181818181819
               HEX    1919191919191A1A1A1A1A1A1A1B1B1B
               HEX    1B1B1B1B1C1C1C1C1C1C1C1D1D1D1D1D
               HEX    1D1D1E1E1E1E1E1E1E1F1F1F1F1F1F1F
               HEX    20202020202020212121212121212222
               HEX    22222222222323232323232324242424
D1400          HEX    00010203040506000102030405060001
               HEX    02030405060001020304050600010203
               HEX    04050600010203040506000102030405
               HEX    06000102030405060001020304050600
               HEX    01020304050600010203040506000102
               HEX    03040506000102030405060001020304
               HEX    05060001020304050600010203040506
               HEX    00010203040506000102030405060001
               HEX    02030405060001020304050600010203
               HEX    04050600010203040506000102030405
               HEX    06000102030405060001020304050600
               HEX    01020304050600010203040506000102
               HEX    03040506000102030405060001020304
               HEX    05060001020304050600010203040506
               HEX    00010203040506000102030405060001
               HEX    02030405060001020304050600010203
               HEX    000001020406090C1014191E242A3138
               HEX    4048515A646E7984909CA9B6C4D2E1F0
               HEX    001021324456697C90A4B9CEE4FA1128
               HEX    4058718AA4BED9F4102C496684A2C1E0
               HEX    0020416284A6C9EC1034597EA4CAF118
               HEX    406891BAE40E396490BCE9164472A1D0
               HEX    00306192C4F6295C90C4F92E649AD108
               HEX    4078B1EA245E99D4104C89C6044281C0
               HEX    004081C2044689CC105499DE246AB1F8
               HEX    4088D11A64AEF94490DC2976C41261B0
               HEX    0050A1F24496E93C90E4398EE43A91E8
               HEX    4098F14AA4FE59B4106CC92684E241A0
               HEX    0060C12284E649AC1074D93EA40A71D8
               HEX    40A8117AE44EB92490FC69D644B22190
               HEX    0070E152C436A91C900479EE64DA51C8
               HEX    40B831AA249E1994108C098604820180
               HEX    008001820486098C1094199E24AA31B8
               HEX    40C851DA64EE7904901CA936C452E170
               HEX    009021B244D669FC9024B94EE47A11A8
               HEX    40D8710AA43ED97410AC49E68422C160
               HEX    00A041E28426C96C10B459FEA44AF198
               HEX    40E8913AE48E39E4903CE99644F2A150
               HEX    00B06112C47629DC9044F9AE641AD188
               HEX    40F8B16A24DE995410CC894604C28140
               HEX    00C0814204C6894C10D4995E24EAB178
               HEX    4008D19A642EF9C4905C29F6C4926130
               HEX    00D0A1724416E9BC9064390EE4BA9168
               HEX    4018F1CAA47E593410ECC9A684624120
               HEX    00E0C1A28466492C10F4D9BEA48A7158
               HEX    402811FAE4CEB9A4907C695644322110
               HEX    00F0E1D2C4B6A99C9084796E645A5148
               HEX    4038312A241E1914100C090604020100
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    01010101010101010101010101010202
               HEX    02020202020202020303030303030303
               HEX    04040404040404040505050505050506
               HEX    06060606060707070707070808080808
               HEX    0909090909090A0A0A0A0A0B0B0B0B0C
               HEX    0C0C0C0C0D0D0D0D0E0E0E0E0F0F0F0F
               HEX    10101010111111111212121213131313
               HEX    14141415151515161616171717181818
               HEX    191919191A1A1A1B1B1B1C1C1C1D1D1D
               HEX    1E1E1E1F1F1F20202121212222222323
               HEX    24242425252526262727272828292929
               HEX    2A2A2B2B2B2C2C2D2D2D2E2E2F2F3030
               HEX    31313132323333343435353536363737
               HEX    383839393A3A3B3B3C3C3D3D3E3E3F3F
               ASC    '@@AABBCCDDEEFFGGHHIIJJKLLMMNNOOPQQRRSSTT'
               HEX    55565657575859595A5A5B5C5C5D5D5E
               ASC    '__``abbcddeefgghiijjkllmnnoppqrrsttuvvwx'
               HEX    79797A7B7B7C7D7D7E7F7F8081828283
               HEX    84848586878788898A8A8B8C8D8D8E8F
               HEX    90909192939394959696979899999A9B
               HEX    9C9D9D9E9FA0A0A1A2A3A4A4A5A6A7A8
               HEX    A9A9AAABACADADAEAFB0B1B2B2B3B4B5
               HEX    B6B7B7B8B9BABBBCBDBDBEBFC0C1C2C3
               HEX    C4C4C5C6C7C8C9CACBCBCCCDCECFD0D1
               HEX    D2D3D4D4D5D6D7D8D9DADBDCDDDEDFE0
               ASC    "aabcdefghijklmnopqrstuvwxyz{|}~"
               HEX    008001820486098C1094199E24AA31B8
               HEX    40C851DA64EE7904901CA936C452E170
               HEX    009021B244D669FC9024B94EE47A11A8
               HEX    40D8710AA43ED97410AC49E68422C160
               HEX    00A041E28426C96C10B459FEA44AF198
               HEX    40E8913AE48E39E4903CE99644F2A150
               HEX    00B06112C47629DC9044F9AE641AD188
               HEX    40F8B16A24DE995410CC894604C28140
               HEX    00C0814204C6894C10D4995E24EAB178
               HEX    4008D19A642EF9C4905C29F6C4926130
               HEX    00D0A1724416E9BC9064390EE4BA9168
               HEX    4018F1CAA47E593410ECC9A684624120
               HEX    00E0C1A28466492C10F4D9BEA48A7158
               HEX    402811FAE4CEB9A4907C695644322110
               HEX    00F0E1D2C4B6A99C9084796E645A5148
               HEX    4038312A241E1914100C090604020100
               HEX    000001020406090C1014191E242A3138
               HEX    4048515A646E7984909CA9B6C4D2E1F0
               HEX    001021324456697C90A4B9CEE4FA1128
               HEX    4058718AA4BED9F4102C496684A2C1E0
               HEX    0020416284A6C9EC1034597EA4CAF118
               HEX    406891BAE40E396490BCE9164472A1D0
               HEX    00306192C4F6295C90C4F92E649AD108
               HEX    4078B1EA245E99D4104C89C6044281C0
               HEX    004081C2044689CC105499DE246AB1F8
               HEX    4088D11A64AEF94490DC2976C41261B0
               HEX    0050A1F24496E93C90E4398EE43A91E8
               HEX    4098F14AA4FE59B4106CC92684E241A0
               HEX    0060C12284E649AC1074D93EA40A71D8
               HEX    40A8117AE44EB92490FC69D644B22190
               HEX    0070E152C436A91C900479EE64DA51C8
               HEX    40B831AA249E1994108C098604820180
               HEX    003F3F3E3E3D3D3C3C3B3B3A3A393938
               HEX    38373736363535353434333332323131
               HEX    3130302F2F2E2E2D2D2D2C2C2B2B2B2A
               HEX    2A292929282827272726262525252424
               HEX    24232322222221212120201F1F1F1E1E
               HEX    1E1D1D1D1C1C1C1B1B1B1A1A1A191919
               HEX    19181818171717161616151515151414
               HEX    14131313131212121211111111101010
               HEX    100F0F0F0F0E0E0E0E0D0D0D0D0C0C0C
               HEX    0C0C0B0B0B0B0A0A0A0A0A0909090909
               HEX    09080808080807070707070706060606
               HEX    06060505050505050504040404040404
               HEX    04030303030303030302020202020202
               HEX    02020201010101010101010101010101
               HEX    01000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    01010101010101010101010101010202
               HEX    02020202020202020303030303030303
               HEX    04040404040404040505050505050506
               HEX    06060606060707070707070808080808
               HEX    0909090909090A0A0A0A0A0B0B0B0B0C
               HEX    0C0C0C0C0D0D0D0D0E0E0E0E0F0F0F0F
               HEX    10101010111111111212121213131313
               HEX    14141415151515161616171717181818
               HEX    191919191A1A1A1B1B1B1C1C1C1D1D1D
               HEX    1E1E1E1F1F1F20202121212222222323
               HEX    24242425252526262727272828292929
               HEX    2A2A2B2B2B2C2C2D2D2D2E2E2F2F3030
               HEX    31313132323333343435353536363737
               HEX    383839393A3A3B3B3C3C3D3D3E3E3F3F
               HEX    00
D1D00          HEX    FF0306090C0F1215181B1E2124272A2D
               HEX    303336393B3E414346494B4E50525557
               HEX    595B5E6062646667696B6C6E70717274
               HEX    75767778797A7B7B7C7D7D7E7E7E7E7E
D1D40          HEX    7E7E7E7E7E7E7D7D7C7B7B7A79787776
               HEX    75747271706E6C6B6967666462605E5B
               HEX    59575552504E4B494643413E3B393633
               HEX    302D2A2724211E1B1815120F0C090603
               HEX    FFFCF9F6F3F0EDEAE7E4E1DEDBD8D5D2
               HEX    CFCCC9C6C4C1BEBCB9B6B4B1AFADAAA8
               HEX    A6A4A19F9D9B9998969493918F8E8D8B
               HEX    8A898887868584848382828181818181
               HEX    81818181818182828384848586878889
               HEX    8A8B8D8E8F9193949698999B9D9FA1A4
               HEX    A6A8AAADAFB1B4B6B9BCBEC1C4C6C9CC
               ASC    "ORUX[^adgjmpsvy|"
               HEX    000306090C0F1215181B1E2124272A2D
               HEX    303336393B3E414346494B4E50525557
               HEX    595B5E6062646667696B6C6E70717274
               HEX    75767778797A7B7B7C7D7D7E7E7E7E7E
               HEX    7E7E7E7E7E7E7D7D7C7B7B7A79787776
               ASC    'utrqpnlkigfdb`^[YWURPNKI'
               HEX    FF
