section .data
    primerNumero dd 20
    segundoNumero  dd 4

section .bss
    resultado resd 1

section .text
    global _start

_start:
    mov eax, [primerNumero]
    mov ecx, [segundoNumero]
    cdq
    
    idiv ecx
    
    mov [resultado], eax
    
    mov eax, 1        
    xor ebx, ebx      
    int 0x80
