section .data
  input_name db "Enter name: ", 0
  input_surname db "Enter surname: ", 0 
  newline db 10,0
  output_msg db "Your full name: ",0
  
section .bss
  name resb 32
  surname resb 32
  
section .text
 global _start
_start:
  
  mov eax,4
  mov ebx,1
  mov ecx,input_name
  mov edx,12
  int 0x80
  
  mov eax,3
  mov ebx,0
  mov ecx,name
  mov edx,32
  int 0x80
  
  mov eax,4
  mov ebx,1
  mov ecx,input_surname
  mov edx,15
  int 0x80
  
  mov eax,3
  mov ebx,0
  mov ecx,surname
  mov edx,32
  int 0x80
  
  mov eax,4
  mov ebx,1
  mov ecx,output_msg
  mov edx,16
  int 0x80
  
  mov eax,4
  mov ebx,1
  mov ecx,name
  mov edx,32
  int 0x80
  
  mov eax,4
  mov ebx,1
  mov ecx,newline
  mov edx,1
  int 0x80
  
  mov eax,4
  mov ebx,1
  mov ecx,surname
  mov edx,32
  int 0x80
  
  mov eax,1
  xor ebx,ebx
  int 0x80
