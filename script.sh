#!/bin/bash
x=1
while [ $x -le 5 ]
do
    date>>log.txt
    echo `git add .`
    echo `git commit -m "Day ${i}"`
    x=$(( $x + 1 ))
done
# echo `git push origin main`
