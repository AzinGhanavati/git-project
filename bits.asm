; School of Computer Engineering
; K.N. Toosi University of Technology
; Azin Ghanavati

global count_01 , count_101

segment .data
		
segment .text
	
count_01:
	enter 0,0
    push ecx
    push edx
    push ebx
    
    ;; ===============================	
    
    mov ebx, [ebp+8]
    mov edx,01b
    mov cl,0
    mov eax,0
loop1:
    shl edx,cl
    xor edx,ebx
    shr edx,cl
    and edx,11b

    cmp edx,0
    jne not_count_01
    inc eax
    
not_count_01:
    mov edx,01b
    add cl,1
    cmp cl,31  
    jb loop1
    
	;; ===============================
		
end_count_01:
    pop ebx
    pop edx
    pop ecx	
    leave
    ret





count_101:
	enter 0,0
    push ecx
    push edx
    push ebx
    
    ;; ===============================	
    
    mov ebx, [ebp+8]
    mov edx,101b
    mov cl,0
    mov eax,0
loop2:
    shl edx,cl
    xor edx,ebx
    shr edx,cl
    and edx,111b

    cmp edx,0
    jne not_count_101
    inc eax
    
not_count_101:
    mov edx,101b
    add cl,1
    cmp cl,30  
    jb loop2
    
    ;; ===============================	
    
end_count_101:
    pop ebx
    pop edx
    pop ecx	
    leave
    ret
	
