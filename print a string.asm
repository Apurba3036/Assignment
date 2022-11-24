.model small

.stack 100h

.data

msg db "SHAJNIN IS A SWEET GIRL!$"

.code 

main proc
    
    ;initialize ds
    mov ax,@data
    mov ds,ax
    
    ;display 
    
    lea dx,msg
    mov ah,9
    int 21h
    
    
    ;return to dos
    
    mov ah,4ch
    int 21h
    
    
    main endp
end main
