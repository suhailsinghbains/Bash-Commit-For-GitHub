#!/bin/bash
x=1
dateTime=`date`
echo ${dateTime}
while [ $x -le 5 ]
do
    date>>log.txt
    echo `git add .`
    echo `git commit -m "Day ${i}" --date="${dateTime}" `
    x=$(( $x + 1 ))
done
echo `git push origin main`
