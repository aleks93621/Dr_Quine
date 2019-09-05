; Commentaire Grace
%define S " Commentaire Grace%2$c%define S %3$c%1$s%3$c%2$c"
%define D_MAIN global _main
%define FT _main:
section .data
data:
.s db S, 0
.fichier db "Grace_kid.s", 0
section .text
global start
extern _dprintf
D_MAIN
start:
FT
push rbp
mov rbp, rsp
mov rax, 0x2000005
lea rdi, [rel data.fichier]
mov rsi, 0x0202
mov rdx, 0x124
syscall
; mov rax, 2
; lea rdi, [rel data.fichier]
; mov rsi, 1
; syscall
; lea rdi, [rel data.file]
leave
ret
