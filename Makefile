
# Variables to control Makefile operation

CC = g++
CFLAGS = -Wall -g

main: main.o
	$(CC) $(CFLAGS) -o main main.o

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

clean:
	rm -rf main main.o
