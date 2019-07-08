#!/bin/bash

cd /mnt/host

if [ ! -d "learncli" ]; then
	success=$(git clone -q https://github.com/KrisJordan/learncli)
else
	cd learncli
	success=$(git pull -q origin master)
fi

if [ $? ]; then
	echo ""
	echo "==============================================================================="
	echo ""
	echo "  Welcome to Learn a Command-line Interface!"
	echo ""
	echo "  The files you need to begin learning are installed in the learncli directory."
	echo ""
	echo "  To begin, type the following line to navigate into the learncli directory:"
	echo ""
	echo "    cd learncli"
	echo ""
	echo "  Then, run the appropriate command below to begin a bash shell:"
	echo "    -  Windows PowerShell, run: ./learncli"
	echo "    -  MacOS, run: ./learncli.sh"
	echo ""
	echo "==============================================================================="
	echo ""
else
	echo "Uh oh. Something went wrong! Perhaps you're not connected to the internet for this step?"
fi
