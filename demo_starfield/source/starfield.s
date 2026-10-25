************************************************************
* starfield - STARFIELD (disassembly)
*
* Disassembled from the original binary (6761 bytes, $6000-$7A68).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and license terms.
* Entry point $6000 (NMOS 6502 opcodes only).
************************************************************

               ORG    $6000

KEYBD          EQU    $C000
STROBE         EQU    $C010
RDVBL          EQU    $C019
SPKR           EQU    $C030
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
HIRES          EQU    $C057
AN1OFF         EQU    $C05A
AN1ON          EQU    $C05B
PTRIG          EQU    $C070
HOME           EQU    $FC58
WAIT           EQU    $FCA8

START          JSR    SUB633C
L6003          LDA    KEYBD
               BMI    L600B
               JMP    L60C7
L600B          CMP    #$D2
               BNE    L601F
               LDA    $0300
               BEQ    L6019
               DEC    $0300
               BEQ    L608A
L6019          INC    $0300
               JMP    L608A
L601F          CMP    #$AB
               BNE    L602E
               LDA    $FB
               CMP    #$0A
               BEQ    L602B
               INC    $FB
L602B          JMP    L608A
L602E          CMP    #$AD
               BNE    L603D
               LDA    $FB
               CMP    #$F6
               BEQ    L603A
               DEC    $FB
L603A          JMP    L608A
L603D          CMP    #$AE
               BNE    L6051
               LDA    $0302
               CMP    #$3B
               BCS    L604E
               INC    $0302
               JSR    SUB6326
L604E          JMP    L608A
L6051          CMP    #$AC
               BNE    L606B
               LDA    $0302
               CMP    #$08
               BCC    L6068
               LDX    $0302
               JSR    SUB62E9
               DEC    $0302
               JSR    SUB6326
L6068          JMP    L608A
L606B          CMP    #$CC
               BNE    L607C
               LDA    $0301
               CMP    #$40
               BCS    L6079
               INC    $0301
L6079          JMP    L608A
L607C          CMP    #$CB
               BNE    L6090
               LDA    $0301
               CMP    #$0A
               BCC    L608A
               DEC    $0301
L608A          LDA    STROBE
               JMP    L60C7
L6090          CMP    #$D4
               BNE    L60A4
               LDA    $0304
               BEQ    L609E
               DEC    $0304
               BEQ    L60C4
L609E          INC    $0304
               JMP    L60C4
L60A4          CMP    #$C3
               BNE    L60AE
               JSR    $F3F2
               JMP    L60C4
L60AE          CMP    #$D1
               BNE    L60C4
               LDA    STROBE
               HEX    9C51C09C52C09C54C02058FC4CD003
L60C4          LDA    STROBE
L60C7          LDX    $0302
               LDA    $0300
               BEQ    L60E3
               LDA    $FC
               CLC
               ADC    $FB
               STA    $FC
               LDA    $FC
               TAY
               LDA    D7900,Y
               STA    $7F
               LDA    D7940,Y
               STA    $80
L60E3          DEC    D67B4,X
               BEQ    L610C
               TXA
               AND    #$03
               BNE    L60FC
               DEC    D67B4,X
               BEQ    L610C
               TXA
               AND    #$07
               BNE    L60FC
               DEC    D67B4,X
               BEQ    L610C
L60FC          LDA    $0303
               BEQ    L613D
               JSR    WAIT
               HEX    8037
L6106          DEX
               BPL    L60E3
               JMP    L6003
L610C          LDA    $0301
               STA    D67B4,X
               LDA    $FD
               ADC    D6740,X
               ASL
               BEQ    L6120
               BCC    L6120
               INC    $06
               EOR    $06
L6120          BNE    L6124
               ADC    $06
L6124          STA    D6740,X
               ADC    D66CC,X
               ASL
               BEQ    L6131
               BCC    L6131
               EOR    $06
L6131          STA    $FD
               BNE    L6137
               ADC    $06
L6137          STA    D66CC,X
               JMP    L6106
L613D          LDA    $0304
               BNE    L6145
               JSR    SUB62E9
L6145          HEX    DABC4067BDB467AAAD0003F005BD046C
               HEX    8003BD006C8585FA85DA49FF85DE38B1
               HEX    DAF1DEBC4067100338E5859DF067DABC
               HEX    CC66BDB467AAAD0003F005BD046C8003
               HEX    BD006C8587FA85DA49FF85DE38B1DAF1
               HEX    DEBCCC66100338E5879D8668AD0003D0
               HEX    034C8162A57F8507BC866885DA85D849
               HEX    FF85DE85DCB1D838F1DC8587B1DAF1DE
               HEX    BC8668100338E507A407100438FD8668
               HEX    858806872688A5808507BCF06785DA85
               HEX    D849FF85DE85DCB1D838F1DC8585B1DA
               HEX    F1DEBCF067100338E507A407100438FD
               HEX    F067858606852686A5808507BC866885
               HEX    DA85D849FF85DE85DCB1D838F1DC858B
               HEX    B1DAF1DEBC8668100338E507A4071004
               HEX    38FD8668858C068B268CA57F8507BCF0
               HEX    6785DA85D849FF85DE85DCB1D838F1DC
               HEX    8589B1DAF1DEBCF067100338E507A407
               HEX    100438FDF067858A0689268AA5861865
               HEX    889D8668A58A38E58C9DF067BDF067C9
               HEX    74B0059E3B68800CC980B008A9019D3B
               HEX    68BDF06718698C9DF067BD8668186960
               HEX    9D8668C9C0B03ADAA8B9006A85FEB900
               HEX    6B092085FFBD3B68F010BDF067C90DB0
               HEX    1FAABC006EBD186E800ABDF067AABC00
               HEX    6FBD0070AABDD1688508B1FE050891FE
               HEX    FA4C0661
SUB62E9        HEX    DABC8668B9006A85FEB9006B092085FF
               HEX    BD3B68F010BDF067C90DB01FAABC006E
               HEX    BD186E800ABDF067AABC006FBD0070AA
               HEX    BDD8688508B1FE250891FEFA60
SUB6326        LDA    $0302
               CMP    #$32
               BCC    L6331
               HEX    9C030360
L6331          LDA    #$38
               SEC
               SBC    $0302
               LSR
               STA    $0303
               RTS
SUB633C        STA    STROBE
               JSR    SUB6392
               LDA    #$FF
               JSR    WAIT
               JSR    WAIT
               JSR    WAIT
               JSR    WAIT
               JSR    WAIT
               LDA    TXTCLR
               LDA    LOWSCR
               LDA    MIXCLR
               LDA    HIRES
               LDA    #$20
               STA    $E6
               JSR    $F3F2
               HEX    6406A97185D9A97385DBA97585DDA977
               HEX    85DF64FC64FBE6FB9C0003A9288D0203
               HEX    A9288D01032026639C040360
SUB6392        LDA    $C082
               LDA    #$00
               STA    $22
               JSR    HOME
               LDA    TXTSET
               LDA    LOWSCR
               LDA    #$00
               STA    $030C
               JSR    SUB64CC
               JSR    SUB6512
               JSR    SUB65A8
               JSR    SUB6529
               LDX    #$DF
               LDY    #$68
               JSR    SUB668C
               LDA    $0305
               BNE    L63C9
               LDX    #$20
               LDY    #$69
               JSR    SUB668C
               JMP    L6408
L63C9          CMP    #$7F
               BNE    L63D7
               LDX    #$17
               LDY    #$69
               JSR    SUB668C
               JMP    L6408
L63D7          CMP    #$FF
               BNE    L63E5
               LDX    #$1B
               LDY    #$69
               JSR    SUB668C
               JMP    L6408
L63E5          CMP    #$38
               BNE    L63F3
               LDX    #$24
               LDY    #$69
               JSR    SUB668C
               JMP    L6408
L63F3          CMP    #$EA
               BNE    L6401
               LDX    #$27
               LDY    #$69
               JSR    SUB668C
               JMP    L6408
L6401          LDX    #$2B
               LDY    #$69
               JSR    SUB668C
L6408          JSR    SUB66C1
               LDX    #$E9
               LDY    #$68
               JSR    SUB668C
               LDA    $0307
               BEQ    L6423
               BMI    L642D
               LDX    #$38
               LDY    #$69
               JSR    SUB668C
               JMP    L6434
L6423          LDX    #$33
               LDY    #$69
               JSR    SUB668C
               JMP    L6434
L642D          LDX    #$3E
               LDY    #$69
               JSR    SUB668C
L6434          JSR    SUB66C1
               LDX    #$EF
               LDY    #$68
               JSR    SUB668C
               LDA    $0306
               BMI    L6459
               BEQ    L644F
               LDX    #$49
               LDY    #$69
               JSR    SUB668C
               JMP    L6460
L644F          LDX    #$44
               LDY    #$69
               JSR    SUB668C
               JMP    L6460
L6459          LDX    #$4E
               LDY    #$69
               JSR    SUB668C
L6460          JSR    SUB66C1
               LDX    #$FE
               LDY    #$68
               JSR    SUB668C
               LDA    $0308
               BNE    L6479
               LDX    #$61
               LDY    #$69
               JSR    SUB668C
               JMP    L6487
L6479          LDX    #$5B
               LDY    #$69
               JSR    SUB668C
               LDA    $07
               EOR    #$70
               JSR    $FDF0
L6487          JSR    SUB66C1
               JSR    SUB66C1
               LDA    $0307
               BNE    L64B6
               LDX    #$87
               LDY    #$69
               JSR    SUB668C
               JSR    SUB66C1
               LDX    #$A8
               LDY    #$69
               JSR    SUB668C
               JSR    SUB66C1
               JSR    SUB66C1
               LDX    #$BD
               LDY    #$69
               JSR    SUB668C
               JSR    SUB66C1
               JMP    $03D0
L64B6          LDX    #$7C
               LDY    #$69
               JSR    SUB668C
               LDA    #$FF
               JSR    SUB6673
               JSR    SUB6673
               JSR    SUB6673
               JSR    SUB65D7
               RTS
SUB64CC        LDA    $FBB3
               CMP    #$06
               BNE    L650D
               LDA    $FBC0
               BEQ    L6504
               SEC
               JSR    $FE1F
               BCS    L64FE
               LDA    #$FF
               STA    $0305
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
L64FE          LDA    #$7F
L6500          STA    $0305
               RTS
L6504          STA    $C403
               STA    $C404
               JMP    L6500
L650D          INC    $030C
               BNE    L6504
SUB6512        HEX    80034C2365AD0503C9FFF007A9014C25
               HEX    65A9008D070360
SUB6529        LDA    $0305
               BEQ    L656B
               CMP    #$EA
               BEQ    L6565
               CMP    #$38
               BEQ    L6565
L6536          CMP    RDVBL
               BPL    L6536
L653B          CMP    RDVBL
               BMI    L653B
L6540          INC    D65A7
               LDX    #$09
L6545          DEX
               BNE    L6545
               LDA    $0305
               LDA    $0305
               CMP    RDVBL
               BPL    L6540
               LDA    D65A7
               CMP    #$48
               BCS    L655F
               LDA    #$01
               JMP    L6561
L655F          LDA    #$00
L6561          STA    $0306
               RTS
L6565          LDA    #$FF
               STA    $0306
               RTS
L656B          STA    PTRIG
               STA    $C07F
               STA    AN1ON
L6574          LDA    RDVBL
               BPL    L6574
               STA    PTRIG
               STA    $C07F
               STA    AN1ON
L6582          INC    D65A7
               LDX    #$09
L6587          DEX
               BNE    L6587
               NOP
               NOP
               NOP
               LDA    RDVBL
               BPL    L6582
               STA    AN1OFF
               LDA    D65A7
               CMP    #$10
               BCS    L65A1
               LDA    #$01
               JMP    L65A3
L65A1          LDA    #$00
L65A3          STA    $0306
               RTS
D65A7          HEX    00
SUB65A8        LDA    #$00
               STA    $06
L65AC          LDA    #$07
               ORA    #$C0
               STA    $07
               LDY    #$04
               LDX    #$02
L65B6          LDA    ($06),Y
               STA    $FD
               LDA    ($06),Y
               SEC
               SBC    $FD
               CMP    #$F8
               BNE    L65CB
               DEX
               BNE    L65B6
               INX
L65C7          STX    $0308
               RTS
L65CB          DEC    L65AC+1
               BNE    L65AC
               INC    $030C
               LDX    #$00
               BEQ    L65C7
SUB65D7        LDA    #$20
               STA    $FD
               LDA    $0305
               BMI    L65F0
               LDA    $030A
               BEQ    L65F0
               LDX    #$06
               STX    $07
               LDA    #$80
               STA    $06
               JSR    SUB662D
L65F0          LDX    #$06
               STX    $07
               LDA    #$80
               STA    $06
               JSR    SUB662D
               LDX    #$05
               STX    $07
               LDA    #$80
               STA    $06
               JSR    SUB662D
               LDX    #$05
               STX    $07
               LDA    #$00
               STA    $06
               JSR    SUB662D
               LDX    #$04
               STX    $07
               LDA    #$80
               STA    $06
               JSR    SUB662D
               LDX    #$04
               STX    $07
               LDA    #$00
               STA    $06
               JSR    SUB662D
               LDA    #$30
               JSR    SUB6673
               RTS
SUB662D        STA    D663C+1
               STA    D6655+1
               STX    D663C+2
               STX    D6655+2
               LDY    #$28
L663B          DEY
D663C          LDA    START,Y
               CMP    #$A0
               BEQ    L663B
               INY
L6644          STY    $08
               LDX    #$00
L6648          JSR    SUB665C
               STA    SPKR
               DEX
               BNE    L6648
               LDY    $08
               LDA    #$A0
D6655          STA:   $00,Y
               DEY
               BPL    L6644
               RTS
SUB665C        LDA    $09
               CMP    #$0A
               BCC    L666C
               LDA    $FD
               EOR    #$80
               STA    $FD
               LDA    #$00
               STA    $09
L666C          LDY    $08
               LDA    $FD
               STA    ($06),Y
               RTS
SUB6673        STY    $87
               STX    $85
               TAY
               LDX    #$00
L667A          STY    $89
               JSR    SUB665C
               LDY    $89
               DEX
               BNE    L667A
               DEY
               BNE    L667A
               LDY    $87
               LDX    $85
               RTS
SUB668C        STX    L6694+1
               STY    L6694+2
               LDX    #$00
L6694          LDA    START,X
               BEQ    L66A9
               JSR    $FDF0
               LDA    #$20
               JSR    $FDF0
               DEC    $24
               JSR    SUB66AA
               INX
               BNE    L6694
L66A9          RTS
SUB66AA        TXA
               PHA
               LDY    #$04
L66AE          LDA    SPKR
               LDX    #$A0
L66B3          DEX
               BNE    L66B3
               DEY
               BNE    L66AE
               PLA
               TAX
               LDA    #$80
               JSR    WAIT
               RTS
SUB66C1        LDA    #$A0
               JSR    $FDF0
               LDA    #$8D
               JSR    $FDF0
               RTS
D66CC          HEX    78EC28C4509C78BA04D33CFB5AB56EA1
               HEX    50EF0CF908E81F73787D82878C91969B
               HEX    A0A5AAAFB4B9BE0F6A2DA853F32EB311
               HEX    0926699E3FD07C8A34E52705DEEBF2DD
               HEX    080D13190B03141E251204100A0A0A0A
               HEX    0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
               HEX    0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
               HEX    0A0A0A0A
D6740          HEX    7864503CD8C4B09C460A2B7AE9BAA4FB
               HEX    0F0C2705DEEBF2DD080D13190B03141E
               HEX    25120410110926699E3FD07C8A34E5A0
               HEX    A5AAAFB4B9BE0F6A2DA853F32EB30CF9
               HEX    08E81F73787D82878C91969B0A0A0A0A
               HEX    0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
               HEX    0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
               HEX    0A0A0A0A
D67B4          HEX    01060B10151A1F24292E333802070C11
               HEX    161B20252A2F343903080D12171C2126
               HEX    2B30353A04090E13181D22272C31363B
               HEX    050A0F14191E23282D32373C00000000
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
               HEX    00000000000000000000000000818284
               HEX    8890A0C07E7D7B776F5F3FD6C5D2D3C9
               HEX    CFCEBAA000C3D0D5BAA000D2C5C6D2C5
               ASC    "SH RATE: "
               HEX    00CDCFC3CBC9CEC7C2CFC1D2C4BAA000
               ASC    "ZIPCHIP: "
               HEX    00C9C9E500C9C9E7F300C9C9E300DDDB
               HEX    00DDDBAB00D5CECBCECFD7CE00B6B5B0
               HEX    B200B6B5C3B0B200B6B5B8B1B600B5B0
               HEX    C8DA00B6B0C8DA00CECFD4A0C4C5D4C5
               HEX    C3D4C5C400D3CCCFD4A300CECFCEC500
               ASC    "DETECTED AND DISABLED"
               HEX    00D3D9D3D4C5CDA0CFCBA100D3D9D3D4
               ASC    "EM RESSOURCES NOT SUFFICIENT"
               HEX    00D4CFA0D2D5CEA0D4C8C9D3A0D0D2CF
               ASC    "GRAM!"
               HEX    00D3CFD2D2D9A0ADA0D0D2CFC7D2C1CD
               ASC    " TERMINATES NOW!"
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000080808080
               HEX    80808080000000000000000080808080
               HEX    80808080000000000000000080808080
               HEX    80808080000000000000000080808080
               HEX    808080802828282828282828A8A8A8A8
               HEX    A8A8A8A82828282828282828A8A8A8A8
               HEX    A8A8A8A82828282828282828A8A8A8A8
               HEX    A8A8A8A82828282828282828A8A8A8A8
               HEX    A8A8A8A85050505050505050D0D0D0D0
               HEX    D0D0D0D05050505050505050D0D0D0D0
               HEX    D0D0D0D05050505050505050D0D0D0D0
               HEX    D0D0D0D05050505050505050D0D0D0D0
               HEX    D0D0D0D0000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000004080C1014181C0004080C
               HEX    1014181C0105090D1115191D0105090D
               HEX    1115191D02060A0E12161A1E02060A0E
               HEX    12161A1E03070B0F13171B1F03070B0F
               HEX    13171B1F0004080C1014181C0004080C
               HEX    1014181C0105090D1115191D0105090D
               HEX    1115191D02060A0E12161A1E02060A0E
               HEX    12161A1E03070B0F13171B1F03070B0F
               HEX    13171B1F0004080C1014181C0004080C
               HEX    1014181C0105090D1115191D0105090D
               HEX    1115191D02060A0E12161A1E02060A0E
               HEX    12161A1E03070B0F13171B1F03070B0F
               HEX    13171B1F000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000FFF8F1EAE4DED8D3CEC9C4C0
               HEX    BCB7B4B0ACA9A6A29F9C9A9794928F8D
               HEX    8B88868482807E7C7B7977767472716F
               HEX    6E6D6B6A69676665646261605F5E5D5C
               HEX    5B5A5958FFF3E8DED5CCC4BDB6B0AAA5
               HEX    9F9B96928E8A8683807C797774716F6D
               ASC    'jhfdb`^][YXVUTRQPNMLKJIHGFEDCBAA@?>='
               HEX    FFE8D5C4B6AA9F968E868079746F6A66
               HEX    625E5B585552504D4B4947454341403E
               HEX    3D3B3A3937363534333231302F2E2E2D
               HEX    2C2B2B2A292828272726262524242323
               HEX    DED5CCC4BDB6B0AA9F968E868079746F
               HEX    6A66625E5B5855504B4743403D3A3735
               HEX    332F2C292724211E1B19171614131211
               HEX    0F0E0D0C0B0A0A090908080707070706
               HEX    06060605050505050505040404040404
               HEX    04040404030303030303030303030303
               HEX    03030303030202020202020202020202
               HEX    02020202020202020202020202010101
               HEX    01010101010101010101010101010101
               HEX    01010101010101010101010101000000
               HEX    0000000000FFF0E8D5C4B6AA9F968E86
               HEX    80797A6F6A66625E5B585552504D4B49
               HEX    47454341403E3D3B3A39373635343332
               HEX    31302F2E2C292724211E1B1917161413
               HEX    12110F0E0D0C0B0A0A09090808070707
               HEX    07060606060505050505050504040400
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    24242425252525252525262626262626
               HEX    26272727272727270405060001020304
               HEX    05060001020304050600010203040506
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
               HEX    00000000000000010101010101010202
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
               HEX    00010203040506000102030405060001
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
D7900          HEX    FF0306090C0F1215181B1E2124272A2D
               HEX    303336393B3E414346494B4E50525557
               HEX    595B5E6062646667696B6C6E70717274
               HEX    75767778797A7B7B7C7D7D7E7E7E7E7E
D7940          HEX    7E7E7E7E7E7E7D7D7C7B7B7A79787776
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
