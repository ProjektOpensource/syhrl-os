program_space equ 0x7e00

read_disk:
    mov ah, 0x02
    mov bx, program_space
    mov al, 4
    mov dl, [boot_disk]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02
    int 0x13
    jc diskerror1
    ret

boot_disk:
    db 0

%include "sector1_errors.asm"
