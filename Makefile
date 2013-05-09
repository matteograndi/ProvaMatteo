CFLAGS=-Wall -g

main: primo.h primo.o secondo.h secondo.o terzo.h terzo.o main.c 
	gcc main.c primo.o secondo.o terzo.o -o main $(CFLAGS)

terzo.o: terzo.h terzo.c
	gcc -c terzo.c $(CFLAGS)

secondo.o: secondo.h secondo.c
	gcc -c secondo.c $(CFLAGS)

primo.o: primo.h primo.c
	gcc -c primo.c $(CFLAGS) 



