#!/bin/bash -x
#uc1
#variables
Employee=$((RANDOM%2))

 if [ $Employee -eq 1 ];
 then
 echo "Employee is Present" $Employee
 else
 echo "Employee is Absent" $Employee
 fi
#uc2

#Variables
Wage_per_hour=20
Full_day_hour=8
Daily_employee_wage=$(($Wage_per_hour*$Full_day_hour))
echo "Daily Employee Wage - "$Daily_employee_wage

#UC3

#Variables
Wage_per_hour=20
Full_time_hour=8
Part_time_hour=4

Daily_employee_wage_full=$(($Wage_per_hour*$Full_time_hour))
echo "Daily Employee Wage Full Time - "$Daily_employee_wage_full

Daily_employee_wage_part=$(($Wage_per_hour*$Part_time_hour))
echo "Daily Employee Wage Part Time - "$Daily_employee_wage_part


#uc4

#Variables
Wage_per_hour=20
Full_time_hour=8
Part_time_hour=4

Daily_employee_wage_full=$(($Wage_per_hour*$Full_time_hour))
#echo "Daily Employee Wage Full Time - "$Daily_employee_wage_full

Daily_employee_wage_part=$(($Wage_per_hour*$Part_time_hour))
#echo "Daily Employee Wage Part Time - "$Daily_employee_wage_part

echo "enter choice :"
read ch
case $ch in
    1)echo "Daily Employee Wage Full Time - "$Daily_employee_wage_full;;
    2)echo "Daily Employee Wage Part Time - "$Daily_employee_wage_part;;
    *)echo "wrong choice";;
esac

#uc5
#Variables
Wage_per_hour=20
Full_time_hour=8
Part_time_hour=4
Working_day_per_month=20

Daily_employee_wage_full=$(($Wage_per_hour*$Full_time_hour))

Daily_employee_wage_part=$(($Wage_per_hour*$Part_time_hour))

monthly_employee_wage_full=$(($Daily_employee_wage_full*$Working_day_per_month))

monthly_employee_wage_part=$(($Daily_employee_wage_part*$Working_day_per_month))


echo "enter choice :"
read ch
case $ch in
    1)echo "Daily Employee Wage Full Time - "$Daily_employee_wage_full;;
    2)echo "Daily Employee Wage Part Time - "$Daily_employee_wage_part;;
    3)echo "monthly_employee_wage_full - "$monthly_employee_wage_full;;
    4)echo "monthly_employee_wage_part - "$monthly_employee_wage_part;;
    *)echo "wrong choice";;
esac

#uc6

#Constants
#declaration & initialization
EMPLOYEE_RATE_PER_HOUR=100
FULL_TIME=8
PART_TIME=4
MAX_NO_OF_DAYS=20
MAX_NO_OF_HOURS=120

#Variable
total_working_hours=0   #using underscope
totalWorkingDays=0      #camel case
totalWage=0


while [[ $totalWorkingDays -lt $MAX_NO_OF_DAYS && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
        ((totalWorkingDays++));
        total_working_hours=$((total_working_hours+FULL_TIME));
        tempWage=$((FULL_TIME*EMPLOYEE_RATE_PER_HOUR));
        totalWage=$((tempWage+totalWage));

done

echo "total working hours - " $totalWage
echo "total days worked - " $totalWorkingDays
echo "total hours done - " $total_working_hours

#uc7

#Constants
#declaration & initialization
EMPLOYEE_RATE_PER_HOUR=100
FULL_TIME=8
PART_TIME=4
MAX_NO_OF_DAYS=20
MAX_NO_OF_HOURS=120

#Variable
total_working_hours=0   #using underscope
totalWorkingDays=0      #camel case
totalWage=0
workDonePerDay=0


#function declaration
getWorkDonePerDay() {
        case $1 in
                0) workDonePerDay=$PART_TIME;;
                1) workDonePerDay=$FULL_TIME;;
                *) workDonePerDay=0;;
        esac
        echo $workDonePerDay
}
while [[ $totalWorkingDays -lt $MAX_NO_OF_DAYS && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
        ((totalWorkingDays++));
        workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)) );
        total_working_hours=$((total_working_hours+workDonePerDay));
        tempWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
        totalWage=$((tempWage+totalWage));

done

echo "total working hours - " $totalWage
echo "total days worked - " $totalWorkingDays
echo "total hours done - " $total_working_hours

#uc8
#Constants
#declaration & initialization
EMPLOYEE_RATE_PER_HOUR=100
FULL_TIME=8
PART_TIME=4
MAX_NO_OF_DAYS=20
MAX_NO_OF_HOURS=120

#Variable
total_working_hours=0   #using underscope
totalWorkingDays=0      #camel case
totalWage=0
workDonePerDay=0

#declaration of array
declare -a perDayHoursDone

declare -a dayWiseWageStorage

#function declaration
getWorkDonePerDay() {
        case $1 in
                0) workDonePerDay=$PART_TIME;;
                1) workDonePerDay=$FULL_TIME;;
                *) workDonePerDay=0;;
        esac
        echo $workDonePerDay
}
while [[ $totalWorkingDays -lt $MAX_NO_OF_DAYS && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
        ((totalWorkingDays++));
        workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)) );
        total_working_hours=$((total_working_hours+workDonePerDay));
        tempWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
        totalWage=$((tempWage+totalWage));

        perDayHoursDone[((totalWorkingDays))]=$workDonePerDay
        dayWiseWageStorage[((totalWorkingDays))]=$tempWage

done

echo "total working hours - " $totalWage
echo "total days worked - " $totalWorkingDays
echo "total hours done - " $total_working_hours
echo "Hours per day : " ${perDayHoursDone[@]}
echo "wages per day : " ${dayWiseWageStorage[@]}

#uc9

#Constants
#declaration & initialization
EMPLOYEE_RATE_PER_HOUR=100
FULL_TIME=8
PART_TIME=4
MAX_NO_OF_DAYS=20
MAX_NO_OF_HOURS=120

#Variable
total_working_hours=0   #using underscope
totalWorkingDays=0      #camel case
totalWage=0
workDonePerDay=0

#declaration of array
declare -a perDayHoursDone

#declaration of dictionary
declare -i dayWiseWageStorage

#function declaration
getWorkDonePerDay() {
        case $1 in
                0) workDonePerDay=$PART_TIME;;
                1) workDonePerDay=$FULL_TIME;;
                *) workDonePerDay=0;;
        esac
        echo $workDonePerDay
}
while [[ $totalWorkingDays -lt $MAX_NO_OF_DAYS && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
        ((totalWorkingDays++));
        workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)) );
        total_working_hours=$((total_working_hours+workDonePerDay));
        tempWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
        totalWage=$((tempWage+totalWage));

        perDayHoursDone[((totalWorkingDays))]=$workDonePerDay
        dayWiseWageStorage[((totalWorkingDays))]=$tempWage
done

echo "total working hours - " $totalWage
echo "total days worked - " $totalWorkingDays
echo "total hours done - " $total_working_hours
echo "Hours per day : " ${perDayHoursDone[@]}
echo "wages per day : " ${dayWiseWageStorage[@]}
echo "days in dictionary : " ${!dayWiseWageStorage[@]}
