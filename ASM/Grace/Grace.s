; Commentaire Grace
%define S "; Commentaire Grace%2$c%%define S %3$c%1$s%3$c%2$c%%define D_MAIN global _main%2$c%%define FT _main:%2$csection .data%2$cdata:%2$c.s db S, 0%2$c.fichier db %3$cGrace_kid.s%3$c, 0%2$csection .text%2$cglobal start%2$cextern _dprintf%2$cD_MAIN%2$cstart:%2$cFT%2$cpush rbp%2$cmov rbp, rsp%2$cmov rax, 0x2000005%2$cmov rdi, data.fichier%2$cmov rsi, 514%2$cmov rdx, 0644o%2$csyscall%2$cmov rdi, rax%2$cmov rsi, data.s%2$cmov rdx, data.s%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$cleave%2$cret"
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
mov rdi, data.fichier
mov rsi, 514
mov rdx, 0644o
syscall
mov rdi, rax
mov rsi, data.s
mov rdx, data.s
mov rcx, 10
mov r8, 34
call _dprintf
leave
ret