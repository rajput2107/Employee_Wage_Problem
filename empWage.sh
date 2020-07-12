#! /bin/bash

#Constants for the Program
isPartTime=1
isFullTime=2
totalSalary=0
max_hr_in_month=10
empRatePerHour=20
numWorkingDays=20

#Variables
totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $max_hr_in_month && $totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
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

	totalEmpHrs=$(($totalEmpHrs+$hour))
done

totalSalary=$(($totalEmpHrs+$empRatePerHour))

echo $totalSalary

