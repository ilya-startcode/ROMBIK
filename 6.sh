#!/bin/bash
if [ "$#" -ne "1" ]; then
	echo "ERROR: Invalid number of arguments"
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "ERROR: Not a number"
  exit 1
fi
echo $(($1 - 1))
exit 0
