%include "gt.asm"
	covar
sum:	dd 1000
a:	resd 1
b:	resd 1
c:	resd 1
deling:	resd 1
drie:	dd 3
een:	dd 1
twee:	dd 2
nul:	dd 0
deling2:	resd 1

aa:	resd 1
bb:	resd 1
cc:	resd 1

	inleiding
	mov eax, [sum]
	mov edx, 0
	idiv dword [drie]
	mov [deling], eax
	mov edx, 0
	

herloopa:	mov eax, [a]
	add eax, [een] 
	mov [a], eax 
	mov eax, [a]
	
	cmp eax, [deling]
	jg einde


	mov eax, [a]
	add eax, [een]
	mov [b], eax


herloopb: mov  eax, [b]
	add eax, [een]
	mov [b], eax        	
	  	
	mov eax, [sum]
	mov edx, 0
	idiv dword [twee]
	mov [deling2], eax

	mov eax, [b]
	cmp eax, [deling2]
	
	jg herloopa

		

	mov eax, [sum]
	sub eax, [a]
	mov [c], eax
	mov eax, [c]
	sub eax, [b]
	mov [c], eax
	

	


	mov eax,[c]
	cmp eax, [nul]
	jle herloopb


	mov eax, [a]
	mov edx, 0
	imul dword [a]
	mov [aa], eax
	
	mov eax, [b]
	mov edx, 0
	imul dword [b]
	mov [bb], eax
	
	mov eax, [c]
	mov edx, 0
	imul dword [c]
	mov [cc], eax
	
	
	mov eax, [aa]
	add eax, [bb]
	mov [aa], eax
	mov eax, [aa]
	cmp eax, [cc]
	
	
	je gevonden
	jne herloopb


gevonden:	uit [a]
		uit [b]
		uit [c]
	
		slot
	
begin2opnieuw: 	slot

einde:  uit [sum]
	slot