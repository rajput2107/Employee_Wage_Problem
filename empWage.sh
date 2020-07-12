#! /bin/bash

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHour=20
numWorkingDays=20

for (( day=1; day<=$numWorkingDays; day++ ))
do
	empCheck=$(( RANDOM%3 ))
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

	salary=$(($hour*$empRatePerHour))
	totalSalary=$(($totalSalary+$salary))
done

echo $totalSalary
