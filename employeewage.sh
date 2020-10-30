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
