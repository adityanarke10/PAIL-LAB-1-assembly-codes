global _start
section .text
_start:
mov ax,123
mov bx,45
xor dx,dx
do_mul16:
mul bx
mov eax,1
xor ebx,ebx
int 0x80
