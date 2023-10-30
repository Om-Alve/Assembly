data segment
block1 db 1h,2h,3h,4h,5h
block2 db 5 DUP (?)
data ends
code segment
assume CS:CODE,DS:DATA
START:
        mov AX,DATA
        mov DS,AX

        mov AX,0000H
        mov CL, 5h

        LEA SI,block1
        LEA DI,block2

UP:
        mov AX,[SI]
        mov [DI],AX
        INC SI
        INC DI
        LOOP UP

        INT 03H
CODE ENDS
END START
