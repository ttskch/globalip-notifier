#!/bin/sh

touch old.txt

new=`curl -s globalip.me | sed '1!d'`
old=`cat old.txt`

if [ "$new" != "$old" ] ; then
    echo "$new" > old.txt
    echo "$new" | mail -s "new global ip address" $EMAIL
fi
