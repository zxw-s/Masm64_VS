; MASM64 VS项目模板
extrn MessageBoxA:PROC
extrn ExitProcess:PROC
extrn Beep:PROC

.data
szTitle     db  "MASM64 Demo",0
szMsg       db  "Hello MASM64 Windows!",0

.code
main PROC
    sub     rsp, 28h        ; 影子空间+16字节栈对齐

    mov     rcx,700
    mov     rdx,800
    call    Beep

    xor     rcx, rcx
    lea     rdx, szMsg
    lea     r8, szTitle
    xor     r9, r9
    call    MessageBoxA

    xor     rcx,rcx
    call    ExitProcess
main ENDP
END