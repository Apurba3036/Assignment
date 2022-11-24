

; Write a program that will prompt the user to enter a decimal
;digit. If it is an even number then display EVEN otherwise
;display odd .[ Use TEST and Jump Instructions]


org 100h 
.model small
.data 
    
    msg1 db 10,13,'Hey Apurba! Enter a Number:$'
     
     msg2 db 10,13,'EVEN NUMBER!!$'
     msg3 db 10,13,'ODD NUMBER!!$'
      
.code
     main proc   
        
     mov ax,@data
     mov ds,ax
     
     lea dx,msg1
     mov ah,9
     int 21h
     
     
     mov ah,1
     int 21h
     
     mov bl,2
     div bl   ;rem will go to ah
     cmp ah,0
     je  even 
     
     
     
    
        lea dx,msg3
        mov ah,9
        int 21h 
        
        mov ah,4ch
        int 21h
     
     even:
         lea dx,msg2
         mov ah,9
         int 21h
     
        
        
        


ret




