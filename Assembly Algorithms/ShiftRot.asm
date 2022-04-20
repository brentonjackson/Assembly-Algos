.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC

mov al,0D4h			; 1101 0100
shr al,1			;a. 0110 1010 = 6A
mov al,0D4h
sar al,1			;b. 1110 1010 = EA
mov al,0D4h
sar al,4			;c. 1111 1101 = FD
mov al,0D4h
rol al,1			;d.	1010 1001 = A9
mov eax, 0

INVOKE ExitProcess, 0
main ENDP
END main