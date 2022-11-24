.MODEL SMALL
.STACK 100H
.DATA
	CR EQU 0DH
	LF EQU 0AH
	MSG1 	DB	0AH,0DH,'THE SUM OF '
	DIGIT1 	DB	?
	MSG2	DB	' AND '
	DIGIT2	DB	?
	MSG3	DB	' IS '
	SUM		DB	?,'$'
.CODE
	MAIN PROC
	;Initilize DS
	MOV ax, @data
	mov ds, ax

	
	;Read two digit
	MOV		AH,1	; READ INPUT FUNCTION
	INT		21H		; EXECUTE FUNCTION
	MOV		DIGIT1, AL	;STORE THE FIRST DIGIT INTO DIGIT1
	
	INT		21H		; AGAIN EXECUTE READ INPUT FUNCTION TO READ ANOTHER
	MOV		DIGIT2, AL	; STORE 2ND DIGIT INTO DIGIT2
                                                      
		                                                  
	;Calculate the sum
	
	ADD     AL, DIGIT1 ; store first digit to DL
	MOV     AH, 0  ;and add 2nd digit to DL
    AAA 
    
    MOV BX,AX
    ADD BH,30H
    ADD BL,30H
	
	;DISPLAY SUMMATION MESSAGE
	LEA		DX, MSG1		; GET THE MESSAGE
	MOV		AH, 9		; DISPLAY STRING FUNCTION
	INT		21H			; DISPLAY THE MESSAGE
	                                          
	MOV AH,2
	MOV DL,BH
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H                                          
	                                          
	;EXIT TO DOS
	MOV 	AH, 4CH		; DOS EXIT FUNCTION
	INT		21H
	
	MAIN ENDP
		END MAIN
