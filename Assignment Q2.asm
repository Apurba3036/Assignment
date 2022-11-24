.MODEL SMALL
.STACK 100H
.DATA



MSG1 DB 'ENTER A UPPER CASE LETTER $'
MSG2 DB  'LET`S SEE THE LOWER CASE:$'
CHAR DB ?,

.CODE

MAIN PROC
    ;INITALIZE DS
    MOV AX, @DATA       ;get data segment
    MOV DS,AX           ;initailize DS
    
    ;print user prompt
    LEA DX,MSG1         ;get first message
    MOV AH,9            ;display sting function
    INT 21H            ;display first message        
    
 
                         ;input a char and cover to upper case
    MOV AH,1            ;read character function
    INT 21H             ;read a small letter into AL                                    
    ADD AL, 20H         ;convert it to lower case
    MOV CHAR, AL        ;and store it  
    
    ;go to new line
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
                   

    
   ;display on the next line
    LEA DX,MSG2         ;get second message
    MOV AH,9            ;display message and uppercase
    INT 21H             ;letter in front 
    
       

   ;Display lower case letter 
    MOV AH,2
    MOV DL,CHAR
    INT 21H
      
                                          
    ;DOS EXIT
    MOV AH,4CH
    INT 21H             ;dos exit
    
MAIN ENDP
    END MAIN