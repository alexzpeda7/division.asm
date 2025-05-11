section .text
    global _start

_start:
    mov eax, 8       ; Dividendo
    mov ebx, 2       ; Divisor
    xor edx, edx     ; Limpiar el registro para evitar errores
    div ebx          ; División: EAX / EBX (cociente en EAX, residuo en EDX)

    ; Convertir resultado a ASCII y mostrar en pantalla
    add eax, '0'
    mov [result], eax
    mov edx, 1
    mov ecx, result
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Salir del programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .bss
    result resb 1
