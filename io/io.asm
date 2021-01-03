.model small
.data               ; data directive with nothing in it

.code               ; code directive

    mov ah, 1h      ; perform read character, wait until entry (saved in `al` register)
    int 21h         ; Dos interrupt "do it;" tells program to initiate `mov ah, 1h`
    mov dl, al      ; move value of `al` to `dl`
    
    mov ah, 2h      ; perform write character, like print; move `2h` into `ah`
    int 21h         ; Dos interrupt; initiates `mov ah, 2h`, which will display character stored in `dl` register

end