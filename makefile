README.md:
	touch README.md

README.md: guessinggame.sh
	echo "This is title of my project:" > README.md
	echo "This file contains next number of entries:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "The date and time at which make was run:" >> README.md
	date >> README.md
clean:
	rm README.md
