#!/bin/sh
if grep -Fxq "$1" repos.list
then
	if test -f ./stop.sh
	then
		./stop.sh
		echo stopped process
	fi
	cd ../"$1"
	git pull
        echo pulled repo "$1"
	if test -f ./start.sh
	then
		./start.sh
		echo started process
	fi
else
	cd ..
	mkdir "$1"
	git clone "$2"
	echo cloned repo "$1" from "$2" 
fi
