#!/bin/bash

cd homework_02_submission
mkdir question02
cd question02

for i in `cat ../../homeworks/homework02/list.txt`
do echo 'The title of this file is' file$i > file$i.txt
done

