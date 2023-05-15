#!/bin/bash

<<com

5. Rajesh‟s basic salary (BASIC) is input through the keyboard. His dearness allowance (DA) is 52% of
BASIC. House rent allowance (HRA) is 15% of BASIC. Contributory provident fund is 12% of
(BASIC + DA). Write a shell script to calculate his gross salary and take home salary using the
following formula:
Gross salary = BASIC + DA + HRA
Take home salary = Gross salary - (BASIC + DA) * 0.12

com


echo "Enter Rajesh's basic salary: "
read basic_salary

da=$(echo "scale=2; $basic_salary * 0.52" | bc)
hra=$(echo "scale=2; $basic_salary * 0.15" | bc)
pf=$(echo "scale=2; ($basic_salary + $da) * 0.12" | bc)

gross_salary=$(echo "scale=2; $basic_salary + $da + $hra" | bc)
take_home_salary=$(echo "scale=2; $gross_salary - ($basic_salary + $da) * 0.12" | bc)

echo "Rajesh's gross salary is ₹ $gross_salary"
echo "Rajesh's take-home salary is ₹ $take_home_salary"



<<com
OUTPUT -

$ sh q5.sh 
Enter Rajesh's basic salary: 
50000
Rajesh's gross salary is ₹ 83500.00
Rajesh's take-home salary is ₹ 74380.00

com