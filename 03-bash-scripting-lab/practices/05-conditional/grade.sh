#!/bin/bash

# ask for user input
read -p "Enter a score: " score

grade=""

if [[ $score -ge 80 ]]; then
    grade="A"
elif [[ $score -ge 60 ]]; then
    grade="B"
elif [[ $score -ge 50 ]]; then
    grade="C"
elif [[ $score -ge 30 ]]; then
    grade="D"
elif [[ $score -ge 0 ]]; then
    grade="F"
else
    grade="Invalid score"
fi

echo "Your grade is ${grade}"