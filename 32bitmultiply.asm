global _start
section .text
_start:
mov eax,123456
mov ebx,789
xor edx,edx
do_mul32:
mul ebx
mov eax,1
xor ebx,ebx
int 0x80
