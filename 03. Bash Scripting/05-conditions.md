# Conditionals Execution (Decision Making)
A condition is nothing but an expression that evaluates to a boolean value (true or false).

This is useful to control the sequence of command execution. Also, you can do conditional execution using the `if`, `then`, `elif`,`else` and `fi` statement. The bash support the following two conditional executions:

- **Logical AND &&** - Run second command only if first is successful.
- **Logical OR ||** - Run second command only if first is not successful.
- **Logical Not !** - reverse condition output.

## Logical AND (&&)
Logical and (&&) is boolean operator. It can execute commands or shell functions based on the exit status of another command.

## Syntax
```bash
command1 && command2
command1 -a command2
```

command2 is executed if, and only if, command1 returns an **exit status** of zero (true). In other words, run command1 and if it is successfull, then run command2.

## Examples

1. The echo command will only run if the rm command exits successfully with a status of zero.

```bash
rm /tmp/filename && echo "File deleted."
```

2. Lookup a username in /etc/passwd file

```bash
grep "^ola" /etc/passwd && echo "Ola found in /etc/passwd"
```

3. Exit if a directory /tmp/foo does not exist
```bash
test ! -d /tmp/foo && { read -p "Directory /tmp/foo not found. Hit [Enter] to exit..." enter; exit 1; }
```

## Logical OR (||)
Logical OR (||) is boolean operator. It can execute commands or shell functions based on the exit status of another command.

## Syntax
```bash
command1 || command2
command1 -o command2
```

command2 is executed if, and only if, command1 returns a non-zero exit status. In other words, run command1 successfully or run command2.

## Examples

1. The echo command will only run if the cat command fails or return a non-zero exit status.

```bash
cat /etc/shadow 2>/dev/null || echo "Failed to open file"
```

2. Find username else display an error
```bash
grep "^ola" /etc/passwd || echo "Ola found not found in /etc/passwd"
```

## How Do I Combine Both Logical Operators?
```bash
cat /etc/shadow 2>/dev/null && echo "File successfully opened." || echo "Failed to open file."
```

## Logical Not !
Logical not (!) is boolean operator, which is used to test whether expression is true or not. For example, if file not exists, then display an error on screen.

## Syntax
```bash
! expression
[ ! expression ] # alternative
```

## Examples

1. Check existence of a file

```bash
test ! -f /etc/resolv.conf && echo "File /etc/resolv.conf not found."
```

2. Create a directory /backup, if doesn't exits:

```bash
[ ! -d /backup ] && mkdir /backup
```

## Numeric comparison

- Equal To (`-eq`)
- Greater Than or Equal To (`-ge` `>=`)
- Greater Than (`-gt` or `>`)
- Less Than or Equal To (`-le` or `<=`)
- Less Than (`-lt` or `<`)
- Not Equal To (`-ne`)


## String comparison
- Empty String (`-z`)
- Not Empty String (`-n`)
- Equal To (`==` or `=`)
- Not Equal To (`!=`)
- Less than (`<`)
- Greater Than (`>`)
- Regular Expression (`=~`)

## File comparison
- Exists (`-e`)
- Directory (`-d`)
- File (`-f`)
- Symbolink (`-h`)
- Size is > 0 bytes (`-s`)
- Readable (`-r`)
- Executable (`-x`)
- f1 newer than f2 (`-nt`)
- f2 older than f1 (`-ot`)
- Same files (`-ef`)


## The case statement
The case statement is good alternative to multilevel if-then-else-fi statement. It enable you to match several values against one variable. It is easier to read and write.

## Syntax
```bash
case  $variable-name  in
                pattern1)       
     		        command1
                    ...
                    ....
                    commandN
                    ;;
                pattern2)
     		        command1
                    ...
                    ....
                    commandN
                    ;;            
                patternN)       
     		        command1
                    ...
                    ....
                    commandN
                    ;;
                *)              
          esac 
```