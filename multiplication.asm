global _start
_start:

  section .text
  mov al, 10       
  mov bl, 5        
  
  mul bl           
  
  mov eax, 1       
  xor ebx, ebx     
  int 0x80
