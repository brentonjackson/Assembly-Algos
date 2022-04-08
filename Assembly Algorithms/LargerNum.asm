.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

COMMENT !	LargerNum - Check larger of two integers !

.data?
maximum DWORD ?


.code
main PROC 
	; store first item to EAX register
	mov eax, 21
	; store second item to EBX register
	mov ebx, 19
	cmp eax, ebx
	jg L1
	jle L2
		L1:	mov maximum, eax
	jmp Next
		L2: mov maximum, ebx
	Next:

	INVOKE ExitProcess, 0
main ENDP
END main