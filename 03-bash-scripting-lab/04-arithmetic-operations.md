# Perform arithmetic operations
You can perform math operations on Bash shell variables. The bash shell has built-in arithmetic option. 
You can also use external command such as expr and bc calculator.

## Syntax
```bash
$((expression))
$(( n1+n2 ))
$(( n1/n2 ))
$(( n1-n2 ))
```
## Mathematical Operators With Integers
- Addition (+)
- Subtraction (-)
- Division (/)
- Multiplication (*)
- Modulus (%)
- post-increment (add variable value by 1) (++)
- post-decrement (subtract variable value by 1) (--)
- Exponentiation (**)


## Create an integer variable
To create an integer variable use the declare command as follows:
```bash
declare -i y=10
echo "$y"
```

# Create the constants variable
You can create the constants variables using the readonly command or declare command.
```bash
readonly DATA=/home/sales/data/feb09.dat
echo "$DATA"
```

## Bash variable existence check

### The :? syntax

If the variable is not defined, you can stop executing the Bash script with the following simple syntax:
```bash
${varName?Error varName is not defined}
${varName:?Error varName is not defined 
```
