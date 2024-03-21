global keyboard
	jmp start

keyboard:
        mov ah, 0x00    ; enable blocking
        int 0x16        ; Get key press, store in al

        cmp al, 0x08 	; check if key pressed was backspace
        je .backspace

	cmp al, 0x0d	; check if key pressed was enter key
	je .enterkey

	cmp al, 0x63	; clear command :)
	je .clear

        mov ah, 0x0e    ; Display char in al
        int 0x10        ; Print the pressed key
	
	ret

.backspace:
        mov ah, 0x0e
        int 0x10

        mov al, 0x00
        int 0x10

        mov al, 0x08
        int 0x10

        ret

.enterkey:
	mov al, 0x0a
	mov ah, 0x0e
	int 0x10
	mov al, 0x0d
	int 0x10
	ret

.everyOtherKey:
	mov ah, 0x0e
	int 0x10
	mov bx, cx
	mov [inputBuffer+bx], al

.clear:
	mov ah, 0x00
	mov al, 0x03
	int 0x10
	ret

;;;;;;; Buffers

inputBuffer: times 32 db 0
