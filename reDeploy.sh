#!/bin/sh
if grep -Fxq "$1" repos.list
then
	cd ../"$1"
	git pull
        echo pulled repo "$1"
else
	cd ..
	mkdir "$1"
	git clone "$2"
	echo cloned repo "$1" from "$2" 
fi
