;;; Boot sector program that demonstrates addresseing.

;;;  Version accounting for global 0x7c00 offset.
[org 0x7c00]                    ; Set global offset for all addresses.
mov ah, 0x0e                    ; Set video interrupt to write contents of register al in tty mode.
mov al, [the_secret]            ; Set the value of label the_secret into al.
int 0x10                        ; Send print interrupt.

;; ;;;  Version without global 0x7c00 offset.
;; mov ah, 0x0e                    ; Set video interrupt to write contents of register al in tty mode.
;; mov bx, the_secret              ; Move address of label the_secret into bx.
;; add bx, 0x7c00                  ; Add 0x7c00 global offset to bx.
;; mov al, [bx]                    ; Move value of bx into al.
;; int 0x10                        ; Send print interrupt.

the_secret:
  db 'X'

jmp $                           ; Jump to the current address (infinite loop.)

;;; Fill with 510 zeros minus the size of the previous code.
times 510-($-$$) db 0

;;; Magic number for bootloader.
dw 0xaa55
