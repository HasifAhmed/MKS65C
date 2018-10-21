all:sieve.o main.o
	gcc sieve.o main.o -lm

run:
	./a.out $(args)

sieve.o: sieve.c sieve.h
	gcc -c sieve.c

main.o: main.c sieve.h
	gcc -c main.c

clean:
	rm *.o
