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



function getWorkingHours() {
        case $1 in
                $isPartTime)
                workHours=4
                ;;
                $isFullTime)
                workHours=8
                ;;
                *)
                workHours=0
                ;;
        esac
        echo $workHours
}

function calcDailyWage() {
        local workHrs=$1
        wage=$(($workHrs*$empRatePerHour))
        echo $wage
}


while [[ $totalWorkHours -lt $max_hr_in_month && $totalWorkingDays -lt $numWorkingDays ]]
do
        (( totalWorkingDays++ ))
        workHours="$( getWorkingHours $(( RANDOM%3 )) )"
        totalWorkHours=$(($totalWorkHours+$workHours))
        empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"
done


totalSalary="$( calcDailyWage $totalWorkHours )"

echo "Daily Wage: " ${empDailyWage[@]}
echo "All Days: " ${!empDailyWage[@]}
