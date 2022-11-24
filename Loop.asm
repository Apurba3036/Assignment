.model small
.data
.code

main proc
     mov cx,10
     mov dx,48
     
     test:
     mov ah,2
     int 21h
     
     add dx,1
  
  
 loop test             
               
  mov ah,4ch
  int 21h
  main endp
end main