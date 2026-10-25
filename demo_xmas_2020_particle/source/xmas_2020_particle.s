************************************************************
* xmas_2020_particle - GALTON (disassembly)
*
* Disassembled from the original binary (9880 bytes, $6000-$8697).
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
RDKEY          EQU    $FD0C
COUT           EQU    $FDED

START          JSR    SUB69E8
               JSR    SUB641B
               JSR    SUB752A
               JSR    SUB6A30
               JSR    SUB6A3F
               JSR    SUB6A82
               JSR    SUB6AC3
               JSR    SUB684D
               JSR    SUB7568
               LDA    $0370
               BNE    L6023
               JMP    L6030
L6023          JSR    SUB6884
               JSR    SUB6985
               JSR    SUB6B84
               JSR    SUB6C06
               CLI
L6030          LDA    #$64
               STA    $0325
               LDA    #$04
               STA    $24
               LDA    #$0A
               STA    $25
               JSR    VTAB
               LDX    #$76
               LDY    #$67
               JSR    SUB6AF1
               JSR    RDKEY
               LDA    STROBE
               JSR    SUB773F
               JSR    SUB759D
               JSR    SUB6491
               JSR    SUB63F3
               LDA    #$4F
               STA    $0300
               LDA    #$06
               STA    $23
L6062          LDA    D8300,X
               STA    $20
               LDA    D8400,X
               STA    $21
               JSR    SUB76C1
               INC    $22
               LDX    $22
               CPX    #$66
               BNE    L6062
               LDX    #$00
               STX    $22
               LDA    STROBE
L607E          LDA    $0301
               BEQ    L6086
               JMP    L61C3
L6086          LDX    $22
               LDA    D8300,X
               STA    $20
               LDA    D8400,X
               STA    $21
               INC    $21
               JSR    SUB7654
               LDA    $29
               BNE    L60A5
               LDY    #$00
               JSR    SUB639F
               DEC    $21
               JMP    L62F6
L60A5          JSR    SUB63E5
               BNE    L60DB
               INC    $20
               JSR    SUB7654
               LDA    $29
               BNE    L60BF
               LDY    #$00
               JSR    SUB639F
               DEC    $20
               DEC    $21
               JMP    L62F6
L60BF          DEC    $20
               DEC    $20
               JSR    SUB7654
               LDA    $29
               BEQ    L60CF
               INC    $20
               JMP    L610C
L60CF          LDY    #$00
               JSR    SUB639F
               INC    $20
               DEC    $21
               JMP    L62F6
L60DB          DEC    $20
               JSR    SUB7654
               LDA    $29
               BNE    L60F0
               LDY    #$00
               JSR    SUB639F
               INC    $20
               DEC    $21
               JMP    L62F6
L60F0          INC    $20
               INC    $20
               JSR    SUB7654
               LDA    $29
               BEQ    L6100
               DEC    $20
               JMP    L610C
L6100          LDY    #$00
               JSR    SUB639F
               DEC    $20
               DEC    $21
               JMP    L62F6
L610C          LDX    $22
               LDA    D8600,X
               BNE    L6116
               JMP    L62FD
L6116          DEC    $21
               JSR    SUB63E5
               BNE    L616F
               INC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L612A
               CMP    #$02
               BEQ    L613B
L612A          JSR    SUB7654
               LDA    $29
               BNE    L613B
               LDY    #$01
               JSR    SUB63C1
               DEC    $20
               JMP    L62F6
L613B          DEC    $20
               DEC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L6154
               CMP    #$02
               BEQ    L6154
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L6154          JSR    SUB7654
               LDA    $29
               BEQ    L6165
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L6165          LDY    #$02
               JSR    SUB63C1
               INC    $20
               JMP    L62F6
L616F          DEC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L617C
               CMP    #$01
               BEQ    L618D
L617C          JSR    SUB7654
               LDA    $29
               BNE    L618D
               LDY    #$02
               JSR    SUB63C1
               INC    $20
               JMP    L62F6
L618D          INC    $20
               INC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L61A6
               CMP    #$01
               BEQ    L61A6
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L61A6          JSR    SUB7654
               LDA    $29
               BNE    L61B7
               LDY    #$01
               JSR    SUB63C1
               DEC    $20
               JMP    L62F6
L61B7          DEC    $20
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L61C3          LDX    $22
               LDA    D8300,X
               STA    $20
               LDA    D8400,X
               STA    $21
               DEC    $21
               JSR    SUB7654
               LDA    $29
               BNE    L61E2
               LDY    #$00
               JSR    SUB639F
               INC    $21
               JMP    L62F6
L61E2          JSR    SUB63E5
               BNE    L6218
               INC    $20
               JSR    SUB7654
               LDA    $29
               BNE    L61FC
               LDY    #$00
               JSR    SUB639F
               DEC    $20
               INC    $21
               JMP    L62F6
L61FC          DEC    $20
               DEC    $20
               JSR    SUB7654
               LDA    $29
               BEQ    L620C
               INC    $20
               JMP    L6249
L620C          LDY    #$00
               JSR    SUB639F
               INC    $20
               INC    $21
               JMP    L62F6
L6218          DEC    $20
               JSR    SUB7654
               LDA    $29
               BNE    L622D
               LDY    #$00
               JSR    SUB639F
               INC    $20
               INC    $21
               JMP    L62F6
L622D          INC    $20
               INC    $20
               JSR    SUB7654
               LDA    $29
               BEQ    L623D
               DEC    $20
               JMP    L6249
L623D          LDY    #$00
               JSR    SUB639F
               DEC    $20
               INC    $21
               JMP    L62F6
L6249          INC    $21
               JSR    SUB63E5
               BNE    L62A2
               INC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L625D
               CMP    #$02
               BEQ    L626E
L625D          JSR    SUB7654
               LDA    $29
               BNE    L626E
               LDY    #$01
               JSR    SUB639F
               DEC    $20
               JMP    L62F6
L626E          DEC    $20
               DEC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L6287
               CMP    #$02
               BEQ    L6287
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L6287          JSR    SUB7654
               LDA    $29
               BEQ    L6298
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L6298          LDY    #$02
               JSR    SUB639F
               INC    $20
               JMP    L62F6
L62A2          DEC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L62AF
               CMP    #$01
               BEQ    L62C0
L62AF          JSR    SUB7654
               LDA    $29
               BNE    L62C0
               LDY    #$02
               JSR    SUB639F
               INC    $20
               JMP    L62F6
L62C0          INC    $20
               INC    $20
               LDX    $22
               LDA    D8500,X
               BEQ    L62D9
               CMP    #$01
               BEQ    L62D9
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L62D9          JSR    SUB7654
               LDA    $29
               BNE    L62EA
               LDY    #$01
               JSR    SUB639F
               DEC    $20
               JMP    L62F6
L62EA          DEC    $20
               LDX    $22
               LDA    #$00
               STA    D8500,X
               JMP    L62FD
L62F6          LDA    #$00
               STA    $23
               JSR    SUB76C1
L62FD          LDA    KEYBD
               BPL    L6327
               BIT    STROBE
               CMP    #$D1
               BEQ    L6336
               CMP    #$D2
               BNE    L6320
               LDA    $0301
               EOR    #$FF
               AND    #$01
               STA    $0301
               LDA    #$00
               STA    $10
               STA    $11
               JMP    L6327
L6320          CMP    #$D4
               BNE    L6327
               JSR    SUB63F3
L6327          INC    $22
               LDX    $22
               CPX    #$66
               BNE    L6333
               LDX    #$00
               STX    $22
L6333          JMP    L607E
L6336          LDA    STROBE
               JSR    SUB75D9
               LDA    #$0E
               STA    $24
               LDX    #$6A
               LDY    #$67
               JSR    SUB6AF1
               JSR    SUB6AEB
               JSR    SUB6AEB
               JSR    SUB6AEB
               LDA    #$01
               STA    $24
               LDX    #$FC
               LDY    #$67
               JSR    SUB6AF1
               JSR    SUB6AEB
               JSR    SUB6AEB
               JSR    SUB6AEB
               JSR    SUB6AEB
               LDA    #$06
               STA    $24
               LDX    #$31
               LDY    #$68
               JSR    SUB6AF1
               JSR    SUB6AEB
               JSR    SUB6AEB
               JSR    SUB6AEB
               JSR    SUB6AEB
               LDA    #$0D
               STA    $24
               LDX    #$23
               LDY    #$68
               JSR    SUB6AF1
               JSR    SUB6AEB
L638C          LDA    KEYBD
               BPL    L638C
               LDA    STROBE
               SEI
               JSR    SUB691D
               JSR    SUB7573
               JMP    $03D0
               HEX    60
SUB639F        LDX    $22
               TYA
               STA    D8500,X
               LDA    $20
               STA    D8300,X
               LDA    $21
               STA    D8400,X
               LDA    D8600,X
               CMP    #$0A
               BCS    L63B9
               INC    D8600,X
L63B9          LDA    #$06
               STA    $23
               JSR    SUB76C1
               RTS
SUB63C1        LDX    $22
               TYA
               STA    D8500,X
               LDA    $20
               STA    D8300,X
               LDA    $21
               STA    D8400,X
               CMP    #$0B
               BCC    L63DD
               LDA    D8600,X
               BEQ    L63DD
               DEC    D8600,X
L63DD          LDA    #$06
               STA    $23
               JSR    SUB76C1
               RTS
SUB63E5        LDA    $0300
               ASL
               BCC    L63ED
               EOR    #$1D
L63ED          STA    $0300
               AND    #$01
               RTS
SUB63F3        LDA    #$27
               STA    $20
               LDA    #$28
               STA    $27
               LDA    #$0A
               STA    $21
               LDA    $0302
               BNE    L6409
               LDA    #$00
               JMP    L640B
L6409          LDA    #$0F
L640B          STA    $23
               JSR    SUB7A54
               LDA    $0302
               EOR    #$FF
               AND    #$01
               STA    $0302
               RTS
SUB641B        JSR    SETTXT
               JSR    HOME
               LDA    #$00
               STA    $0325
               LDA    #$0E
               STA    $24
               LDX    #$6A
               LDY    #$67
               JSR    SUB6AF1
               LDA    #$50
               STA    $0325
               LDA    #$10
               STA    $24
               LDA    #$12
               STA    $25
               JSR    VTAB
               LDX    #$AC
               LDY    #$67
               JSR    SUB6AF1
               LDA    #$08
               STA    $24
               LDA    #$14
               STA    $25
               JSR    VTAB
               LDX    #$B5
               LDY    #$67
               JSR    SUB6AF1
               LDA    #$08
               STA    $24
               LDA    #$15
               STA    $25
               JSR    VTAB
               LDX    #$CF
               LDY    #$67
               JSR    SUB6AF1
               LDA    #$08
               STA    $24
               LDA    #$16
               STA    $25
               JSR    VTAB
               LDX    #$E8
               LDY    #$67
               JSR    SUB6AF1
               LDA    #$0B
               STA    $24
               LDA    #$0A
               STA    $25
               JSR    VTAB
               LDX    #$97
               LDY    #$67
               JSR    SUB6AF1
               RTS
SUB6491        LDA    #$0D
               STA    $23
               LDA    #$00
               STA    $20
               STA    $21
               LDA    #$4F
               STA    $27
               JSR    SUB7A54
               LDA    #$2F
               STA    $21
               STA    $28
               JSR    SUB7A54
               LDA    #$00
               STA    $21
               STA    $20
               JSR    SUB7B01
               LDA    #$4F
               STA    $20
               JSR    SUB7B01
               LDA    #$00
               STA    $20
               LDA    #$08
               STA    $21
               LDA    #$16
               STA    $27
               LDA    #$03
               STA    $28
               JSR    SUB7770
               LDA    #$4F
               STA    $20
               LDA    #$08
               STA    $21
               LDA    #$39
               STA    $27
               LDA    #$03
               STA    $28
               JSR    SUB7770
               LDA    #$17
               STA    $20
               LDA    #$03
               STA    $21
               JSR    SUB76C1
               LDA    #$38
               STA    $20
               JSR    SUB76C1
               LDA    #$18
               STA    $20
               JSR    SUB76C1
               LDA    #$37
               STA    $20
               JSR    SUB76C1
               LDA    #$02
               STA    $21
               LDA    #$00
               STA    $28
               LDA    #$3B
               STA    $20
               JSR    SUB7B01
               LDA    #$14
               STA    $20
               JSR    SUB7B01
               LDA    #$0F
               STA    $23
               LDA    #$1D
               STA    $20
               LDA    #$32
               STA    $27
               LDA    #$0A
               STA    $21
               JSR    SUB7A54
               LDA    #$15
               STA    $20
               LDA    #$1E
               STA    $27
               LDA    #$05
               STA    $21
               LDA    #$0A
               STA    $28
               JSR    SUB7770
               LDA    #$15
               STA    $20
               LDA    #$1C
               STA    $27
               LDA    #$06
               STA    $21
               LDA    #$0A
               STA    $28
               JSR    SUB7770
               LDA    #$3A
               STA    $20
               LDA    #$31
               STA    $27
               LDA    #$05
               STA    $21
               LDA    #$0A
               STA    $28
               JSR    SUB7770
               LDA    #$3A
               STA    $20
               LDA    #$33
               STA    $27
               LDA    #$06
               STA    $21
               LDA    #$0A
               STA    $28
               JSR    SUB7770
               LDA    #$00
               STA    $23
               LDA    #$17
               STA    $20
               LDA    #$06
               STA    $21
               JSR    SUB76C1
               LDA    #$38
               STA    $20
               JSR    SUB76C1
               LDA    #$19
               STA    $20
               LDA    #$07
               STA    $21
               JSR    SUB76C1
               LDA    #$36
               STA    $20
               JSR    SUB76C1
               LDA    #$0C
               STA    $23
               LDA    #$25
               STA    $20
               LDA    #$2A
               STA    $27
               LDA    #$0D
               STA    $21
               JSR    SUB7A54
               LDA    #$21
               STA    $20
               LDA    #$26
               STA    $27
               LDA    #$10
               STA    $21
               JSR    SUB7A54
               LDA    #$29
               STA    $20
               LDA    #$2E
               STA    $27
               JSR    SUB7A54
               LDA    #$25
               STA    $20
               LDA    #$2A
               STA    $27
               LDA    #$13
               STA    $21
               JSR    SUB7A54
               LDA    #$1D
               STA    $20
               LDA    #$22
               STA    $27
               JSR    SUB7A54
               LDA    #$2D
               STA    $20
               LDA    #$32
               STA    $27
               JSR    SUB7A54
               LDA    #$21
               STA    $20
               LDA    #$26
               STA    $27
               LDA    #$16
               STA    $21
               JSR    SUB7A54
               LDA    #$29
               STA    $20
               LDA    #$2E
               STA    $27
               JSR    SUB7A54
               LDA    #$31
               STA    $20
               LDA    #$36
               STA    $27
               JSR    SUB7A54
               LDA    #$19
               STA    $20
               LDA    #$1E
               STA    $27
               JSR    SUB7A54
               LDA    #$25
               STA    $20
               LDA    #$2A
               STA    $27
               LDA    #$19
               STA    $21
               JSR    SUB7A54
               LDA    #$1D
               STA    $20
               LDA    #$22
               STA    $27
               JSR    SUB7A54
               LDA    #$2D
               STA    $20
               LDA    #$32
               STA    $27
               JSR    SUB7A54
               LDA    #$35
               STA    $20
               LDA    #$3A
               STA    $27
               JSR    SUB7A54
               LDA    #$15
               STA    $20
               LDA    #$1A
               STA    $27
               JSR    SUB7A54
               LDA    #$21
               STA    $20
               LDA    #$26
               STA    $27
               LDA    #$1C
               STA    $21
               JSR    SUB7A54
               LDA    #$29
               STA    $20
               LDA    #$2E
               STA    $27
               JSR    SUB7A54
               LDA    #$31
               STA    $20
               LDA    #$36
               STA    $27
               JSR    SUB7A54
               LDA    #$19
               STA    $20
               LDA    #$1E
               STA    $27
               JSR    SUB7A54
               LDA    #$11
               STA    $20
               LDA    #$16
               STA    $27
               JSR    SUB7A54
               LDA    #$39
               STA    $20
               LDA    #$3E
               STA    $27
               JSR    SUB7A54
               LDA    #$05
               STA    D7595
               LDA    #$03
               STA    D7596
               LDA    #$01
               STA    $23
               JSR    SUB787B
               LDA    #$4A
               STA    D7595
               JSR    SUB787B
               LDA    #$0F
               STA    $23
               LDA    #$0B
               STA    $20
               LDA    #$44
               STA    $27
               LDA    #$28
               STA    $21
               JSR    SUB7A54
               LDA    #$29
               STA    $21
               JSR    SUB7A54
               LDA    #$20
               STA    $21
               LDA    #$28
               STA    $28
               LDA    #$0B
               STA    $20
               JSR    SUB7B01
               LDA    #$0C
               STA    $20
               JSR    SUB7B01
               LDA    #$13
               STA    $20
               JSR    SUB7B01
               LDA    #$14
               STA    $20
               JSR    SUB7B01
               LDA    #$1B
               STA    $20
               JSR    SUB7B01
               LDA    #$1C
               STA    $20
               JSR    SUB7B01
               LDA    #$23
               STA    $20
               JSR    SUB7B01
               LDA    #$24
               STA    $20
               JSR    SUB7B01
               LDA    #$2B
               STA    $20
               JSR    SUB7B01
               LDA    #$2C
               STA    $20
               JSR    SUB7B01
               LDA    #$33
               STA    $20
               JSR    SUB7B01
               LDA    #$34
               STA    $20
               JSR    SUB7B01
               LDA    #$3B
               STA    $20
               JSR    SUB7B01
               LDA    #$3C
               STA    $20
               JSR    SUB7B01
               LDA    #$43
               STA    $20
               JSR    SUB7B01
               LDA    #$44
               STA    $20
               JSR    SUB7B01
               RTS
               HEX    E610D018E611A511C902D010AD010349
               HEX    FF29018D0103A9008510851160B8ADC2
               ASC    "IT-SHACK"
               HEX    00D0F2E5F3F3A0E1A0EBE5F9A0F4EFA0
               ASC    "start the demo..."
               HEX    00CCEFE1E4E9EEE7A0E4E5EDEFA0E4E1
               HEX    F4E1AEAEAE00CFF0F4E9EFEEF3BA00BC
               ASC    "T>: Toggle Particle Gate"
               HEX    00BCD2BEBAA0D2E5F6E5F2F3E5A0C7F2
               ASC    "avitation"
               HEX    00BCD1BEBAA0D1F5E9F4A0D8CDC1D3AD
               HEX    C4E5EDEF00CDC5D2D2D9A0D8ADCDC1D3
               ASC    " 2020 AND A HAPPY NEW YEAR!"
               HEX    00BCD0D2C5D3D3A0C1A0CBC5D9BE00CD
               ASC    "ORE INFO: WWW.GOLOMBECK.EU"
               HEX    00
SUB684D        LDA    #$00
               STA    $08
L6851          LDA    #$07
               STA    $0371
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L685E          LDA    ($08),Y
               STA    $10
               LDA    ($08),Y
               SEC
               SBC    $10
               CMP    #$F8
               BEQ    L6873
               CMP    #$F9
               BEQ    L6873
               CMP    #$F7
               BNE    L687B
L6873          DEX
               BNE    L685E
               INX
L6877          STX    $0370
               RTS
L687B          DEC    L6851+1
               BNE    L6851
               LDX    #$00
               BEQ    L6877
SUB6884        LDA    $09
               STA    D68FD+2
               STA    D6900+2
               STA    D6903+2
               STA    D6906+2
               STA    D690B+2
               STA    D6910+2
               STA    D6915+2
               STA    D691A+2
               STA    D6954+2
               STA    D6959+2
               STA    D695C+2
               STA    D6961+2
               STA    D6966+2
               STA    D696F+2
               STA    D6974+2
               STA    D6977+2
               STA    D697C+2
               STA    D6981+2
               STA    D6934+2
               STA    D6939+2
               STA    D693E+2
               STA    D6941+2
               STA    D6946+2
               STA    D694B+2
               STA    D6B4D
               STA    D6B50
               STA    D6B55
               STA    D6B58
               STA    D6B5D
               STA    D6B60
               STA    D6B63
               STA    D6B66
               STA    D6B6B
               STA    D6B6E
               STA    D6B71
               STA    D6B74
               STA    SUB694F+2
               STA    SUB696A+2
               STA    D6B26
               LDA    #$FF
D68FD          STA    $C402
D6900          STA    $C403
D6903          STA    $C482
D6906          STA    $C483
               LDA    #$00
D690B          STA    $C400
               LDA    #$04
D6910          STA    $C400
               LDA    #$00
D6915          STA    $C480
               LDA    #$04
D691A          STA    $C480
SUB691D        LDY    #$0E
               LDX    #$00
L6921          JSR    SUB696A
               DEY
               BPL    L6921
               LDY    #$0E
               LDX    #$00
L692B          JSR    SUB694F
               DEY
               BPL    L692B
               SEI
               LDA    #$40
D6934          STA    $C40B
               LDA    #$7F
D6939          STA    $C40E
               LDA    #$C0
D693E          STA    $C40D
D6941          STA    $C40E
               LDA    #$E7
D6946          STA    $C404
               LDA    #$4F
D694B          STA    $C405
               RTS
SUB694F        STY    $C401
               LDA    #$07
D6954          STA    $C400
               LDA    #$04
D6959          STA    $C400
D695C          STX    $C401
               LDA    #$06
D6961          STA    $C400
               LDA    #$04
D6966          STA    $C400
               RTS
SUB696A        STY    $C481
               LDA    #$07
D696F          STA    $C480
               LDA    #$04
D6974          STA    $C480
D6977          STX    $C481
               LDA    #$06
D697C          STA    $C480
               LDA    #$04
D6981          STA    $C480
               RTS
SUB6985        LDA    $0372
               CMP    #$FF
               BEQ    L69B0
               CMP    #$EA
               BEQ    L699F
               CMP    #$38
               BEQ    L699F
               LDA    #$1E
               STA    $03FE
               LDA    #$6B
               STA    $03FF
               RTS
L699F          LDA    $C083
               LDA    $C083
               LDA    #$1E
               STA    $FFFE
               LDA    #$6B
               STA    $FFFF
               RTS
L69B0          LDA    #$C0
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
               LDA    #$1E
               STA    $03C7
               LDA    #$6B
               STA    $03C8
               RTS
SUB69E8        LDA    #$FF
               STA    $07
               LDA    $FBB3
               CMP    #$06
               BEQ    L69FB
               STA    $0372
               LDA    #$DF
               STA    $07
               RTS
L69FB          LDA    $FBC0
               BEQ    L6A2C
               SEC
               JSR    $FE1F
               BCS    L6A26
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
L6A26          LDA    #$7F
               STA    $0372
               RTS
L6A2C          STA    $0372
               RTS
SUB6A30        LDA    #$00
               BRA    L6A36
               HEX    F005
L6A36          INC
               HEX    EB3AEB1A8D780360
SUB6A3F        LDA    #$5A
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               LDX    #$00
L6A4F          LDA    D6A55,X
               INX
               BNE    L6A4F
D6A55          LDA    AN2OFF
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L6A7C
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L6A7C
               LDA    #$00
               STA    AN1OFF
               LDA    #$A5
               STA    AN1OFF
               LDA    #$01
               STA    $0374
               RTS
L6A7C          LDA    #$00
               STA    $0374
               RTS
SUB6A82        LDA    $0372
               LDX    #$00
               CMP    #$7F
               BEQ    L6A8D
               BNE    L6ABE
L6A8D          LDY    #$04
               LDA    #$6A
L6A91          STA    $C06A
               DEY
               BNE    L6A91
               LDA    #$00
               STA    $C06B
               LDY    $C06B
               CPY    #$80
               BNE    L6ABE
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
L6ABE          TXA
               STA    $0375
               RTS
SUB6AC3        LDA    $C083
               LDA    $C083
               LDA    $D000
               INC    $D000
               CMP    $D000
               BEQ    L6ADF
               DEC    $D000
               LDA    #$01
               STA    $0376
               JMP    L6AE4
L6ADF          LDA    #$00
               STA    $0376
L6AE4          LDA    $C081
               RTS
               HEX    A90760
SUB6AEB        LDA    #$8D
               JSR    COUT
               RTS
SUB6AF1        STX    L6AF9+1
               STY    L6AF9+2
               LDX    #$00
L6AF9          LDA    $1000,X
               BEQ    L6B1D
               CMP    #$E1
               BCC    L6B08
               CMP    #$FB
               BCS    L6B08
               AND    $07
L6B08          JSR    COUT
               LDA    $0325
               BEQ    L6B1A
               TXA
               PHA
               LDA    $0325
               JSR    WAIT
               PLA
               TAX
L6B1A          INX
               BNE    L6AF9
L6B1D          RTS
               HEX    08488A4898482C04
D6B26          HEX    C4AD8BC0A57BF0034C7D6B201C71A57C
               HEX    F00820846B4C7D6BA9
D6B3F          HEX    00AAB565E00DD004C9FFF02F8E01
D6B4D          HEX    C48E81
D6B50          HEX    C4A0078C00
D6B55          HEX    C48C80
D6B58          HEX    C4A0048C00
D6B5D          HEX    C48C80
D6B60          HEX    C48D01
D6B63          HEX    C48D81
D6B66          HEX    C4A9068D00
D6B6B          HEX    C48D80
D6B6E          HEX    C48C00
D6B71          HEX    C48C80
D6B74          HEX    C4E8E00E30C7204D6768A868AA682840
SUB6B84        LDX    #$00
               LDA    #$00
               STA    $7B
               STA    $7C
               STA    $7D
               STA    D70C1
               STA    D7121
               STA    D711D
L6B97          STA    $65,X
               INX
               CPX    #$16
               BNE    L6B97
               LDX    #$00
L6BA0          STA    $80,X
               INX
               CPX    #$78
               BNE    L6BA0
               RTS
SUB6BA8        LDA    #$00
               JSR    SUB6BD9
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
SUB6BD9        STY    $7E
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
SUB6C06        LDA    #$00
               STA    $7C
               LDX    #$78
L6C0C          DEX
               STA    $80,X
               BNE    L6C0C
               STA    D71EC
               STA    D71EE
               STA    D7216
               STA    D721B
               STA    D7222
               STA    D7227
               STA    D7271
               STA    D7279
               STA    D7218
               STA    D7252
               STA    D7254
               STA    D725F
               STA    D7268
               STA    D6E45
               STA    D70C1
               STA    D711D
               STA    D7121
               LDA    #$0A
               STA    $80
               STA    $A8
               STA    $D0
               LDX    #$00
               JSR    SUB6BA8
               LDX    #$28
               JSR    SUB6BA8
               LDX    #$50
               JSR    SUB6BA8
               LDA    $2064
               STA    D7132
               LDA    $2066
               STA    D6B3F
               LDX    #$06
               LDA    $200D
               SEC
               SBC    #$30
               CMP    #$09
               BCS    L6C74
               TAX
L6C74          LDA    #$2C
               CPX    #$06
               BCC    L6C7C
               ADC    #$1F
L6C7C          STA    D6FF1
               CPX    #$05
               LDA    #$00
               STA    D6CA7+1
               LDY    #$11
               LDX    #$2A
               BCS    L6C90
               DEY
               TYA
               LDX    #$EA
L6C90          STY    D6C9E+1
               STA    D6CA0+1
               STX    D6CB8
               LDY    #$10
               LDX    #$10
L6C9D          CLC
D6C9E          LDA    #$D1
D6CA0          ADC    #$D1
               STA    D6CA0+1
               LDA    #$00
D6CA7          ADC    #$D1
               STA    D6CA7+1
               LDA    #$00
               ADC    #$FF
               EOR    #$FF
               STA    D6CB9+1
               PHA
L6CB6          PLA
               PHA
D6CB8          NOP
D6CB9          LDA    #$D1
               ADC    #$00
               STA    D742A,Y
               INY
               PLA
               ADC    D6CA0+1
               PHA
               LDA    D6CB9+1
               ADC    D6CA7+1
               STA    D6CB9+1
               INX
               TXA
               AND    #$0F
               BNE    L6CB6
               PLA
               LDA    D6CA0+1
               CMP    #$77
               BNE    L6CE0
               INC    D6CA0+1
L6CE0          TXA
               BNE    L6C9D
               RTS
               HEX    B583D005958B4C616EB586857AB58585
               HEX    79B5928578B5918577B59A0A0AA8B179
               HEX    8DF76DC8B1798DB26DC8B17975969589
               HEX    C8B1797597958A2CB26D50069597B589
               HEX    959618B499B177758C1002A900C96090
               HEX    02A95F207E7218B4819875898D4C6DB5
               HEX    8A75828D526D18A9D169D19589A9D169
               HEX    D1290F958AB5983054F052D698D04E18
               HEX    9875A09581A8B58275A19582B5A29598
               HEX    B5A3D039B5A1101898D5A5B582F5A650
               HEX    024980301C98D5A5D006B582D5A6F011
               HEX    B5A1301998D5A5B582F5A65002498030
               HEX    0CB5A4958CA900959895819582A9D129
               HEX    0F2CF76D101DA8B59D38500CE90F5002
               HEX    4980100FF69DD00AE9F1500249803003
               HEX    D69D9818759D3007C9109005A90F2CA9
               HEX    008DEF6DB5800A0A0A0A09D1A8B92A74
               HEX    958BA9D14AA8B00AB584F006B58B0910
               HEX    958BADF76D0A0A0AA9202CB26D08101E
               HEX    9809F0B003290F18759B8D286E28F002
               HEX    959B18A9D16D18728D18724C3E6E9818
               HEX    759C8DEE7128F002959CADB26D4A2948
               HEX    09
D6E45          HEX    D18D456EF69AB59AD5889004B587959A
               HEX    F699B599D5949004B59395994E456EB5
               HEX    95F010D695D00CB58349019583A9CAB5
               HEX    9F959560D68E60A20020886EA2282088
               HEX    6EA250A0008C746FB58EC902B0E6B58C
               HEX    8DC76FB5828DF96FB5818DF56FB58D95
               HEX    8EB58F8575B5908576B1758DB96E290F
               HEX    8DBF6EA9D129F0D00FA9D18D746FD023
               HEX    958ECE28714C726FC910D01AADBF6ED0
               HEX    049584F003207F70C8B1754A20AF6BA9
               HEX    0095994C6E6FC940B00BADB96E69E08D
               HEX    EC714C6E6FD009ADBF6E20D96B4C6E6F
               HEX    C9B0B010ADB96E69B0958C20A470A901
               HEX    9583D059D01DADBF6EF00DE901D00FC8
               HEX    B175958D958EB04195849599F03B207F
               HEX    70B036C9C0D010ADBF6ED007958320A4
               HEX    70F02A9580D022C9F0F00DADB96E38E9
               HEX    D0F01A20AF6B9011A9009584ADBF6E20
               HEX    D96BC8B1754A20AF6BC84CA26EC8A9D1
               HEX    C901D01995A34A9595B175C895A29598
               HEX    B175C895A0B175C895A14C7070C902F0
               HEX    034C1B70A90095A39595B175C895A295
               HEX    98C8C8C8B17508100249FF95A188B175
               HEX    2818100349FF38690095A09002F6A1C8
               HEX    C8A9D1207E72AD4E6D8DDE6FAD546D8D
               HEX    E56FB58C207E7238E9D195A5AD546DE9
               HEX    D195A6B58C95A4ADC76F958C
D6FF1          HEX    4CFC6FA9D19581A9D1958238B5A5F581
               HEX    B5A6F5821069B5A049FF18690195A0B5
               HEX    A149FF690095A14C7070C903D007B175
               HEX    C8959AD04AC904D007B175C89599D03F
               HEX    C905D016B175C8959E9595B175C8959F
               HEX    A900959895819582F025C908D017B175
               HEX    C88D5F728D6872B175C88D7172B175C8
               HEX    8D7972D00AC909D006B175C88D327118
               HEX    98758F958FA900759095908576608D52
               HEX    72A9788D5472C8B1758D1B72C8B1758D
               HEX    1672A90195844A95998D5F728D22728D
               HEX    277260A900959A959D959C959B959995
               HEX    989581958295969597959560857C60A0
D70C1          HEX    D1B9C920C9FFF0F40AA818AD67208575
               HEX    AD682069208576B175858FC8B1756920
               HEX    8590C8B17585B7C8B175692085B8C8B1
               HEX    7585DFC8B175692085E0A9008DEC71A9
               HEX    038D287160EEC1708D1D718D2171AD21
               HEX    71D00C20C070A57CF00560A9
D711D          HEX    D1F0EFA9
D7121          HEX    D1D007207C6EA9D1F0DBEE2171AD2171
               HEX    49
D7132          HEX    00D0138D2171EE1D71AD1D714940D006
               HEX    8D1D71EEC170A2008E456E8E187220E4
               HEX    6CA22820E46CA25020E46C38A5898565
               HEX    A58A8566A58990220A26660A26660A26
               HEX    661865898565A58A65666A66656A6665
               HEX    6A66656A6665290F856638A5B18567A5
               HEX    B28568A5B190220A26680A26680A2668
               HEX    1865B18567A5B265686A66676A66676A
               HEX    66676A6667290F856838A5D98569A5DA
               HEX    856AA5D990220A266A0A266A0A266A18
               HEX    65D98569A5DA656A6A66696A66696A66
               HEX    696A6669290F856A18A9
D71EC          HEX    D169
D71EE          HEX    D1291F856B38900B0A0A0A656B6A6A6A
               HEX    6A291F856BAD456E856CA58B856DA5B3
               HEX    856EA5DB856F18A9
D7216          HEX    D169
D7218          HEX    D1A8A9
D721B          HEX    D16900AA189869
D7222          HEX    D185708A69
D7227          HEX    D18571389024A8A5700A26710A26710A
               HEX    267118657085709865716A66706A6670
               HEX    6A66706A6670290F8571A9
D7252          HEX    D1C9
D7254          HEX    D18D5472D002A9FF8572A9
D725F          HEX    D1F01BCE5F72D016A9
D7268          HEX    D18D5F7218AD227269
D7271          HEX    D18D2272AD277269
D7279          HEX    D18D277260847EA8AD6320C901D00FB9
               HEX    A6728D546DB906738D4E6DA47E60B966
               HEX    738D546DB9C6738D4E6DA47E600E0E0D
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
D742A          HEX    00000000000000000000000000000000
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
SUB752A        LDA    #$8D
               JSR    COUT
               JSR    SUB7547
               STY    $C2
               CPY    $C1CF
               CPY    $A0
               HEX    D3CFCEC7ACC1A4B2B0B0B08D0060
SUB7547        PLA
               STA    $02
               PLA
               STA    $03
               LDY    #$01
L754F          LDA    ($02),Y
               BEQ    L7559
               JSR    COUT
               INY
               BNE    L754F
L7559          CLC
               TYA
               ADC    $02
               STA    $02
               LDA    $03
               ADC    #$00
               PHA
               LDA    $02
               PHA
               RTS
SUB7568        LDX    #$00
L756A          LDA    $00,X
               STA    $1000,X
               INX
               BNE    L756A
               RTS
SUB7573        LDX    #$00
L7575          LDA    $1000,X
               STA    $00,X
               INX
               BNE    L7575
               RTS
               HEX    00
D757F          HEX    00
D7580          HEX    00
D7581          HEX    00
D7582          HEX    00
D7583          HEX    00
D7584          HEX    0000
D7586          HEX    00
D7587          HEX    0000
D7589          HEX    000000
D758C          HEX    00000000000000
D7593          HEX    0000
D7595          HEX    00
D7596          HEX    00
D7597          HEX    00
D7598          HEX    00
D7599          HEX    000000
D759C          HEX    01
SUB759D        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB7C44
               JSR    SUB8020
               JSR    SUB7CD1
               JSR    SUB8049
               LDA    #$01
               STA    D757F
               LDA    #$2F
               STA    D7599
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    $03EA
               RTS
SUB75D9        LDA    STROBE
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
               HEX    AD7F75C903D029A200A9009D000C9D00
               HEX    0D9D000E9D000FE8D0F18D05C09D000C
               HEX    9D000D9D000E9D000FE8D0F18D04C060
               HEX    A623BD3081A8AD7F75C902F010982044
               HEX    7CAD9975C927F00498207280609820D1
               HEX    7CAD9975C927F00498209F8060
SUB7654        LDA    $21
               LSR
               TAX
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               LDA    $20
               BIT    D759C
               BNE    L7691
               LSR
               TAY
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               TAX
               LDA    D7F00,X
               STA    $29
               LDA    $21
               AND    #$01
               BEQ    L768A
               LDA    $29
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $29
               RTS
L768A          LDA    $29
               AND    #$0F
               STA    $29
               RTS
L7691          LSR
               TAY
               LDA    ($40),Y
               STA    $29
               LDA    $21
               AND    #$01
               BEQ    L76A8
               LDA    $29
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $29
               RTS
L76A8          LDA    $29
               AND    #$0F
               STA    $29
               RTS
               HEX    A520EAC950900160A521CD9975F00390
               HEX    0160
SUB76C1        LDA    $23
               STA    $24
               LDA    $21
               LSR
               TAX
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               LDX    $23
               LDA    $20
               BIT    D759C
               BNE    L7718
               LSR
               TAY
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               STA    $25
               LDA    D7E00,X
               STA    $24
               LDA    $21
               AND    #$01
               BEQ    L7705
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    D8120,X
               TAX
               LDA    D7E00,X
               STA    $24
               JMP    L770B
L7705          LDA    $25
               AND    #$F0
               STA    $25
L770B          LDA    $24
               ORA    $25
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               RTS
L7718          LSR
               TAY
               LDA    ($40),Y
               STA    $25
               LDA    $21
               AND    #$01
               BEQ    L7732
               LDA    $25
               AND    #$0F
               STA    $25
               LDA    D8120,X
               STA    $24
               JMP    L7738
L7732          LDA    $25
               AND    #$F0
               STA    $25
L7738          LDA    $24
               ORA    $25
               STA    ($40),Y
               RTS
SUB773F        LDX    #$00
               STX    $22
               STX    $0301
               STX    $0302
               LDA    #$00
               STA    D7583
               STA    D7582
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
               HEX    60
SUB7770        LDA    $20
               CMP    $27
               BCC    L7787
               LDX    $27
               STA    $27
               STX    $20
               LDA    $21
               LDX    $28
               STA    $28
               STX    $21
               JMP    L779B
L7787          LDA    $21
               CMP    $28
               BCC    L779B
               LDX    $28
               STA    $28
               STX    $21
               LDX    $27
               LDA    $20
               STA    $27
               STX    $20
L779B          LDA    $20
               SEC
               SBC    $27
               BEQ    L77BC
               BCS    L77C4
               EOR    #$FF
               CLC
               ADC    #$01
               STA    D7587
               LDA    $20
               STA    D7584
               LDA    $21
               STA    D7586
               SEC
               SBC    $28
               JMP    L77D4
L77BC          JSR    SUB7B01
               RTS
L77C0          JSR    SUB7A54
               RTS
L77C4          STA    D7587
               LDA    $27
               STA    D7584
               LDA    $28
               STA    D7586
               SEC
               SBC    $21
L77D4          BCS    L77E1
               EOR    #$FF
               ADC    #$01
               STA    D7589
               LDA    #$EE
               BNE    L77E8
L77E1          BEQ    L77C0
               STA    D7589
               LDA    #$CE
L77E8          STA    D782D
               STA    D7863
               LDA    D7587
               CMP    D7589
               BCS    L77F9
               JMP    L7833
L77F9          CLC
               ADC    #$01
               STA    $26
               DEC
               LSR
               STA    D758C
               JMP    L780E
L7806          RTS
L7807          STA    D758C
L780A          DEC    $26
               BEQ    L7806
L780E          LDA    D7584
               STA    $20
               LDA    D7586
               STA    $21
               JSR    SUB76C1
               INC    D7584
               LDA    D758C
               SEC
               SBC    D7589
               BCS    L7807
               ADC    D7587
               STA    D758C
D782D          INC    D7586
               JMP    L780A
L7833          LDX    $21
               CPX    D7586
               BNE    L783C
               LDX    $28
L783C          STX    D785F+1
               LDA    D7589
               LSR
               STA    D758C
               LDX    D7586
               JMP    L784F
L784C          STA    D758C
L784F          LDA    D7584
               STA    $20
               LDA    D7586
               STA    $21
               JSR    SUB76C1
               LDA    D7586
D785F          CMP    #$00
               BEQ    L787A
D7863          INC    D7586
               LDA    D758C
               SEC
               SBC    D7587
               BCS    L784C
               ADC    D7589
               STA    D758C
               INC    D7584
               BNE    L784F
L787A          RTS
SUB787B        STA    RAMWRTON
               LDX    #$00
L7880          LDA    #$00
               STA    $3E
               TXA
               CLC
               ADC    #$10
               STA    $3F
               LDA    #$00
               LDY    #$00
L788E          STA    ($3E),Y
               INY
               CPY    #$50
               BCC    L788E
               INX
               CPX    #$30
               BCC    L7880
               STA    RAMWRTOFF
               LDA    #$00
               STA    $3E
               LDA    #$40
               STA    $3F
               LDA    D7595
               STA    $20
               LDA    D7596
               STA    $21
               JSR    SUB7654
               LDA    $29
               STA    D7593
               LDY    #$00
               LDA    D7595
               STA    RAMWRTON
               STA    ($3E),Y
               INY
               LDA    D7596
               STA    ($3E),Y
               STA    RAMWRTOFF
               CLC
               LDA    $3E
               ADC    #$02
               STA    $3E
               LDA    $3F
               ADC    #$00
               STA    $3F
L78D7          LDA    $3E
               BNE    L78E2
               LDA    $3F
               CMP    #$40
               BNE    L78E2
               RTS
L78E2          SEC
               LDA    $3E
               SBC    #$02
               STA    $3E
               LDA    $3F
               SBC    #$00
               STA    $3F
               LDY    #$00
               STA    RAMRDON
               LDA    ($3E),Y
               STA    RAMRDOFF
               STA    $38
               STA    $20
               STA    $3A
               INY
               STA    RAMRDON
               LDA    ($3E),Y
               STA    RAMRDOFF
               STA    $39
               STA    $21
               CLC
               ADC    #$10
               STA    $3B
               STA    RAMRDON
               LDA    ($3A)
               STA    RAMRDOFF
               BNE    L78D7
               JSR    SUB76C1
               LDA    #$02
               STA    RAMWRTON
               STA    ($3A)
               STA    RAMWRTOFF
               LDA    $39
               CMP    D7599
               BCS    L7964
               CLC
               ADC    #$01
               STA    $21
               LDA    $38
               STA    $20
               JSR    SUB7654
               LDA    $29
               CMP    D7593
               BNE    L7964
               CMP    $23
               BEQ    L7964
               LDY    #$00
               LDA    $38
               STA    RAMWRTON
               STA    ($3E),Y
               INY
               LDA    $21
               STA    ($3E),Y
               STA    RAMWRTOFF
               CLC
               LDA    $3E
               ADC    #$02
               STA    $3E
               LDA    $3F
               ADC    #$00
               STA    $3F
L7964          LDA    $39
               BEQ    L799B
               DEC
               STA    $21
               LDA    $38
               STA    $20
               JSR    SUB7654
               LDA    $29
               CMP    D7593
               BNE    L799B
               CMP    $23
               BEQ    L799B
               LDY    #$00
               LDA    $38
               STA    RAMWRTON
               STA    ($3E),Y
               INY
               LDA    $21
               STA    ($3E),Y
               STA    RAMWRTOFF
               CLC
               LDA    $3E
               ADC    #$02
               STA    $3E
               LDA    $3F
               ADC    #$00
               STA    $3F
L799B          LDA    $38
               CMP    #$4F
               BCS    L79D6
               CLC
               ADC    #$01
               STA    $20
               LDA    $39
               STA    $21
               JSR    SUB7654
               LDA    $29
               CMP    D7593
               BNE    L79D6
               CMP    $23
               BEQ    L79D6
               LDY    #$00
               LDA    $20
               STA    RAMWRTON
               STA    ($3E),Y
               INY
               LDA    $39
               STA    ($3E),Y
               STA    RAMWRTOFF
               CLC
               LDA    $3E
               ADC    #$02
               STA    $3E
               LDA    $3F
               ADC    #$00
               STA    $3F
L79D6          LDA    $38
               BEQ    L7A0D
               DEC
               STA    $20
               LDA    $39
               STA    $21
               JSR    SUB7654
               LDA    $29
               CMP    D7593
               BNE    L7A0D
               CMP    $23
               BEQ    L7A0D
               LDY    #$00
               LDA    $20
               STA    RAMWRTON
               STA    ($3E),Y
               INY
               LDA    $39
               STA    ($3E),Y
               STA    RAMWRTOFF
               CLC
               LDA    $3E
               ADC    #$02
               STA    $3E
               LDA    $3F
               ADC    #$00
               STA    $3F
L7A0D          JMP    L78D7
               HEX    A520EAC527900AF03AA6278D98758E97
               HEX    75A5201007A20086204C347AC9509004
               HEX    A94F8520A5271007A20086274C477AC9
               HEX    509004A94F8527A521100160CD9975F0
               HEX    03900160
SUB7A54        LDA    $20
               CMP    $27
               BCC    L7A6A
               BEQ    L7A67
               LDX    $27
               STA    D7598
               STX    D7597
               JMP    L7A72
L7A67          JMP    SUB76C1
L7A6A          STA    D7597
               LDA    $27
               STA    D7598
L7A72          SEC
               SBC    D7597
               CLC
               ADC    #$01
               STA    D7580
               INC    D7598
               LDA    $21
               LSR
               TAX
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               LDA    $21
               BIT    D759C
               BEQ    L7A97
               JMP    L7AAC
L7A97          LDA    $23
               STA    $24
               TAX
               LDA    D7E00,X
               STA    $25
               LDA    #$F0
               STA    D7AD3+1
               STA    D7AEF+1
               JMP    L7AC1
L7AAC          LDX    $23
               LDA    D8120,X
               STA    $24
               TAX
               LDA    D7E00,X
               STA    $25
               LDA    #$0F
               STA    D7AD3+1
               STA    D7AEF+1
L7AC1          LDA    D7597
               BIT    D759C
               BNE    L7AEB
               LSR
               TAY
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
D7AD3          AND    #$F0
               ORA    $25
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               INC    D7597
               LDA    D7597
               CMP    D7598
               BCC    L7AC1
               RTS
L7AEB          LSR
               TAY
               LDA    ($40),Y
D7AEF          AND    #$F0
               ORA    $24
               STA    ($40),Y
               INC    D7597
               LDA    D7597
               CMP    D7598
               BCC    L7AC1
               RTS
SUB7B01        LDA    $21
               CMP    $28
               BCC    L7B15
               BEQ    L7B12
               LDX    $28
               STA    $28
               STX    $21
               JMP    L7B15
L7B12          JMP    SUB76C1
L7B15          LDA    $28
               SEC
               SBC    $21
               CLC
               ADC    #$01
               STA    D7580
               LDA    $20
               BIT    D759C
               BEQ    L7B2A
               JMP    L7BD0
L7B2A          LSR
               TAY
               LDA    $21
               LSR
               STA    D7581
               LDA    $21
               BIT    D759C
               BEQ    L7B6F
               LDX    D7581
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               TAX
               LDA    D7F00,X
               AND    #$0F
               STA    $25
               LDX    $23
               LDA    D8120,X
               ORA    $25
               TAX
               LDA    D7E00,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               INC    D7581
               DEC    D7580
L7B6F          LDA    D7580
               CMP    #$02
               BCC    L7BA0
               LDX    D7581
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               LDX    $23
               LDA    D8130,X
               TAX
               LDA    D7E00,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               DEC    D7580
               DEC    D7580
               INC    D7581
               JMP    L7B6F
L7BA0          LDA    D7580
               BNE    L7BA6
               RTS
L7BA6          LDX    D7581
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               STA    RAMRDON
               LDA    ($40),Y
               STA    RAMRDOFF
               TAX
               LDA    D7F00,X
               AND    #$F0
               ORA    $23
               TAX
               LDA    D7E00,X
               STA    RAMWRTON
               STA    ($40),Y
               STA    RAMWRTOFF
               RTS
L7BD0          LSR
               TAY
               LDA    $21
               LSR
               STA    D7581
               LDA    $21
               BIT    D759C
               BEQ    L7C01
               LDX    D7581
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               LDA    ($40),Y
               AND    #$0F
               STA    $25
               LDX    $23
               LDA    D8120,X
               ORA    $25
               STA    ($40),Y
               INC    D7581
               DEC    D7580
L7C01          LDA    D7580
               CMP    #$02
               BCC    L7C28
               LDX    D7581
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               LDX    $23
               LDA    D8130,X
               STA    ($40),Y
               DEC    D7580
               DEC    D7580
               INC    D7581
               JMP    L7C01
L7C28          LDA    D7580
               BNE    L7C2E
               RTS
L7C2E          LDX    D7581
               LDA    D8140,X
               STA    $40
               LDA    D8000,X
               STA    $41
               LDA    ($40),Y
               AND    #$F0
               ORA    $23
               STA    ($40),Y
               RTS
SUB7C44        LDX    #$28
L7C46          DEX
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
               BNE    L7C46
               TAX
               LDA    D7E00,X
               LDX    #$28
L7C8B          DEX
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
               BNE    L7C8B
               RTS
SUB7CD1        LDX    #$28
L7CD3          DEX
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
               BNE    L7CD3
               TAX
               LDA    D7E00,X
               LDX    #$28
L7D18          DEX
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
               BNE    L7D18
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
               HEX    0000
D7E00          HEX    00080109020A030B040C050D060E070F
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
D7F00          HEX    00020406080A0C0E01030507090B0D0F
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
D8000          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
SUB8020        LDX    #$28
L8022          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L8022
               LDX    #$28
L8033          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L8033
               RTS
SUB8049        LDX    #$28
L804B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L804B
               LDX    #$28
L805C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L805C
               RTS
               HEX    A228CA9D50069DD0069D50079DD007D0
               HEX    F1AABD007EA228CA8D05C09D50069DD0
               HEX    069D50079DD0078D04C0D0EB60A228CA
               HEX    9D500A9DD00A9D500B9DD00BD0F1AABD
               HEX    007EA228CA8D05C09D500A9DD00A9D50
               HEX    0B9DD00B8D04C0D0EB60000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000808
               HEX    09090A0A0B0B080809090A0A0B0B0808
               HEX    09090A0A0B0B080809090A0A0B0B
D8120          HEX    00102030405060708090A0B0C0D0E0F0
D8130          HEX    00112233445566778899AABBCCDDEEFF
D8140          HEX    008000800080008028A828A828A828A8
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
D8300          HEX    1D1E1F20212223241D1E1F2021222324
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
D8400          HEX    06060606060606060707070707070707
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
D8500          HEX    00000000000000000000000000000000
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
D8600          HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000
