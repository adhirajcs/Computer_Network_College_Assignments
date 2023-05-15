#!/bin/bash

<<com1

4. Write a shell script that produces a shell calculator to perform the following operations:
1. Addition
2. Subtraction
3. Multiplication
4. Division

com1


while true
do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo "Enter your choice: "
    read choice

    case $choice in
        1)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            sum=$((num1 + num2))
            echo "Sum is: $sum"
            ;;
        2)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            diff=$((num1 - num2))
            echo "Difference is: $diff"
            ;;
        3)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            prod=$((num1 * num2))
            echo "Product is: $prod"
            ;;
        4)
            read -p "Enter dividend: " num1
            read -p "Enter divisor: " num2
            if [ $num2 -eq 0 ]
            then
                echo "Cannot divide by zero"
            else
                quotient=$((num1 / num2))
                remainder=$((num1 % num2))
                echo "Quotient is: $quotient"
                echo "Remainder is: $remainder"
            fi
            ;;
        5)
            exit 0
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done



<<com2
OUTPUT -

$ sh q4.sh
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
Enter your choice: 
1
Enter first number: 4
Enter second number: 2
Sum is: 6
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
Enter your choice: 
2
Enter first number: 5
Enter second number: 7
Difference is: -2
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
Enter your choice: 
3
Enter first number: 3
Enter second number: 3
Product is: 9
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
Enter your choice: 
4
Enter dividend: 6
Enter divisor: 2
Quotient is: 3
Remainder is: 0
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
Enter your choice: 
5

com2