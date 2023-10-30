data segment
NUM DB ?
FACTOHW DW ?
FACTOLW DW ?
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA

START:
        MOV AX,DATA
        MOV DS,AX
        MOV AH,01H
        INT 21H
        MOV NUM,AL
        AND NUM,00H
        MOV CH,00H
        MOV CL,NUM
        MOV AX,0001H
        MOV DX,0000H
BACK:
        MUL CX
        LOOP BACK

        MOV FACTOHW,DX
        MOV FACTOLW,AX
        MOV AL,4CH
        INT 21H

        CODE ENDS
        END START
        END
