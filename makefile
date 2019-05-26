all: README.md

README.md: guessinggame.sh
	echo "# The Guessing Game" > README.md
	echo "## The crazy game where you guess how many files are in your directory," >> README.md
	echo "### And thereby enjoy endless hours of speculative fun." >> README.md
	echo >> README.md
	echo "README.md file was made on `date`" >> README.md
	echo >> README.md
	echo "guessinggame.sh contains" `wc -l guessinggame.sh | egrep -o "[0-9]+"` "lines of code." >> README.md
	echo "Which are conveniently reproduced below for your scrutiny." >> README.md
	echo >> README.md
	echo "\`\`\`" >> README.md
	cat guessinggame.sh >> README.md
	echo >> README.md	
	echo "\`\`\`" >> README.md
	echo >> README.md
	echo "So long, farewell, auf wiedersehen...and thanks for all the fish." >> README.md
		echo >> README.md
	echo "***Sean Kross's*** *UCSD** & **Coursera**, *Unix Workbench* course assignment" >> README.md
	echo "(c) Michael Cunningham, May 2019" >> README.md
	

clean:
	rm README.md

