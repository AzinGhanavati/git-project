; School of Computer Engineering
; K.N. Toosi University of Technology
; Azin Ghanavati

%include "asm_io.inc"

segment .text

global asm_main

extern is_prime,count_01,count_101

asm_main:
	pusha
	;; ==========================

    call read_int
    mov ebx,eax
    push ebx

    call is_prime
    
    cmp eax,0
    jne count01 ;; if eax!=0 => count 01
    
count101:
    call count_101
    call print_int
    call print_nl
    jmp end

count01:
    call count_01	
    call print_int
    call print_nl

	;; ==========================
end:
    add esp,4
    popa
    ret
