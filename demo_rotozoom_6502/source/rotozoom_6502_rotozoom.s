************************************************************
* rotozoom_6502 - ROTOZOOM (disassembly)
*
* Disassembled from the original binary (6656 bytes, $6000-$79FF).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and license terms.
* Entry point $6000 (NMOS 6502 opcodes only).
************************************************************

               ORG    $6000

KEYBD          EQU    $C000
SET80COL       EQU    $C001
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
LOWSCR         EQU    $C054
HISCR          EQU    $C055
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
CLRSCR         EQU    $F832
HOME           EQU    $FC58

START          JSR    SUB6036
L6003          LDA    KEYBD
               BMI    L600B
               JMP    L602A
L600B          CMP    #$D1
               BNE    L6027
               LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    HOME
               JMP    $03D0
L6027          LDA    STROBE
L602A          JSR    SUB6078
               JSR    SUB6170
               JSR    SUB62B5
               JMP    L6003
SUB6036        STA    STROBE
               LDA    TXTCLR
               LDA    #$00
               STA    SET80COL
               STA    SET80VID
               LDA    AN3OFF
               LDA    HISCR
               JSR    CLRSCR
               LDA    LOWSCR
               JSR    CLRSCR
               LDA    HISCR
               LDA    #$6B
               STA    $93
               LDA    #$6D
               STA    $95
               LDA    #$6F
               STA    $97
               LDA    #$71
               STA    $99
               LDA    #$A7
               STA    $9A
               LDA    #$01
               STA    $030B
               LDA    #$1F
               STA    $9B
               LDA    #$89
               STA    $90
               RTS
SUB6078        LDA    $90
               AND    #$80
               CLC
               ROL
               ROL
               STA    $85
               LDA    $9B
               AND    #$80
               CLC
               ROL
               ROL
               CLC
               ADC    $85
               TAX
               LDA    D7300,X
               ADC    $9A
               STA    $9A
               TAX
               LDA    D7300,X
               STA    $7F
               LDA    D7340,X
               STA    $80
               INC    $9B
               INC    $9B
               INC    $9B
               LDX    $9B
               LDA    D7300,X
               STA    $81
               LDA    D7340,X
               STA    $82
               INC    $90
               LDA    $90
               CMP    #$79
               BNE    L60BC
               LDA    #$00
               STA    $90
L60BC          LDA    #$00
               STA    $B8
               STA    $B9
               JSR    SUB62DB
               LDA    $A0
               STA    $A4
               LDA    $A1
               STA    $A5
               LDA    $A2
               STA    $A6
               LDA    $A3
               STA    $A7
               INC    $B8
               JSR    SUB62DB
               LDA    $A0
               STA    $A8
               LDA    $A1
               STA    $A9
               LDA    $A2
               STA    $AA
               LDA    $A3
               STA    $AB
               SEC
               LDA    $A8
               SBC    $A4
               STA    D61AE+1
               STA    D6234+1
               STA    D61D6+1
               STA    D625F+1
               LDA    $A9
               SBC    $A5
               STA    D61B4+1
               STA    D623A+1
               STA    D61DC+1
               STA    D6265+1
               SEC
               LDA    $AA
               SBC    $A6
               STA    D61BF+1
               STA    D6245+1
               STA    D61E7+1
               STA    D6270+1
               LDA    $AB
               SBC    $A7
               STA    D61C5+1
               STA    D624B+1
               STA    D61ED+1
               STA    D6276+1
               LDA    #$00
               STA    $B8
               INC    $B9
               JSR    SUB62DB
               LDA    $A0
               STA    $A8
               LDA    $A1
               STA    $A9
               LDA    $A2
               STA    $AA
               LDA    $A3
               STA    $AB
               SEC
               LDA    $A8
               SBC    $A4
               STA    D620A+1
               STA    D6293+1
               LDA    $A9
               SBC    $A5
               STA    D6210+1
               STA    D6299+1
               SEC
               LDA    $AA
               SBC    $A6
               STA    D6216+1
               STA    D629F+1
               LDA    $AB
               SBC    $A7
               STA    D621C+1
               STA    D62A5+1
               RTS
SUB6170        LDA    #$00
               STA    $BA
L6174          LDX    $BA
               LDA    D6800,X
               STA    D61D1+1
               STA    D61FF+1
               STA    D6257+1
               STA    D625A+1
               STA    D6288+1
D6188          LDA    D6900,X
               STA    D61D1+2
               STA    D61FF+2
               STA    D6257+2
               STA    D625A+2
               STA    D6288+2
               LDA    $A4
               STA    $A0
               LDA    $A5
               STA    $A1
               LDA    $A6
               STA    $A2
               LDA    $A7
               STA    $A3
               LDY    #$27
L61AC          LDA    $A0
D61AE          ADC    #$AC
               STA    $A0
               LDA    $A1
D61B4          ADC    #$AD
               STA    $A1
               AND    #$F0
               STA    D61CC+1
               LDA    $A2
D61BF          ADC    #$AE
               STA    $A2
               LDA    $A3
D61C5          ADC    #$AF
               STA    $A3
               AND    #$0F
               TAX
D61CC          LDA    D6600,X
               AND    #$0F
D61D1          STA:   $8D,Y
               LDA    $A0
D61D6          ADC    #$AC
               STA    $A0
               LDA    $A1
D61DC          ADC    #$AD
               STA    $A1
               AND    #$F0
               STA    D61F4+1
               LDA    $A2
D61E7          ADC    #$AE
               STA    $A2
               LDA    $A3
D61ED          ADC    #$AF
               STA    $A3
               AND    #$0F
               TAX
D61F4          LDA    D6700,X
               AND    #$0F
               STA:   $D0,Y
               STA    RAMWRTON
D61FF          STA:   $8D,Y
               STA    RAMWRTOFF
               DEY
               BPL    L61AC
               LDA    $A4
D620A          ADC    #$B0
               STA    $A4
               LDA    $A5
D6210          ADC    #$B1
               STA    $A5
               LDA    $A6
D6216          ADC    #$B2
               STA    $A6
               LDA    $A7
D621C          ADC    #$B3
               STA    $A7
               LDA    $A4
               STA    $A0
               LDA    $A5
               STA    $A1
               LDA    $A6
               STA    $A2
               LDA    $A7
               STA    $A3
               LDY    #$27
L6232          LDA    $A0
D6234          ADC    #$AC
               STA    $A0
               LDA    $A1
D623A          ADC    #$AD
               STA    $A1
               AND    #$F0
               STA    D6252+1
               LDA    $A2
D6245          ADC    #$AE
               STA    $A2
               LDA    $A3
D624B          ADC    #$AF
               STA    $A3
               AND    #$0F
               TAX
D6252          LDA    D6600,X
               AND    #$F0
D6257          ORA:   $8D,Y
D625A          STA:   $8D,Y
               LDA    $A0
D625F          ADC    #$AC
               STA    $A0
               LDA    $A1
D6265          ADC    #$AD
               STA    $A1
               AND    #$F0
               STA    D627D+1
               LDA    $A2
D6270          ADC    #$AE
               STA    $A2
               LDA    $A3
D6276          ADC    #$AF
               STA    $A3
               AND    #$0F
               TAX
D627D          LDA    D6700,X
               AND    #$F0
               ORA:   $D0,Y
               STA    RAMWRTON
D6288          STA:   $8D,Y
               STA    RAMWRTOFF
               DEY
               BPL    L6232
               LDA    $A4
D6293          ADC    #$B0
               STA    $A4
               LDA    $A5
D6299          ADC    #$B1
               STA    $A5
               LDA    $A6
D629F          ADC    #$B2
               STA    $A6
               LDA    $A7
D62A5          ADC    #$B3
               STA    $A7
               INC    $BA
               LDA    $BA
               CMP    #$18
               BCS    L62B4
               JMP    L6174
L62B4          RTS
SUB62B5        LDA    $030B
               CMP    #$02
               BEQ    L62CC
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$6A
               STA    D6188+2
               INC    $030B
               BNE    L62DA
L62CC          STA    KEYBD
               LDA    HISCR
               DEC    $030B
               LDA    #$69
               STA    D6188+2
L62DA          RTS
SUB62DB        LDA    $B8
               SEC
               SBC    #$28
               STA    $B4
               LDA    $B9
               SEC
               SBC    #$18
               STA    $B6
               LDA    $81
               LDY    #$1E
               JSR    SUB63C1
               STY    $86
               LDA    $82
               LDY    #$14
               JSR    SUB63C1
               SEC
               LDA    $B4
               SBC    $86
               STA    $B4
               SEC
               TYA
               SBC    $B6
               STA    $B6
               LDA    $B6
               LDY    $7F
               JSR    SUB63C1
               STA    $8B
               STY    $8C
               LDA    $B4
               LDY    $80
               JSR    SUB63C1
               SEC
               SBC    $8B
               STA    $C0
               TYA
               SBC    $8C
               STA    $C1
               LDA    $B4
               LDY    $7F
               JSR    SUB63C1
               STA    $8B
               STY    $8C
               LDA    $B6
               LDY    $80
               JSR    SUB63C1
               CLC
               ADC    $8B
               STA    $A2
               TYA
               ADC    $8C
               STA    $A3
               LDX    $90
               LDA    D7500,X
               STA    $C2
               LDA    #$00
               STA    $C3
               JSR    SUB6378
               LDA    $C4
               STA    $A0
               LDA    $C5
               STA    $A1
               LDA    $A2
               STA    $C0
               LDA    $A3
               STA    $C1
               JSR    SUB6378
               LSR    $C5
               ROR    $C4
               LSR    $C5
               ROR    $C4
               LSR    $C5
               ROR    $C4
               LSR    $C5
               ROR    $C4
               LDA    $C4
               STA    $A2
               LDA    $C5
               STA    $A3
               RTS
SUB6378        LDA    #$00
               STA    $C6
               STA    $C7
               LDX    #$10
L6380          LSR    $C1
               ROR    $C0
               BCC    L6391
               LDA    $C6
               CLC
               ADC    $C2
               STA    $C6
               LDA    $C7
               ADC    $C3
L6391          ROR
               STA    $C7
               ROR    $C6
               ROR    $C5
               ROR    $C4
               DEX
               BNE    L6380
               RTS
               HEX    A5C3100D38A5C6E5C085C6A5C7E5C185
               HEX    C7A5C1100D38A5C6E5C285C6A5C7E5C3
               HEX    85C760
SUB63C1        STY    $BC
               STA    $BD
               STA    $92
               STA    $94
               EOR    #$FF
               STA    $96
               STA    $98
               LDA    ($92),Y
               SEC
               SBC    ($96),Y
               STA    $0318
               LDA    ($94),Y
               SBC    ($98),Y
               LDY    $BC
               BPL    L63E2
               SEC
               SBC    $BD
L63E2          LDY    $BD
               BPL    L63E9
               SEC
               SBC    $BC
L63E9          TAY
               LDA    $0318
               RTS
               HEX    00000000000000000000000000000000
               HEX    0000DD00000033333333333333330000
               HEX    00770000000033333333333333330000
               HEX    00000000000033333333333333330000
               HEX    00000000000033333333333333330000
               HEX    00003333333300000000000000003333
               HEX    33333333333300000000000000003333
               HEX    3333333333330000FFFFFFFF00003333
               HEX    3333333333330000FFFFFFFF00003333
               HEX    3333333333330000FFFFFFFF00003333
               HEX    3333333333330000FFFFFFFF00003333
               HEX    33333333333300000000000000003333
               HEX    33333333333300000000000000003333
               HEX    33330000000033333333333333330000
               HEX    00000000000033333333333333330000
               HEX    00000000000033333333333333330000
               HEX    00007700000033333333333333330000
               HEX    00DDCC110000000000000000CC000000
               HEX    0033000000000000000000CCCC000000
               HEX    00000000000000000000CCCC00000000
               HEX    000000000000CCCCCC00CC0000CCCCCC
               HEX    0000000000CCCCCCCCCCCCCCCCCCCCCC
               HEX    CC000000DDDDDDDDDDDDDDDDDDDDDDDD
               HEX    000000DDDDDDDDDDDDDDDDDDDDDDDD00
               HEX    00000099999999999999999999999900
               HEX    00000099999999999999999999999900
               HEX    00000011111111111111111111111100
               HEX    00000000111111111111111111111111
               HEX    00000000003333333333333333333333
               HEX    33000000000033333333333333333333
               HEX    00000000000000666666666666666600
               HEX    00000000000000006666000066660000
               HEX    00006600000000000000000000000000
               HEX    99DD
D6600          HEX    99999999999999000000009999999999
               HEX    11111111111111000000001111111111
               HEX    11111111111100000000111111111111
               HEX    33333333330000000033333333333333
               HEX    33333333000000000000333333333333
               HEX    66666600000000000000006666666666
               HEX    66660000000000000000000066660000
               HEX    000000000000CCDD9900000000000000
               HEX    00000000000000113366000000CC0000
               HEX    00000000000000000000000000CCCC00
               HEX    0000000000000000000000000000CCCC
               HEX    00CCCCCC00000000000000CCCCCC00CC
               ASC    "LLLLL"
               HEX    00000000CCCCCCCCCCCCCCDDDDDDDDDD
               HEX    DD00000000DDDDDDDDDDDDDDDDDDDDDD
               HEX    DDDD00000000DDDDDDDDDD9999999999
               HEX    9999000000009999999999
D6700          ASC    "LLLLLLL"
               HEX    00000000CCCCCCCCCC88888888888888
               HEX    00000000888888888888888888888800
               HEX    00000088888888888899999999990000
               HEX    00009999999999999999999999000000
               HEX    00000099999999999933333300000000
               HEX    00000000333333333333330000000000
               HEX    00000000003333000000000000000066
               HEX    EECC0000000000000000000000000000
               HEX    88993300000066000000000000000000
               HEX    00000000000066660000000000000000
               HEX    00000000000000666600666666000000
               HEX    00000000666666006666666666660000
               HEX    000066666666666666EEEEEEEEEEEE00
               HEX    000000EEEEEEEEEEEEEEEEEEEEEEEEEE
               HEX    00000000EEEEEEEEEECCCCCCCCCCCCCC
               HEX    00000000CCCCCCCCCC
D6800          HEX    008000800080008028A828A828A828A8
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
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D6900          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
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
               HEX    080809090A0A0B0B080809090A0A0B0B
               HEX    080809090A0A0B0B080809090A0A0B0B
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
D7300          HEX    FF0306090C0F1215181B1E2124272A2D
               HEX    303336393B3E414346494B4E50525557
               HEX    595B5E6062646667696B6C6E70717274
               HEX    75767778797A7B7B7C7D7D7E7E7E7E7E
D7340          HEX    7E7E7E7E7E7E7D7D7C7B7B7A79787776
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
               HEX    FF000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000
D7500          HEX    3F3E3D3C3B3A39383736353433323130
               HEX    2F2E2D2C2B2A29282726252423222120
               HEX    1F1E1D1C1B1A19181716151413121110
               HEX    0F0E0D0C0B0A09080706050504040404
               HEX    040404040505060708090A0B0C0D0E0F
               HEX    101112131415161718191A1B1C1D1E1F
               HEX    202122232425262728292A2B2C2D2E2F
               HEX    303132333537393B3D3F3F3F3F3F3F3F
               HEX    3F3E3D3C3B3A39383736353433323130
               HEX    2F2E2D2C2B2A29282726252423222120
               HEX    1F1E1D1C1B1A19181716151413121110
               HEX    0F0E0D0C0B0A09080706050504040404
               HEX    040404040505060708090A0B0C0D0E0F
               HEX    101112131415161718191A1B1C1D1E1F
               HEX    202122232425262728292A2B2C2D2E2F
               HEX    303132333435363738393A3B3C3D3E3F
               HEX    28182028282828282828282828202028
               HEX    20202850202000000000000000000000
               HEX    00000000000000000000515261526152
               HEX    51586152586828585828282828200000
               HEX    00000000000000000000000000000000
               HEX    00006161525251585152516852516862
               HEX    51585868282800000000000000000000
               HEX    00000000000000000000717171716171
               ASC    'qqaqQhaaXQRXaX'
               HEX    00000000000000000000000000000000
               HEX    00000000F57572757575727275727472
               ASC    'rqqtqQhb'
               HEX    00000000000000000000000000000000
               HEX    00000000F575F5F575F5F57575757575
               ASC    'ruuQrtrq'
               HEX    00000000000000000000000000000000
               HEX    00000000F5F5F5F5F5F5F5F575756575
               HEX    75F57858007575720000000000000000
               HEX    00000000000000000000000061656565
               HEX    55515551F5018108B5F8F8F880557575
               HEX    00000000000000000000000000000000
               HEX    0000000072515105725171B555FBF8B7
               HEX    F5B85880001071580000000000000000
               HEX    000000000000000000000000E5000518
               HEX    10E5F557F858B5F8F5F5F780005055E5
               HEX    00000000000000000000000000000000
               HEX    00000000585854585858F5F7FBF7F8F5
               HEX    55B8F8000080F8550000000000000000
               HEX    000000000000000000000000585858D8
               HEX    885855B85FF585F5F8FBF5108820F558
               HEX    00000000000000000000000000000000
               HEX    0000000058F5F8E8F5B0F5F5FFF7F5F7
               HEX    B5FF0580108008D50000000000000000
               HEX    00000000000000000000000058D9F555
               HEX    F750F5B5F855B7805F508010505010F5
               HEX    00000000000000000000000000000000
               HEX    0000000055B5E55807F0F5B58855FFF5
               HEX    F7880820105050D80000000000000000
               HEX    000000000000000000000000B8E858D8
               HEX    508F0555505810008008801018102088
               HEX    00000000000000000000000000000000
               HEX    00000000C8D8D8F58050B08050555810
               HEX    50001050501018E80000000000000000
               HEX    0000000000000000000000005858D8F8
               HEX    88E88008570058B0881018100028D8F5
               HEX    00000000000000000000000000000000
               HEX    0000000088E058F5F8E8F88058155805
               HEX    505808585050F8F80000000000000000
               HEX    00000000000000000000000088E880B8
               HEX    85E8D0584858805850F850088858F8D5
               HEX    00000000000000000000000000000000
               HEX    00000000E8F88558E759F558E855E8E8
               HEX    E85858E5F8D8F9D50000000000000000
               HEX    00000000000000000000000059F88808
               HEX    58F8555955F8F5F588F8F8F8E858F8F5
               HEX    00000000000000000000000000000000
               HEX    00000000585858F0885888E05855F8B5
               ASC    "yuuyuUy5"
               HEX    00000000000000000000000000000000
               HEX    0000000059E8B8B8F55858B8F5F8F5F8
               HEX    E5F555F5F9F558580000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000
