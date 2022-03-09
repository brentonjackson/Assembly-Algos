; Reverse a string

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
myName BYTE "Brenton Jackson",0
nameSize = ($ - myName) - 1

.data?
revName WORD 16 DUP(?)

.code
main PROC
; push name on stack
	mov ecx, nameSize
	mov esi, 0

L1:	movzx eax, myName[esi]
	push eax
	inc esi
	loop L1

	mov ecx, nameSize
	mov esi, 0

L2:	pop bx
	add revName[esi],bx
	inc esi
	loop L2


main ENDP
END main