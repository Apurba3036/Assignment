.model small
.stack 100h
.data 
 apurba db 0DH,0AH,'ILLEGAL CHARACTER $'

.code

main proc 
    
    mov ax,@data
    mov ds,ax 
    
   
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp al,41h
    jnge T
    cmp al,5ah
    jnle T 
    
 
    
    mov ah,2
    mov dl,0Dh
    int 21h
    mov dl,0Ah
    int 21h 
    
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    mov ah,4ch
    int 21h
    
       T: 

       lea dx,apurba
       mov ah,9
       int 21h
 
   
    
 
    exit:
    main endp
end main 

   