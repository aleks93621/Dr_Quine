section .data
s db "fichier Sully_%d.s", 0
command db "nasm -f macho64 Sully_%d.s && ld -lSystem -macosx_version_min 10.12 -o Sully_%d Sully_%d.o && rm *.o && ./Sully_%d", 0
fichier db "Sully_%d.s", 0
format db "%s", 10
testt db "testt", 10
section .text
global _main
extern _sprintf
extern _dprintf
extern _malloc
extern _free
extern _system
extern _printf
_main:
push rbp
mov rbp, rsp
mov r15, 5

cmp r15, 1
jb end

mov rdi, 10
call _malloc
mov r14, rax
mov rdi, r14
mov rsi, fichier
mov rdx, r15
call _sprintf

call checker

; mov rdi, 10
; call _malloc
; mov r14, rax
; mov rdi, r14
; mov rsi, fichier
; mov rdx, r15
; call _sprintf

; mov rax, 0x2000005
; mov rdi, r14
; mov rsi, 514
; mov rdx, 0644o
; syscall

; mov rdi, rax
; mov rsi, s
; mov rdx, r15
; call _dprintf

; mov rdi, r14
; call _free

call end
checker:
mov rdi, format
mov rsi, testt
mov rax, 0
call _printf
; mov rax, 0x2000021
; mov rdi, r14
; mov rsi, 0
; syscall
; cmp rax, 0x0
; jae file_exist
; mov rdi, r14
; call _free
mov rax, 0
ret
file_exist:
dec r15
ret
end:
mov rax, 0x2000001
xor rdi, rdi
syscall