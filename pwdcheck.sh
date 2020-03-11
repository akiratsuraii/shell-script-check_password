#!/bin/bash

count=1
filename='pwd.txt'
for pwd in $(cat $filename) #import password(pwd) from file
do
done
#check password input
#if password wrong more then three time >password wrong 
while [ $count -le 3 ]; 
do
	read -p "please enter password:" input
	if [ $input -ne $pwd ]; then
		if [ $count -eq 3 ]; then
			echo "password has wrong over then 3time"
		else
			echo "wrong password"
		fi
	count=$[ $count+1 ]
	else
	echo "correct password"
	break
	fi
done

