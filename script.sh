#!/bin/bash
i=365
while [ $i -ge 1 ]
do
    dateTime=`date +"%Y-%m-%d %H:%M:%S %z" -d "$DATE + $i day"`
    echo ${dateTime}
    echo ${dateTime}>>log.txt
    echo `git add .`
    echo `git commit -m "Day ${i}" --date "${dateTime}"`
    i=$(( $i - 1 ))
done
echo `git push origin main --force`
