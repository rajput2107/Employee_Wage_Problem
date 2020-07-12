#! /bin/bash

isPresent=1
randomCheck=$(( RANDOM%2 ))

if [ $randomCheck -eq $isPresent ]
then
	echo "Employee is Present"
	read -p "Enter Rate Per Hour: " empRatePerHour
	read -p "Enter Hours: " hour
	salary=$(( $empRatePerHour*$hour ))
	echo "Employee Salary is "$salary
else
	salary=0
	echo "Employee is absent"
	echo "Salary is "$salary
fi
