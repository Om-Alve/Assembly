data segment
num1 dw ?
num2 dw ?
num3 dw ?
data ends

code segment
assume CS:CODE,DS:DATA
start:
        mov num1,0H
        mov num2,1H
        mov CX,8H
        JMP nextno
nextno:
        mov ax,num1
        mov bx,num2
        add ax,bx
        mov num3,ax
        mov num1,bx
        mov num2,ax
        LOOP nextno
code ends
end start
