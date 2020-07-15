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

