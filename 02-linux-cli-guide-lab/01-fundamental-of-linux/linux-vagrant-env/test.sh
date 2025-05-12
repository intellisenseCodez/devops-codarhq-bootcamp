#!/bin/bash
echo "The script name : $0"
echo "The value of the first argument to the script : $1"
echo "The value of the second argument to the script : $2"
echo "The value of the third argument to the script : $3"
echo "The number of arguments passed to the script : $#"
echo "The value of all command-line arguments (\$* version) : $*"
echo "The value of all command-line arguments (\$@ version) : $@"