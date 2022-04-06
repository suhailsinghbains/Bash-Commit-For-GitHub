#!/bin/bash
i=1
while [ $i -le 1 ]
do
    # dateTime=`date -v+${i}d +"%Y-%m-%d %H:%M:%S %z"`
    dateTime=`date -v +4H`
    echo ${dateTime}
    echo ${dateTime}>>log.txt
    echo `git add .`
    echo `git commit -m "Day ${i}" --date "${dateTime}"`
    i=$(( $i + 1 ))
done
echo `git push origin main --force`
