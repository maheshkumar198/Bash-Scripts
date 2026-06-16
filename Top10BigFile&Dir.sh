#!/bin/bash
echo "Checking top 10 big files and directories in the current directory"

path=$1

touch ./top10.txt

sudo du -Sh $path/* | sort -rh | head -n 10 > ./top10.txt

cat ./top10.txt

