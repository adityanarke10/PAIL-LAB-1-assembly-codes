section .data
    first db "Aditya", 0Ah
    len1 equ $ - first
    last db "Narke", 0Ah
    len2 equ $ - last

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, first
    mov edx, len1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, last
    mov edx, len2
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
