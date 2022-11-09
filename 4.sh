#!/bin/bash
size=$1
#check correct user input
if [ "0" -gt "$1" ]; then
        echo "error: size must be more 0"
        exit 1
fi

#first part of the romb
cnt_up=1
for ((number=0;number<size;number++))
{
	for ((a=0;a<((size-cnt_up));a++))
	{
		echo -n " "
	}

	for ((b=0;b<$cnt_up;b++))
	{
		echo -n "* "
	}
	
	echo ""
	cnt_up=$(($cnt_up+1))
}

#second part of the romb
cnt_down=size-1
for ((number=0;number<=((size-1));number++))
{
	for ((c=0;c<((size-cnt_down));c++))
	{
		echo -n " "
	}

	for ((d=0;d<cnt_down;d++))
	{
		echo -n "* "
	}

	echo ""
	cnt_down=$(($cnt_down-1))
}

exit 0
