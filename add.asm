section .data
    num1 db 0x1A
    num2 db 0x2B
    result db 0

section .text
    global _start

_start:
    mov al, [num1]
    mov bl, [num2]
    add al, bl
    mov [result], al
    mov eax, 1
    xor ebx, ebx
    int 0x80
