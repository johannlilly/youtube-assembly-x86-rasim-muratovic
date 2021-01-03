.model tiny                    ; com program , Code Data & Stack in one 64K Segment
.code                          ; code segment
org 100h                       ; code starts at offset 100h


main proc near                 
    
mov ah,09h                     ; `ah` is the function to display a string; move the value of `09h` into the register `ah`
mov dx,offset message          ; offset of message string terminating with $; there is a string present; move value of the offset message to the register `dx`
int 21h                        ; dos interrupt; `21h` initiates the process beginning with `mov ah,09h`

mov ah,4ch                     ; function to terminate; move the value of `4ch` into the register `ah`
mov al,00                      ; move the value of `00` to the register `al`
int 21h                        ; Dos Interrupt; `21h` initiates the process beginning with `mov ah,4ch`

endp                           ; end program                   
message db "Hello World $"     ; Message to be displayed terminating with a $; data type is `db`

end main