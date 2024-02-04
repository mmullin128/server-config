#!/bin/sh -l

echo "$1" > temp.txt
echo "$2" >> temp.txt
echo "$3" >> temp.txt
echo "$4" >> temp.txt
echo "$5" >> temp.txt
echo "$6" >> temp.txt
echo "$7" >> temp.txt

cat temp.txt