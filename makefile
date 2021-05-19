codegen:
	mkdir bin
	cp src/* bin/
	python -m py_compile bin/*.py
	python src/lexer.py test/if2.py  # Displays the lexer output
	python src/parser.py test/if2.py  # Displays the parser output
	mv bin/codegen.py bin/codegen
	chmod +x bin/codegen
	bin/codegen test/if2.py   2>/dev/null > /dev/null # to create parsetable once
	rm -f parser.out
	#mv parsetab.py bin/parsetab.py
	
clean:
	rm -f -rf bin
	rm -f parse*
	rm -f dump
