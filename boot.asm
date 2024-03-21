[BITS 16]
[org 0x7c00]


%include "keyboard.asm"

;section .data
;penis: db 'Hello World', 10

start:
	mov ah, 0x0e ; display char mode
	mov al, 0x0a
        int 0x10
        mov al, 0x48 ; h
        int 0x10
        mov al, 0x45 ; e
        int 0x10
        mov al, 0x4C ; l
        int 0x10
        mov al, 0x4C ; l
        int 0x10
        mov al, 0x4F ; o
        int 0x10
        mov al, 0x0a ; \n
        int 0x10

	xor cx, cx
	jmp .mainLoop	

.mainLoop:
	call keyboard
	jmp .mainLoop	


;TIMES 510 - ($ - $$) db 0
;dw 0xAA55
