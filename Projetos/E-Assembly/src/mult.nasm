; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

;;;; MULT

;Ponto de partida do loop mult
LOOPMULT:

leaw $1, %A
movw (%A), %D

;Executa o loop mult se RAM[2] > 0
leaw $ENDMULT, %A
je %D
nop

;Lê o contador do loop mult e decrementa
leaw $1,%A 
movw (%A), %D
decw %D
movw %D, (%A)

;Soma RAM[3] com RAM[1] e guarda em RAM[1]
leaw $3, %A
movw (%A), %D 
leaw $0, %A
addw (%A), %D, %D
leaw $3, %A
movw %D, (%A)

;Volta ao topo do loop mult
leaw $LOOPMULT, %A
jmp
nop

;Finaliza uma multiplicação
ENDMULT: