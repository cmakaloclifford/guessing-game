README.md:
	echo -e "# Guessing Game\n" > README.md
	echo -e "Make was last run on: $(shell date)\n" >> README.md
	echo -e "Number of lines in guessinggame.sh: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")\n" >> README.md

clean:
	rm README.md
