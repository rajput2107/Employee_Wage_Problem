#! /bin/bash

isPartTime=1
isFullTime=2
randomCheck=$(( RANDOM%3 ))
empRatePerHour=20
hour=0
if [ $randomCheck -eq $isPartTime ]
then
	hour=4
elif [ $randomCheck -eq $isFullTime ]
then
	hour=8
else
	hour=0
fi

salary=$(( $empRatePerHour*$hour ))
echo $salary


