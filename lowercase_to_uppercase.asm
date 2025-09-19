section .data
    s1 db "hello world",0Ah
    len equ $-s1

section .bss
    s2 resb 20

section .text
    global _start

_start:
    mov ecx, len
    mov esi, s1
    mov edi, s2

loop_here:
    lodsb
    and al, 0DFh
    stosb
    loop loop_here

    mov edx, len
    mov ecx, s2
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80
