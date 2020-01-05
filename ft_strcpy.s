section .text

global _ft_strcpy

_ft_strcpy:
    xor rcx, rcx
    jmp copy

copy:
    mov dl, [rsi + rcx]
    mov [rdi + rcx], dl
    cmp dl, 0
    je end
    inc rcx
    jmp copy
end:
    mov rax, rdi
    ret
