#!/usr/bin/env bash

function guessingGame(){
	ans=$(ls -l |grep "^-"|wc -l)
	while true;
	do
		echo "Guess"
		read guess
		if [ $guess -lt $ans]
		then
			echo "less than"
			
		elif [ $guess -gt $ans]
		then	
			echo "Greater than"
		else
			echo "equal"
		break;
		fi
	done

}

guessingGame