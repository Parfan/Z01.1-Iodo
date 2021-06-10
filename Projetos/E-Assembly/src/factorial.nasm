; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.

;GARANTE QUE R3=0
leaw $3, %A
movw $0, (%A)

;VERIFICA SE R0=0
leaw $1, %A
movw $1, (%A)

leaw $0, %A
movw (%A), %D

leaw $FIM, %A
je %D
nop

;COPIA O VALOR DE R0 PARA R1
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)

;DECREMENTA O VALOR DE R0 (e R1) E MOVE PARA R4
decw %D
leaw $4, %A
movw %D, (%A)

FATORIAL:
;SE R4=0, PARA O FATORIAL
leaw $4, %A
movw (%A), %D
leaw $FIM, %A
je %D
nop

;COPIA R4 EM R2
leaw $2, %A
movw %D, (%A)


;MULTIPLICA R1 COM R2 E SALVA EM R3
MULT:
leaw $1, %A
movw (%A), %D

leaw $3, %A
addw (%A), %D, %D
movw %D, (%A)

leaw $2, %A
movw (%A), %D
decw %D
movw %D, (%A)

leaw $MULT, %A
jne %D
nop

ENDMULT:
;COPIA O RESULTADO DA MULTIPLICACAO (EM R3) PARA R1
leaw $3, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)

;DECREMENTA R4
leaw $4, %A
movw (%A), %D
decw %D
movw %D, (%A)

;ZERA R3
leaw $3, %A
movw $0, (%A)

leaw $FATORIAL, %A
jmp
nop

FIM:
