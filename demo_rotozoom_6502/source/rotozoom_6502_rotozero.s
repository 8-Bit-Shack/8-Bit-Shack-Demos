************************************************************
* rotozoom_6502 - ROTOZERO (disassembly)
*
* Disassembled from the original binary (109 bytes, $0000-$006C).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../README.txt for attribution and license terms.
* Entry point $0000 (NMOS 6502 opcodes only).
************************************************************

               ORG    $0000

START          LDA    #$00
               STA    $85
L0004          LDX    #$84
               LDA    $6600,X
               STA    $C5
               LDA    $6700,X
               STA    $C6
               LDA    $7C
               STA    $A3
               LDA    $7D
               STA    $A9
               LDA    $7E
               STA    $B3
               LDA    $7F
               STA    $B9
               LDY    #$27
L0022          LDA    #$A2
               ADC    #$54
               STA    $A3
               LDA    #$A3
               ADC    #$55
               STA    $A9
               AND    #$F0
               STA    $C2
               LDA    #$B2
               ADC    #$56
               STA    $B3
               LDA    #$B3
               ADC    #$57
               STA    $B9
               AND    #$0F
               TAX
               LDA    $6500,X
               STA:   $C4,Y
               DEY
               BPL    L0022
               LDA    $7C
               ADC    #$58
               STA    $7C
               LDA    $7D
               ADC    #$59
               STA    $7D
               LDA    $7E
               ADC    #$5A
               STA    $7E
               LDA    $7F
               ADC    #$5B
               STA    $7F
               INC    $85
               LDA    $85
               CMP    #$18
               BCC    L0004
               JMP    $6037
