; Commentaire hors programme
section .data
string:
.s db "; Commentaire hors programme%2$csection .data%2$cstring:%2$c.s db %3$c%1$s%3$c, 0%2$csection .text%2$cglobal fonction%2$cglobal _main%2$cextern _printf%2$cfonction:%2$cret%2$c_main:%2$c; Commentaire main%2$cpush rbp%2$cmov rbp, rsp%2$clea rdi, [rel string.s]%2$clea rsi, [rel string.s]%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall _printf%2$ccall fonction%2$cleave%2$cret", 0
section .text
global fonction
global _main
extern _printf
fonction:
ret
_main:
; Commentaire main
push rbp
mov rbp, rsp
lea rdi, [rel string.s]
lea rsi, [rel string.s]
mov rdx, 10
mov rcx, 34
call _printf
call fonction
leave
ret