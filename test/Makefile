CC      ?= gcc
CFLAGS  ?= -Wall -g
LIBS     = $(SRC)/list.o $(SRC)/process_iterator.o $(SRC)/process_group.o
SRC      = ../src
STRIP   := $(shell which strip)
SYSLIBS ?= -lpthread
TARGETS  = busy process_iterator_test
UNAME   := $(shell uname)

ifeq ($(UNAME), FreeBSD)
LIBS+=-lkvm
endif

all::	$(TARGETS)

static: $(TARGETS)
	$(MAKE) all CFLAGS="$(CFLAGS) --static"
	touch static

strip: $(TARGETS)
	$(STRIP) $(TARGETS)
	touch strip

install:: $(TARGETS)
	touch install

static_install:: static strip
	touch static_install

busy:	busy.c
	$(CC) -o busy busy.c $(SYSLIBS) $(CFLAGS)

process_iterator_test: process_iterator_test.c $(LIBS)
	$(CC) -I$(SRC) -o process_iterator_test process_iterator_test.c $(LIBS) $(SYSLIBS) $(CFLAGS)

clean:
	rm -f *~ *.o $(TARGETS)

