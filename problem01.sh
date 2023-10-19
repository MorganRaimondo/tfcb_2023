#!/bin/bash

echo 'My name is' $USER > question01.txt ;
echo 'My home directory is' $DIRECTORY >> question01.txt ;
echo 'The contents of the tfcb_2023/lectures/lecture04 directory are' >> question01.txt ;
ls lectures/lecture04 >> question01.txt
mkdir homework_02_submission ;
mv question01.txt homework_02_submission