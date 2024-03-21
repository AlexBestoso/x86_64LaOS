[BITS 16]
[org 0x7c00]

%include "keyboard.asm"

start:
	xor cx, cx
	jmp .mainLoop	

.mainLoop:
	call keyboard
	jmp .mainLoop	

;TIMES 510 - ($ - $$) db 0
;dw 0xAA55
