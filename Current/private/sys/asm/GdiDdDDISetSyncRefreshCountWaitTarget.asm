; Hc/NtGdiDdDDISetSyncRefreshCountWaitTarget
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDISetSyncRefreshCountWaitTarget:DWORD

.DATA
.CODE

HcGdiDdDDISetSyncRefreshCountWaitTarget PROC
	mov r10, rcx
	mov eax, sciGdiDdDDISetSyncRefreshCountWaitTarget
	syscall
	ret
HcGdiDdDDISetSyncRefreshCountWaitTarget ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDISetSyncRefreshCountWaitTarget:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDISetSyncRefreshCountWaitTarget PROC
	mov eax, sciGdiDdDDISetSyncRefreshCountWaitTarget
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
HcGdiDdDDISetSyncRefreshCountWaitTarget ENDP

ENDIF

END