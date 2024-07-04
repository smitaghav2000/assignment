CC=gcc
CFLAGS=-Wall -Wextra -std=c99

all: pushd_popd

pushd_popd: main.o stack.o
    $(CC) $(CFLAGS) -o pushd_popd main.o stack.o

main.o: main.c stack.h
    $(CC) $(CFLAGS) -c main.c

stack.o: stack.c stack.h
    $(CC) $(CFLAGS) -c stack.c

clean:
    rm -f *.o pushd_popd
