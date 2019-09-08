section .data
data:
.s db "A completer", 0
section .text
global start
global _main
extern _dprintf
start:
call _main
ret
main:
mov rbp
mov rbp, rsp
leave
ret