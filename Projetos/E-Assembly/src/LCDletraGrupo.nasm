; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardware
;  - Bata uma foto!

;16384 + i * 20

;Valores iniciais
leaw $16384, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18384, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP, %A
jle %D
nop

;Desenha na tela
leaw $0, %A
movw (%A), %A
movw $-1, (%A)

;Muda o linha
leaw $0, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
leaw $0, %A
movw %D, (%A)

leaw %LOOP, %A
jmp
nop

ENDLOOP:

;INICIO
;leaw $16384, %A        
;movw $-1, (%A)

;FIM
;leaw $18384, %A
;movw $-1, (%A)