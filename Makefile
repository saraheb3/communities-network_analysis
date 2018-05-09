CFLAGS = -O
CC = gcc
LIBS = -lm -lgsl -lgslcblas

communities:communities.o readgml.o
	$(CC) $(CFLAGS) -o communities communities.o readgml.o $(LIBS)

communities.o:communities.c network.h readgml.h Makefile
	$(CC) $(CFLAGS) -c communities.c

readgml.o:readgml.c readgml.h network.h
	$(CC) $(CFLAGS) -c readgml.c
