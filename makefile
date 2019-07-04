YFLAGS = -d
OBJS = tiny_compiler.o init.o math.o symbol.o

tiny_compiler3:	    $(OBJS)
		    cc $(OBJS) -lm -o tiny_compiler3

tiny_compiler.o:    tiny_compiler.h

init.o symbol.o:	tiny_compiler.h y.tab.h

pr:
	@pr tiny_compiler.y tiny_compiler.h init.c math.c symbol.c makefile

clean:
	rm -f $(OBJS) y.tab.[ch]
