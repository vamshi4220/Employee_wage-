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
