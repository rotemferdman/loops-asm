; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ah, 1
int 21h 
sub al, 30h ;for getting the right number
mov dl, al
mov cl, al                             
mov bl, al

mov al, '*'
mov ah, 9  

one:
push cx
mov bl, dl
push cx
sub cx, 1
sub bx, cx
pop cx
mov cx, bx

two: 
push dx        
mov dl, '*'
mov ah, 2
int 21h
pop dx
loop two
PRINTN
pop cx
loop one

ret

include magshimim.inc
