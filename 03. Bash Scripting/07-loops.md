# For loop
Bash shell can repeat particular instruction again and again, until particular condition satisfies. A group of instruction that is executed repeatedly is called a loop. Bash supports:

- The for loop
- The while loop

## for loop syntax
```bash
for var in item1 item2 ... itemN
            do
                    command1
                    command2
                    ....
                    ...
                    commandN
            done
```

example:
```bash
#!/bin/bash

for i in 1 2 3 4 5
do
  echo "Welcome $i times."
done
```

## While loop
The while statement is used to execute a list of commands repeatedly. 

## Syntax
```bash
 while [ condition ]
           do
                 command1
                 command2
                 ..
                 ....
                 commandN
           done
```

## Infinite while loop
An infinite loop occurs when the condition will never be met. You can use : special command with while loop to tests or set an infinite loop or an endless loop. 

## Syntax
Use : command to set an infinite loop:

```bash
#!/bin/bash
# Recommend syntax for setting an infinite while loop
while :
do
	echo "Do something; hit [CTRL+C] to stop!"
done
```

Use the true / false command to set an infinite loop:

```bash
#!/bin/bash
while true
do
	echo "Do something; hit [CTRL+C] to stop!"
done
```

## Break statement
Use the break statement to exit from within a FOR, WHILE or UNTIL loop i.e. stop loop execution.

## Continue statement
The continue statement is used to resume the next iteration of the enclosing FOR, WHILE or UNTIL loop.