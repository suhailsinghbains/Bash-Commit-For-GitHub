#!/bin/bash
i=10
while [ $i -ge 0 ]
do
    dateTime=`date -v-${i}d`
    echo ${dateTime}
    echo ${dateTime}>>log.txt
    echo `git add .`
    echo `git commit -m "Day ${i}" --date="${dateTime}"`
    i=$(( $i - 1 ))
done
echo `git push origin main --force`
