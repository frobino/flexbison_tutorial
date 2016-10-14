all: snazzle

snazzle: lex.yy.c snazzle.tab.h snazzle.tab.c
	g++ snazzle.tab.c lex.yy.c -lfl -o snazzle

lex.yy.c: snazzle.l snazzle.tab.h
	flex snazzle.l

snazzle.tab.h: snazzle.y
	bison -d snazzle.y

clean:
	rm lex.yy.c *~ snazzle snazzle.tab.*
