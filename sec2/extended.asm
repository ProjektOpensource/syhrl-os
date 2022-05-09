[bits 16]
[org 0x7e00]

mov bp, 0x7e00
mov sp, bp

mov bx, stringtest
call bsix_print_string

;jmp $

%include "print.asm"

stringtest:
    db "Hello from me!!!", 0

times 2048-($-$$) db 0