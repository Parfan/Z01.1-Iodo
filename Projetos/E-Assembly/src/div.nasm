; Arquivo: Div.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide R0 por R1 e armazena o resultado em R2.
; (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
; divisao para numeros inteiros positivos

SUBTRACAO:
leaw $0, %A
movw (%A), %D
leaw %1, %A
subw %D, (%A), %D
leaw $POSITIVO, $A   
jge %D                  ;Salta se o resultado da subtração é positivo
nop

leaw $FIM, $A           ;Termina a operação se o resultado da subtração é negativo
jmp
nop

POSITIVO:
leaw $0, %A       
movw %D, (%A)           ;resultado da subtração é novo valor de R0
leaw $2, %A
movw (%A), %D 
incw %D
movw %D, (%A)           ;Incrementa R2 para cada subtração realizada
leaw %SUBTRACAO, %A
jmp                     ;Retorna para subtração em novo ciclo
nop 

FIM:




















































































