;disk successes
disksuccess1:
    mov bx, drs1
    call bsix_print_string
    ret

drs1:   db 0x0a, 0x0a, 0x0d, "Successfully read disk!!!", 0
;;;;;;;;;;;;;;;;;;