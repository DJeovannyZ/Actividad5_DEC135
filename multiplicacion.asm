section .data
    num1 db 6
    num2 db 7

section .bss
    result resb 1

section .text
    global _start

_start:
    mov al, [num1]
    mul byte [num2]  
    mov [result], al
    
    mov eax, 1         
    xor ebx, ebx       
    int 0x80
