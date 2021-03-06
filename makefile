#!/usr/bin/env make -f

cflags=-Wall -std=c17 -ggdb

all: tictactoe

tictactoe: main.o makefile
	gcc $(cflags) -o $@ $< -lncurses

%.o: %.c makefile
	gcc $(cflags) -o $@ $< -c
