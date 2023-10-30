data segment
block db 1h,2h,3h,4h,5h,6h
count db 0
data ends
code segment
assume cs:code,ds:data
start:
        mov AX,DATA
        mov DS,AX

        mov CL,6h
        LEA SI,block
        mov AX,0000h
NXT:
        mov AL,[SI]
        INC SI
        RCR AL,01h
        JNC EVE
        INC BX

EVE:
        INC SI
        LOOP NXT
final:
        mov ah,000h
        mov bl,count

CODE ENDS
END START


