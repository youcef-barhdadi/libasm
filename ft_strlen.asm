section .text
global _ft_strlen

_ft_strlen:
    xor rcx, rcx
    xor rax, rax
    jmp count

count:
    mov dl, [rcx + rdi]
    cmp dl, BYTE 0x00
    je end
    inc rcx
    jmp count

end:
    mov rax, rcx
    ret