#!/bin/bash
echo "Welcome to Patterns"
read -p "Enter  User First Name " name
pat="^[A-Z]{1}[a-z]{3,}$"
if [[ $name =~ $pat ]]
then
	echo "FirstName is valid "
else
	echo "FirstName is invalid"
fi
