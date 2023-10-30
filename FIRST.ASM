.model small
.data
        hello db 'hello, Assembly',0
.code
main proc
        mov ah,9
        mov dx,offset hello
        int 21h

        mov ah,4Ch
        int 21h
main endp
end main
