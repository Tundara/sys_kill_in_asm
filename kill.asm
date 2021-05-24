BITS 64

global _start

section .text

_start:
    call _kill_proc
    jmp _exit

_kill_proc:
    mov rax, 62
    mov rdi, ;pid 
    mov rsi, 0
    syscall
    ret

_exit:
    mov rax, 60
    mov rdi, 0
    syscall

