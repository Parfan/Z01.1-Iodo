; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em R0 e armazena o valor em R1.

;R0 - Fatorial
;R1 - Resultado
;R2 - Contador Loop Mult
;R3 - Contador Loop Factorial

leaw $0, %A
movw (%A), %D

;Salva o contador mult como n-2
decw %D
decw %D
leaw $2, %A
movw %D, (%A)

;Salva o contador factorial como n-3
decw %D
leaw $3, %A
movw %D, (%A)

;Ponto de partida do loop factorial
LOOPFACTORIAL:

;;;; MULT
;Define o valor inicial em RAM[1] como RAM[0]
leaw $0, %A
movw (%A), %D
leaw $1, %A
movw %D, (%A)

;Ponto de partida do loop mult
LOOPMULT:

leaw $2, %A
movw (%A), %D

;Executa o loop mult se RAM[2] > 0
leaw $ENDMULT, %A
jle %D
nop

;Lê o contador do loop mult e decrementa
decw %D
leaw $2, %A
movw %D, (%A)

;Soma RAM[0] com RAM[1] e guarda em RAM[1]
leaw $0, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
movw %D, (%A)

;Volta ao topo do loop mult
leaw $LOOPMULT, %A
jmp
nop

;Finaliza uma multiplicação
ENDMULT:

;Salva R1 em R0
leaw $1, %A
movw (%A), %D
leaw $0, %A
movw %D, (%A)

;Reestabelece e decrementa os loops
leaw $3, %A
movw (%A), %D
leaw $2, %A
movw %D, (%A)
leaw $3, %A
decw %D
movw %D, (%A)

;Se o contador factorial for < 0, encerra as operações
leaw $ENDFACTORIAL, %A
jl %D
nop

;Caso contrário, continua a iteração
leaw $LOOPFACTORIAL, %A
jmp
nop

;Encerra as operações
ENDFACTORIAL:

;Caso especial onde R0 = 0
leaw $0, %A
movw (%A), %D

leaw %FIM, %A
jne %D
nop
leaw $1, %A
movw %A, (%A)

;Encerra o programa
FIM: