BITS 64	; This tells nasm which bit we're programming in.
global _start ; Define the start of the program.

section .data			; section for variable storage
buffer: db 'Hello World', 10	; define a variable full of bytes. 


section .text	; Standard section.

; Implement the _start function
_start:	; Write your assembly code
	
	; Write data to stdout (print text in terminal)
	mov rax, 1	; 0x01 is the id for the CPU's write() function.
	mov rdi, 1	; 0x01 is the file descriptor for stdout.
	mov rsi, buffer	; Identify the starting memory address of our buffer.
	mov rdx, 12	; Identify the length of the buffered data.
	syscall

	jmp main
main:
	jmp main

