
;our first programme will read a character from the keyboard and display it at the begining of the next line; 


.model small
.stack 100h
.code
main proc
    ;display
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    
    
    ;input
    
    mov ah,1
    int 21h
    
    
    mov bl,al
    
    
    
   ;go to new line
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   
   ;display
   
   mov dl,bl
   int 21h
   
   
   exit:
   
   mov ah,4ch
   int 21h
   
   main endp
end main
    







