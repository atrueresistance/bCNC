NAME = bCNC
SOURCES = *.py lib/*.py plugins/*.py

pot: ${NAME}.pot

${NAME}.pot: ${SOURCES}
	#xgettext --from-code --keyword=N_ -d ${NAME} -o $@ $^
	pygettext -k N_ -d ${NAME} -o $@ $^

tags:
	ctags *.py lib/*.py plugins/*.py

clean:
	rm -f ${NAME}.pot
	rm -f *.pyc *.pyo
	rm -f lib/*.pyc lib/*.pyo
	rm -f plugins/*.pyc plugins/*.pyo
