all:a.out

a.out: interpretador.lex interpretador.yacc arvore.c
	flex -l interpretador.lex
	yacc -vd interpretador.yacc
	gcc *.c -lm -ll -Wno-int-to-pointer-cast -Wno-pointer-to-int-cast

clean:
	rm -f *.o *.*~ *~
