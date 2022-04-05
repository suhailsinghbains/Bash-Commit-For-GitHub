#!/bin/bash
i=1
while [ $i -le 5 ]
do
    dateTime=`date -v-${i}d`
    echo ${dateTime}
    ${dateTime}>>log.txt
    echo `git add .`
    echo `git commit -m "Day ${i}" --date="${dateTime}" `
    i=$(( $i + 1 ))
done
echo `git push origin main`
