; Reverse a string

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
myName BYTE "Brenton Jackson",0
nameSize = ($ - myName) - 1


.code
main PROC



main ENDP
END main