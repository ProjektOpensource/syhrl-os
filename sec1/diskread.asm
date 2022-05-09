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
    call disksuccess1
    ret

boot_disk:
    db 0

disksuccess1:
    mov bx, drs1
    call bsix_print_string
    ret

diskerror1:
    mov bx, dre1
    call bsix_print_string
    jmp $

dre1:   db 0x0a, 0x0a, 0x0d, "Could not read disk!!!", 0
drs1:   db 0x0a, 0x0a, 0x0d, "Successfully read disk!!!", 0