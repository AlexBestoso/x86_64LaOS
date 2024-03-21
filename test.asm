gloabl debug
	jmp start
debug:
	mov ah, 0x0e ; display char mode
	;mov al, 0x48 ; h
	;int 10
	;mov ah, 0x0e
	;mov al, 0x45 ; e
        ;int 10
	;mov ah, 0x0e
	;mov al, 0x4C ; l
        ;int 10
	;mov ah, 0x0e
	;mov al, 0x4C ; l
        ;int 10
	;mov ah, 0x0e
	;mov al, 0x4F ; o
        ;int 10
	;mov ah, 0x0e
	;mov al, 0x10 ; \n
        ;int 10
	ret
