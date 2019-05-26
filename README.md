# The Guessing Game
## The crazy game where you guess how many files are in your directory,
### And thereby enjoy endless hours of speculative fun.

README.md file was made on Mon May 27 00:28:14 AEST 2019

guessinggame.sh contains 29 lines of code.
Which are conveniently reproduced below for your scrutiny.

```
#!/usr/bin/env bash
# File: guessinggame.sh
# Asks the user to guess the number of files in the current directory
# States whether the guess is too high or too low
# Repeats this until a correct answer is submitted. Then congratulates the user.

guess=""
files=$(ls -al | grep "^-" | wc -l)
# ls -al long form list of all files (including .[filename])
# grep "^-" distinguishes lines with files (-) excluding directory entries(d)
# wc -l count the number of lines remaining

function answer {
  echo "Your guess:"; read guess
}

echo; echo "How many files are in the current directory?"
while [[ $guess -ne $files ]]; do # loop until the guess is correct
  answer
  if [[ $guess =~ [^0-9] ]]; then
    echo "$guess doesn't look like a positive integer to me. Use numerals only please. " && continue; fi
  [[ $guess -gt $files ]] && echo -n "Too high. " && [[ "$guess - $files" -lt 3 ]] && echo -ne "\b\b but close. " && continue
  [[ $guess -lt $files ]] && echo -n "Too low. " && [[ "$files - $guess" -lt 3 ]] && echo -ne "\b\b but close. "
  done
echo "Well done! There are" $files "files here, including any hidden files (.*)"; echo

# echo -n no newline. -e allow backcursor \b to previous character
# continue returns to while without parsing subsequent statements in the loop
# Using semicolon code compaction, which reduces the lines used
# the requirement for 20 lines of code, a function and an if statement place unnecessary constraints on this assignment. It could be elegantly achieved in fewer lines without these awkward features.
```

So long, farewell, auf wiedersehen...and thanks for all the fish.

***Sean Kross's*** **UCSD** & **Coursera**, *Unix Workbench* course assignment
(c) Michael Cunningham, May 2019
