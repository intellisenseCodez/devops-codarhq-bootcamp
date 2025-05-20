#!/bin/bash

# Create a simple program to calculate the area of a circle, Given a radius of 7cm 
# and a PI of 3.142. 

radius="7"
PI="3.142"

area=$(echo "$PI * $radius * $radius" | bc)

echo "The area of a circle with radius 7cm is: ${area}"