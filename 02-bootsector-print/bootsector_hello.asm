;;; Will print "Hello".
mov ah, 0x0e                    ; Set video interrupt to write contents of register al in tty mode.
mov al, 'H'                     ; Move character into register
int 0x10                        ; Raise interrupt.
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10                        ; 'l' is already in register al.
mov al, 'o'
int 0x10


jmp $                           ; Jumpy to the current address (infinite loop.)

;;; Fill with 510 zeros minus the size of the previous code.
times 510-($-$$) db 0

;;; Magic number for bootloader.
dw 0xaa55
