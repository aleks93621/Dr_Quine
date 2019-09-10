section .data
s db "section .data%2$cs db %3$c%1$s%3$c, 0%2$ccommand db %3$cnasm -f macho64 Sully_%%1$d.s && ld -lSystem -macosx_version_min 10.12 -o Sully_%%1$d Sully_%%1$d.o && rm *.o && ./Sully_%%1$d%3$c, 0%2$cfichier db %3$cSully_%%d.s%3$c, 0%2$csection .text%2$cglobal _main%2$cextern _sprintf%2$cextern _dprintf%2$cextern _malloc%2$cextern _free%2$cextern _system%2$cextern _access%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$cmov r15, %4$d%2$ccmp r15, 1%2$cjl end%2$cmov rdi, 10%2$ccall _malloc%2$cmov r14, rax%2$cmov rdi, r14%2$cmov rsi, fichier%2$cmov rdx, r15%2$ccall _sprintf%2$csub  rsp, 8%2$ccall checker%2$cadd rsp, 8%2$cmov rdi, 10%2$ccall _malloc%2$cmov r14, rax%2$cmov rdi, r14%2$cmov rsi, fichier%2$cmov rdx, r15%2$ccall _sprintf%2$cmov rax, 0x2000005%2$cmov rdi, r14%2$cmov rsi, 514%2$cmov rdx, 0644o%2$csyscall%2$cmov rdi, rax%2$cmov rsi, s%2$cmov rdx, s%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, r15%2$ccall _dprintf%2$cmov rdi, r14%2$ccall _free%2$cmov rdi, 255%2$ccall _malloc%2$cmov r14, rax%2$cmov rdi, r14%2$cmov rsi, command%2$cmov rdx, r15%2$ccall _sprintf%2$cmov rdi, r14%2$ccall _system%2$cmov rdi, r14%2$ccall _free%2$ccall end%2$cchecker:%2$clea rdi, [rel r14]%2$cmov rsi, 0%2$ccall _access%2$ccmp rax, 0%2$cjbe file_exist%2$cmov rdi, r14%2$ccall _free%2$cret%2$cfile_exist:%2$cdec r15%2$cret%2$cend:%2$cmov rax, 0x2000001%2$cxor rdi, rdi%2$csyscall", 0
command db "nasm -f macho64 Sully_%1$d.s && ld -lSystem -macosx_version_min 10.12 -o Sully_%1$d Sully_%1$d.o && rm *.o && ./Sully_%1$d", 0
fichier db "Sully_%d.s", 0
section .text
global _main
extern _sprintf
extern _dprintf
extern _malloc
extern _free
extern _system
extern _access
_main:
push rbp
mov rbp, rsp
mov r15, 5
cmp r15, 1
jl end
mov rdi, 10
call _malloc
mov r14, rax
mov rdi, r14
mov rsi, fichier
mov rdx, r15
call _sprintf
sub  rsp, 8
call checker
add rsp, 8
mov rdi, 10
call _malloc
mov r14, rax
mov rdi, r14
mov rsi, fichier
mov rdx, r15
call _sprintf
mov rax, 0x2000005
mov rdi, r14
mov rsi, 514
mov rdx, 0644o
syscall
mov rdi, rax
mov rsi, s
mov rdx, s
mov rcx, 10
mov r8, 34
mov r9, r15
call _dprintf
mov rdi, r14
call _free
mov rdi, 255
call _malloc
mov r14, rax
mov rdi, r14
mov rsi, command
mov rdx, r15
call _sprintf
mov rdi, r14
call _system
mov rdi, r14
call _free
call end
checker:
lea rdi, [rel r14]
mov rsi, 0
call _access
cmp rax, 0
jbe file_exist
mov rdi, r14
call _free
ret
file_exist:
dec r15
ret
end:
mov rax, 0x2000001
xor rdi, rdi
syscall