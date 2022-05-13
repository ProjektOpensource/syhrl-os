diskerror1:
    mov bx, dre1
    call bsix_print_string
    mov ah, 0x00
    loop1:
        int 0x16
        cmp al, 0x0d
        je reboot
        jmp loop1
    reboot:
        int 0x19

dre1:   db 0x0a, 0x0a, 0x0d, "Could not read disk!!!", 0x0a, 0x0a, 0x0d, "Press Enter to reboot.", 0x0a, 0x0d, 0