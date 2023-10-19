# Homework 2: Unix shell

This homework will assess your ability to run commands in the shell and make a simple script.

Replace the lines specified in _italics_ with your answers and save as a text file.


## Problem 0

**60 points**

Complete the interactive tutorial.

_Did you hit any points of frustration, and if so, how could we improve the material to avoid that frustration?_

>> `vim` does not work using Docker or the a Windows terminal, even after an additional pull. This made it really difficult to understand this section and therefore the script later on in this homework. I konw that was not anticipated, but there is also no troubleshooting for when this happens. Because of this, I could not complete that part of the tutorial (I tried multiple terminals with and without Docker, and tried downloading access to vim). Similarly, I cannot use `less` due to permission issues/access.

Otherwise, I though the tutorial was very helpful in preparing me for the homework.

## Problem 1

**20 points**

**Write a script that outputs some user and location data and moves that output to a newly created directory**

Make a single script that prints out a file called question01.txt. 

This file should contain the following text:

  My username is (your username, but the script needs to work for anyone, not just you)

  My home directory is (your home directory, but the script needs to work for anyone, not just you)

  The contents of the tfcb_2023/lectures/lecture04/ directory are

  (prints the contents of that directory)

This script should also create a directory called homework02, and move question01.txt into the homework02 directory.

An example output answer should be:

My username is campbellm <br>
My home directory is /Users/melody <br>
The contents of the tfcb_2023/lectures/lecture04/ directory are<br>
01-first-steps.md<br>
02-directories<br>
03-redirection<br>
04-vim<br>
05-history<br>
06-scripting<br>
07-more-interactive-shell<br>
README.md<br>
quickref.md<br>
sequence.gb<br>
slides<br>
vader.txt<br>


#!/bin/bash

echo 'My name is' $USER > question01.txt ;
echo 'My home directory is' $DIRECTORY >> question01.txt ;
echo 'The contents of the tfcb_2023/lectures/lecture04 directory are' >> question01.txt ;
ls lectures/lecture04 >> question01.txt
mkdir homework_02_submission ;
mv question01.txt homework_02_submission

Using this script requires you to be in the tfcb_2023 directory (where the files and the problem01.sh script is located)

## Problem 2

**20 points**

**Write a script that uses a loop to output files with specific names**


Make a single script that does the following:

Makes a new directory in homework02 called question02

In that directory, your script should make 25 new files called
file###.txt

the ### should be the numbers from a list you can find here:

tfcb_2023/homeworks/homework02/list.txt

You can make the contents of those files whatever you want (hint: slide 9... )

#!/bin/bash

cd homework_02_submission
mkdir question02
cd question02

for i in `cat ../../homeworks/homework02/list.txt`
do echo 'The title of this file is' file$i > file$i.txt
done

Using this script requires you to be in the tfcb_2023 directory (where the files and the problem02.sh script is located)

