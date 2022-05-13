[bits 16]
[org 0x7e00]

mov bp, 0x7e00
mov sp, bp

call disksuccess1

jmp $

%include "print.asm"
%include "sector2_successes.asm"

times 2048-($-$$) db 0