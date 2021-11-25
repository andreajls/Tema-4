hola: hola.c hola.o
    gcc -Wall -g hola.c hola.o -o hola

hola.o: hola.c hola.h
    gcc -g -Wall -c hola.c hola.o