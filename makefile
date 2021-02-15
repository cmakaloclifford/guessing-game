README.md:
	echo "# Guessing Game" > README.md
	echo "Make was last run on: $(shell date)" >> README.md
	echo "Number of lines in guessinggame.sh: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md

clean:
	rm README.md
