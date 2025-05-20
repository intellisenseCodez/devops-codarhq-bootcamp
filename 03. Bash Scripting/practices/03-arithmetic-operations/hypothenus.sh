#!/bin/bash

read -p "Enter Adjacent Value: " adjacent
read -p "Enter Opposite Value: " opposite

hypothenus=$(($opposite / $adjacent))
remainder=$(($opposite % $adjacent))

echo "The hypothenus of a triangle is: ${hypothenus}cm"
echo "Remainder: ${remainder}"