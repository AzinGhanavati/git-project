; School of Computer Engineering
; K.N. Toosi University of Technology
; Azin Ghanavati
global is_prime

segment .data
		
segment .text

is_prime:
	enter 0,0
    push ecx
    push edx

    ;; ==========================

	mov eax, [ebp+8]
    mov edx,0
    mov ecx,2
	cmp eax,1
    je not_prime

    ;; ==========================

    cmp eax,2
    je prime

    div ecx
    cmp edx,0
    je not_prime       ;; if eax%2=0 is not prime
    
    ;; ==========================
    
    inc ecx            ;; ecx=3
loop1:
    cmp eax,ecx
    jna prime
    div ecx
    add ecx,2
    cmp edx,0
    jne loop1          ;; if edx=0 => goes to not_prime 

not_prime:
    mov eax , 0
    jmp endFunc
prime:
    mov eax,1
    jmp endFunc
	
endFunc:
    pop edx
    pop ecx	
	leave
	ret
	
