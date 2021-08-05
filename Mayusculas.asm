name "int02"
ORG 100H
lectura:
 mov ah,7
 int 21h

 mov tecla, al  ;guaradar la tecla ingresada   
 
 cmp al,13      ;si tecla es 'ENTER', entonces ir a fin
 jz fin:

cmp tecla, 122  ;si tecla es mayor a 122 entonces ir a fin3
ja fin3

cmp tecla,96    ;si tecla no es mayor a 96 ir a fin3
jng fin3

sub tecla, 32   ;si la letra es minúscula entonces restarle 32

fin3:           ;imprimir el valor de 'tecla'
mov ah,2
mov dl,tecla
int 21h
jmp lectura

fin:            ;función que finaliza el programa
ret

tecla db 0      ;variable que almacena el dato ingresado