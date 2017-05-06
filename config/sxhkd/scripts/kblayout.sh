#!/bin/sh 
kblayout=`setxkbmap -query | grep layout | cut -d':' -f2 | tr -d ' '`

if [ "$kblayout" = "us" ]
then
	setxkbmap -layout se
elif [ "$kblayout" = "se" ]
then
	setxkbmap -layout us
fi
