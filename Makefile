
CFLAGS=-Wall -g


main: primo.h primo.o secondo.h secondo.o terzo.h terzo.o main.c 
	gcc main.c primo.o secondo.o terzo.o -coverage -o main $(CFLAGS)

terzo.o: terzo.h terzo.c
	gcc -c terzo.c -coverage $(CFLAGS)

secondo.o: secondo.h secondo.c
	gcc -c secondo.c -coverage $(CFLAGS)

primo.o: primo.h primo.c
	gcc -c primo.c -coverage 



