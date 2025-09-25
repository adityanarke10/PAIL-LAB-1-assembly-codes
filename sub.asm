global _start
_start:

  section .text
  mov al, 100      
  mov bl, 50       
  
  sub al, bl       
  
  mov eax, 1       
  xor ebx, ebx     
  int 0x80
