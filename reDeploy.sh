#!/bin/sh
if grep -Fxq "$1" repos.list
then
	cd ../"$1"
	if test -f ./stop.sh
	then
		./stop.sh
		echo stopped process
	fi
	git pull
        echo pulled repo "$1"
	if test -f ./start.sh
	then
		./start.sh
		echo started process
	fi
else
	echo "$1" > repos.list
	cd ..
	mkdir "$1"
	git clone "$2"
	echo cloned repo "$1" from "$2" 
fi
