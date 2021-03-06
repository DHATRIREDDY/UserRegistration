#!/bin/bash
echo "Welcome to Patterns"
read -p "Enter  User First Name :" firstname
read -p "Enter  User Last Name :" lastname
pat="^([[:upper:]]){1}[a-z]{2,}$"

if [[ $firstname =~ $pat ]]
then
	echo "FirstName is valid "
else
	echo "FirstName is invalid"
fi

if [[ $lastname =~ $pat ]]
then
	echo "LastName is valid "
else
        echo "LastName is invalid"
fi

read -p "Enter Email Address :" email
emailpat="^[A-Za-z]{1}[A-Za-z0-9._+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$"
if [[ $email =~ $emailpat ]]
then
	echo "Email is valid"
else
	echo "Email is invalid"
fi

read -p "Enter Mobile Number:" number
mobilepat="^[0-9]{1,}[ ][0-9]{10}$"
if [[ $number =~ $mobilepat ]]
then
        echo "Mobile Number is valid"
else
        echo "Mobile Number is invalid"
fi

read -p "Enter Password:" password
password_pat1="^.{8,}$"
password_pat2="[[:upper:]]{1,}"
password_pat3="[0-9]{1,}"
password_pat4="([a-zA-Z0-9]*)[@!#%<>()/?&*]{1}([a-zA-Z0-9]*)$"
if [[ $password =~ $password_pat1 ]]
then
	if [[ $password =~ $password_pat2 ]]
	then
		if [[ $password =~ $password_pat3 ]]
		then
			if [[ $password =~ $password_pat4 ]]
        		then
				echo "Password is valid"
			else
				echo "Password must have atleast 1 special character"
			fi
		else
			echo "Password should  have atleast 1 numeric number"
		fi
	else
		echo "Password should  have atleast 1 UpperCase"
	fi
else
        echo "Password should have minimum 8 Characters"
fi
