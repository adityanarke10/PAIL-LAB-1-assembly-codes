global _start
section .text
_start:
mov eax,100000
xor edx,edx
mov ebx,250
do_div32:
div ebx
mov eax,1
xor ebx,ebx
int 0x80
