#!/bin/bash

cd /pwd

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
	echo "  Welcome to Learn the Command-line!"
	echo ""
	echo "  The files you need to begin learning are installed in the learncli directory."
	echo ""
	echo "  To begin, type the each of the following lines and press enter after each."
	echo ""
	echo "    cd learncli"
	echo "    docker-compose run --rm bash"
	echo ""
	echo "==============================================================================="
	echo ""
else
	echo "Uh oh. Something went wrong! Perhaps you're not connected to the internet for this step?"
fi
