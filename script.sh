#!/bin/bash
i=3
while [ $i -ge 0 ]
do
    dateTime=`date -v-${i}d +"%Y-%m-%d %H:%M:%S %z"`
    echo ${dateTime}
    echo ${dateTime}>>log.txt
    echo `git add .`
    echo `git commit -m "Day ${i}" --date="${dateTime}"`
    i=$(( $i - 1 ))
done
echo `git push origin main --force`
