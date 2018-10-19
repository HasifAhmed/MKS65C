all:sieve.o tester.o
	gcc sieve.o tester.o

sieve.o: sieve.c sieve.h
	gcc -c sieve.c

tester.o: tester.c
	gcc -c tester.c
