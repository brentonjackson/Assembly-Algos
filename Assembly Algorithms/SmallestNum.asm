.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	SmallestNum - Find smallest among three items !

.data
V1 SWORD 10
V2 SWORD 13
V3 SWORD -5
minimum SWORD ?


.code
main PROC
	mov ax, V1
	mov bx, V2
	mov cx, V3
	
	cmp ax, bx
	jle IF_BLOCK
	jg ELSE_BLOCK

	IF_BLOCK:
		mov minimum, ax
	jmp next

	ELSE_BLOCK:
		mov minimum, bx
	next:
	
	cmp cx, minimum
	jle IF_BLOCK2
	jmp L1

	IF_BLOCK2:
		mov minimum, cx
	
	L1:

	INVOKE ExitProcess, 0
main ENDP
END main