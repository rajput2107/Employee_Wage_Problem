#! /bin/bash

isPartTime=1
isFullTime=2
empCheck=$(( RANDOM%3 ))
empRatePerHour=20

case $empCheck in

	$isPartTime)
        hour=4
	;;
	$isFullTime)
	hour=8
	;;
	*)
        hour=0
	;;
esac

salary=$(( $empRatePerHour*$hour ))
echo $salary

