global _main
extern _printf

section .text

_main:
    push rbx

    mov ecx, 90
    xor rax, rax
    xor rbx, rbx
    inc rbx


print:
    push rax
    push rcx

    mov rdi, format
    mov rsi, rax
    xor rax, rax

    call _printf

    pop rcx
    pop rax

    mov rdx, rax
    mov rax, rbx
    add rbx, rdx
    dec ecx
    jnz print

    pop rbx
    ret
format:
    db "%20ld", 10, 0