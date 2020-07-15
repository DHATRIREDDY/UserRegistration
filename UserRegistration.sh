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

