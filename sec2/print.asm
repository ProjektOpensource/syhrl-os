bsix_print_string:
    push ax
    push bx
    mov ah, 0x0e
    .Loop:
        mov al, [bx]
        int 0x10
        inc bx
        cmp [bx], byte 0
        je .Exit
        jmp .Loop
        .Exit:
            pop ax
            pop bx
            ret

        
        