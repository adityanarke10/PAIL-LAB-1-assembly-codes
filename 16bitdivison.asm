global _start
section .text
_start:
mov ax,1000
mov dx,0
mov bx,25
do_div16:
div bx
mov eax,1
xor ebx,ebx
int 0x80
