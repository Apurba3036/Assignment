.MODEL SMALL
 .STACK 100H

 .CODE
   MAIN PROC
     MOV AH, 1                    ; read a character
     INT 21H

     MOV BL, AL                   ; save input character into BL

    

     MOV AH, 2                    ; display the character stored in BL
     MOV DL, BL
     INT 21H

     MOV AH, 4CH                 
     INT 21H

   MAIN ENDP
<<<<<<< HEAD
 END MAIN
=======
 END MAIN
 
 ?kkkkkkkkkkkkkkkk
>>>>>>> c96d52f26c959c83d21cb45d42e3f8fb84ecf197
