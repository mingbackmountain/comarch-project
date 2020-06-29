;Thanakorn Pasangthien 6088109
%include "asm_io.inc"

segment _DATA public align=4 class=DATA use32
enter1         db      "Enter Number1: ", 0     ;first string 
enter2         db      "Enter Number2: ", 0     ;second string 
enter3         db      "Enter Number3: ", 0     ;third string 
answer         db      "Answer = ",0            ;fourth string 

segment _BSS public align=4 class=BSS use32
num1           resd    16           ;reserve for first number    
num2           resd    16           ;reserve for second number    
num3           resd    16           ;reserve for third number 

group DGROUP _BSS _DATA

segment _TEXT public align=1 class=CODE use32
        global  _asm_main
_asm_main:
        enter   0,0              
        pusha

        mov     eax,  enter1  
        call    print_string    ;print the first string

        call    read_int          
        mov     [num1], eax     ;input num1

        mov     eax,  enter2    ;print the second string
        call    print_string

        call    read_int             
        mov     [num2], eax     ;input num2

        mov     eax,  enter3    ;print the third string
        call    print_string

        call    read_int             
        mov     [num3], eax     ;input num3

        mov     eax,answer      ;print the fourth string
        call    print_string

        mov eax,[num1]
        add eax,[num2]
        add eax,[num3]  ;sum num1 num2 and num3

        mov edx,0
        mov ecx,3
        div ecx
        push eax
        call print_int ;print the average

        ret
