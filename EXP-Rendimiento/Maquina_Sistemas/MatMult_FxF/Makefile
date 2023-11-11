GCC = gcc
oT = -fopenmp -O3 

CFLAGS = -lm 

oL= Otime.c

BINDIR = ../BIN/
PROGS = $(BINDIR)MM1c_FxF 

all: MM1c_FxF

clean:
	$(RM) $(PROGS)

MM1c_FxF:
	$(GCC) $(oT) $(oL) $@.c -o $(BINDIR)$@ $(CFLAGS)
