README.md:
	echo "# Guessing Game\n" > README.md
	echo "Make was last run on: $(shell date)\n" >> README.md
	echo "Number of lines in guessinggame.sh: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")\n" >> README.md

clean:
	rm README.md
