#!/bin/bash

max_rmb_size=$1

#first part of the romb
cnt_up=1
for ((number=0;number<"$1";number++))
{
	for ((a=0;a<(($1-cnt_up));a++))
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
cnt_down=max_rmb_size-1
for ((number=0;number<=(($1-1));number++))
{
	for ((c=0;c<((max_rmb_size-cnt_down));c++))
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
