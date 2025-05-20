#!/bin/bash

### Turn on debug mode ###
set -n

# Run shell commands
echo "Hello $(LOGNAME)"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"

### Turn OFF debug mode ###
set +n