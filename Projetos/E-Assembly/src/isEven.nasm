; Arquivo: isEven.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; par. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.


leaw $5, %A
movw (%A), %D
leaw $1, %A
andw %A, %D, %D         ;operação AND entre valor no endereço RAM[5] e 1. Se der 0 é par, se der 1 é ímpar.

leaw $PAR, %A
je %D
nop

leaw $0, %A
movw %A, (%A)

leaw $FIM, %A
jmp
nop

PAR:
leaw $1, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)


FIM:

