all:sieve.o tester.o
	gcc sieve.o tester.o -lm

run:
	./a.out $(args)

sieve.o: sieve.c sieve.h
	gcc -c sieve.c

tester.o: tester.c sieve.h
	gcc -c tester.c

clean:
	rm *.o
