[org 0x7c00]

mov [boot_disk], dl

mov bp, 0x7c00
mov sp, bp

call read_disk

%include "print.asm"
%include "diskread.asm"

jmp program_space

times 510-($-$$) db 0
dw 0xaa55