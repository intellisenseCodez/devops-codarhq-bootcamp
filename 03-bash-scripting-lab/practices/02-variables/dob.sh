#!/bin/bash

read -r -p "Enter your date of birth : (Day Month Year): " dateOfBirth

read -r day month year <<<"$dateOfBirth"

printf "Your Formmated DOB is : %d/%d/%d \n" $day $month $year