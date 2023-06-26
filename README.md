# Inicialización y Manipulación de Array en ARM Assembly

Este código en ensamblador ARM inicializa y manipula un array de 10 elementos. El array inicial contiene los números del 2 al 20 en incrementos de 2. Luego, el código divide cada elemento del array por 2.

## Características

- Inicializa un array con los números del 2 al 20, incrementados de 2 en 2.
- Divide cada elemento del array por 2.
- Utiliza bucles, comparaciones y operaciones aritméticas básicas.

## Uso

Este código está destinado a ser compilado y ejecutado en un entorno que soporte ARM Assembly. Puedes compilar y ejecutar este código usando un ensamblador y un simulador de ARM, como por ejemplo, el `GNU Assembler (as)` y `QEMU`.

Primero, debes compilar el código con el ensamblador:

```bash
as -o programa.o programa.s
```

Luego, enlaza el código objeto para crear el archivo ejecutable:

bash

ld -o programa programa.o

Finalmente, puedes ejecutar el programa usando un simulador como QEMU:

bash

qemu-arm programa

Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.

css

Recuerda que puedes modificar este contenido para adaptarlo mejor a tu proyecto en particular. ¡Buena suerte!
