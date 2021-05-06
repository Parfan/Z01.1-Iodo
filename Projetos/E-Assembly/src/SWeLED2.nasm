; Arquivo: SWeLED2.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
;
; Faça os LEDs exibirem 
; LED = SW[8] !SW[7] OFF ON ON RAM[5][3] ON SW[0] OFF
;
;                                ^            ^
;                                | TRUQUE!    | TRUQUE!

                            ;LED = RAM[21184],   SW = RAM[21185]
leaw $52, %A
movw %A, %D
leaw $21184, %A
movw %D, (%A)               ;Liga os LEDs nas posições que ja sabemos que deverão ser ligados

leaw $256 ,%A
movw %A, %D
leaw $21185 ,%A
andw (%A), %D, %D           ;Verifica o valor de SW[8]
leaw $21184, %A
addw (%A), %D, %D
movw %D, (%A);              ;Resolve o SW[8] do LED

leaw $128 ,%A
movw %A, %D
leaw $21185 ,%A
andw (%A), %D, %D           ;Verifica o valor de SW[7]

leaw $PULA, %A              ;Se SW[7] = 0: soma 010000000. Caso contrário, não faz nada
jne %D
nop

leaw $128, %A
movw %A, %D
leaw $21184, %A
addw (%A), %D, %D
movw %D, (%A)               

PULA:
leaw $5, %A
movw (%A), %D
leaw $8, %A
andw %A, %D, %D
leaw $21184, %A
addw (%A), %D, %D
movw %D, (%A)               ;Resolve o RAM[5][3]

leaw $1, %A
movw %A, %D
leaw $21185, %A
andw (%A), %D, %D 

leaw $ZERO, %A              ;Se SW[0] = 1: soma 000000010. Caso contrário, não faz nada
je %D
nop

leaw $2,%A
movw %A, %D
leaw $21184, %A
addw (%A), %D, %D
movw %D, (%A)               ;Resolve o SW[0] fora de posição 

ZERO:
