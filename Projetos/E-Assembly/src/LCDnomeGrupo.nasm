; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo
;
; O Tempo de Simulação utilizado foi de 13000,
; Aumente este valor caso o nome não saia completo.

;Desenha o "I"
;Valores iniciais
leaw $16384, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_1:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18384, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_1, %A
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

leaw %LOOP_1, %A
jmp
nop

ENDLOOP_1:

;Desenha a primeira metade do primeiro "o"
;Valores iniciais
leaw $17386, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_2:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18386, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_2, %A
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

leaw %LOOP_2, %A
jmp
nop

ENDLOOP_2:

;Desenha a segunda metade do primeiro "o"
;Valores iniciais
leaw $17388, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_3:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18388, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_3, %A
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

leaw %LOOP_3, %A
jmp
nop

ENDLOOP_3:

;Desenha a primeira metade do "d"
;Valores iniciais
leaw $17390, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_4:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18390, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_4, %A
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

leaw %LOOP_4, %A
jmp
nop

ENDLOOP_4:

;Desenha a segunda metade do "d"
;Valores iniciais
leaw $16392, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_5:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18392, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_5, %A
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

leaw %LOOP_5, %A
jmp
nop

ENDLOOP_5:

;Desenha a primeira metade do segundo "o"
;Valores iniciais
leaw $17394, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_6:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18394, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_6, %A
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

leaw %LOOP_6, %A
jmp
nop

ENDLOOP_6:

;Desenha a segunda metade do segundo "o"
;Valores iniciais
leaw $17396, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_7:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18396, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_7, %A
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

leaw %LOOP_7, %A
jmp
nop

ENDLOOP_7:

;Preenche o primeiro "o"
;Valores iniciais
leaw $17387, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_8:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18387, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_8, %A
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

leaw %LOOP_8, %A
jmp
nop

ENDLOOP_8:

;Preenche o "d"
;Valores iniciais
leaw $17391, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_9:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18391, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_9, %A
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

leaw %LOOP_9, %A
jmp
nop

ENDLOOP_9:

;Preenche o segundo "o"
;Valores iniciais
leaw $17395, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_10:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18395, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_10, %A
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

leaw %LOOP_10, %A
jmp
nop

ENDLOOP_10:

;Remove o centro do primeiro "o"
;Valores iniciais
leaw $17647, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_11:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18127, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_11, %A
jle %D
nop

;Desenha na tela
leaw $0, %A
movw (%A), %A
movw $0, (%A)

;Muda o linha
leaw $0, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
leaw $0, %A
movw %D, (%A)

leaw %LOOP_11, %A
jmp
nop

ENDLOOP_11:

;Remove o centro do "d"
;Valores iniciais
leaw $17651, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_12:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18151, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_12, %A
jle %D
nop

;Desenha na tela
leaw $0, %A
movw (%A), %A
movw $0, (%A)

;Muda o linha
leaw $0, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
leaw $0, %A
movw %D, (%A)

leaw %LOOP_12, %A
jmp
nop

ENDLOOP_12:

;Remove o centro do segundo "o"
;Valores iniciais
leaw $17655, %A
movw %A, %D
leaw $0, %A
movw %D, (%A)

leaw $20, %A
movw %A, %D
leaw $1, %A
movw %D, (%A)

LOOP_13:

;Quebra o loop
leaw $0, %A
movw (%A), %D
leaw $18155, %A
subw %A, %D, %D

;Loop que desenha na tela
leaw %ENDLOOP_13, %A
jle %D
nop

;Desenha na tela
leaw $0, %A
movw (%A), %A
movw $0, (%A)

;Muda o linha
leaw $0, %A
movw (%A), %D
leaw $1, %A
addw (%A), %D, %D
leaw $0, %A
movw %D, (%A)

leaw %LOOP_13, %A
jmp
nop

ENDLOOP_13: