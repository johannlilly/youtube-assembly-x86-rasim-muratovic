.model small
                 ; .data and .code are directives or segments which tells the assembler how to assemble code.
.data            ; .data part holds all the variables and memory related things 

.code            ; .code holds all the instructions and code which tells registers and processor what to do.

main proc   
    
    
    mov dl, 2    ; give `dl` a value: a decimal value which prints as a char
    add dl, 48   ; adds the decimal `48` to the decimal of `2`, which equates to the decimal `50` and the char `2`
                 ; the `h` modifier indicates hexidecimal; e.g. `mov dl, 2h` and `add dl, 30h`, which equals hexidecimal 32, the char `2`
    sub dl, 2    ; subtract the decimal `2` from `50` to get `48`, which equates to the char `0` 
    mov ah, 2h   ; code for print char    
    int 21h      ; prints value of `dl` register   
    
endp    

end main       