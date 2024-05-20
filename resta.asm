section .data
    numero1 dw 10
    numero2 dw 5
    numero3 dw 3

section .bss
    resultado resw 1

section .text
    global _start

_start:
    mov ax, [numero1]
    sub ax, [numero2]
    sub ax, [numero3]
    mov [resultado], ax
    
    mov eax, 1         
    xor ebx, ebx       
    int 0x80
