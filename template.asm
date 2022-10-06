; Автор Арен Елчинян Артурович ака 0Nera
; a2.dev@yandex.ru github.com/0nera 0nera.ru
; Шаблон для загрузочного сектора
; Используется язык ассемблера FASM


format binary as "img"
org 7C00h

start:
    
    mov ax, 3   ; Установка видеорежима
    int 10h


times 510 - ($ - $$) db 0   ; Заполнение оставшихся байт нулями до 510-го байта
db 0x55, 0xAA               ; Загрузочная сигнатура 