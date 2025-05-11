section .text
    global _start

_start:
    mov eax, 5       ; Primer número
    add eax, 3       ; Sumar el segundo número

    ; Convertir a ASCII y mostrar en pantalla
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
