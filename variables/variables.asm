.model small           ; VARIABLES

.data

    count1 db 2        ; add variable `count1` of data type `db`, which is an 8-bit data type, with integer value of 2

.code

main proc
    
    mov dl, count1     ; move `count1` into the `dl` register
                       ; recall that printing a character is performed based on the content of the `dl` register
    add dl, 48
    
    mov ah, 2h         ; code to print the character: move `2h` into the `ah` register
    int 21h            ; code to print the character: whatever is in the `dl` register

endp

end main