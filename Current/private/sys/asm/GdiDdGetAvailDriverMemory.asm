; Hc/NtGdiDdGetAvailDriverMemory
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdGetAvailDriverMemory:DWORD

.DATA
.CODE

HcGdiDdGetAvailDriverMemory PROC
	mov r10, rcx
	mov eax, sciGdiDdGetAvailDriverMemory
	syscall
	ret
HcGdiDdGetAvailDriverMemory ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdGetAvailDriverMemory:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdGetAvailDriverMemory PROC
	mov eax, sciGdiDdGetAvailDriverMemory
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiDdGetAvailDriverMemory ENDP

ENDIF

END