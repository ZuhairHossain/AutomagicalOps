#!/bin/bash

# Assign two numbers to variables
num1=5
num2=10

# Compare the numbers using if-else statements
if [ $num1 -gt $num2 ]
then
  echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]
then
  echo "$num1 is less than $num2"
else
  echo "$num1 is equal to $num2"
fi