# The Shell Variables and Environment

**Objectives:**
- Assign values to shell variables
- Using shell variables
- Displaying the environment
- Understanding quoting
- The export statement
- Unset shell and environment variables
- Getting User Input Via Keyboard

## Variables
You can use variables to store data and configuration options. There are two types of variable as follows:

- **System Variables**: Created and maintained by Linux bash shell itself, such as PS1, PATH, LANG,HISTSIZE,and DISPLAY etc.
- **User Defined Variables**: Created and maintained by user.

## Rules for Naming variable name
- Variable name must begin with alphanumeric character or underscore character (_), followed by one or more alphanumeric or underscore characters. 
- Do not put spaces on either side of the equal sign when assigning value to variable
- Variables names are case-sensitive, just like filenames.
- Do not use ?,* and other special characters, to name your variable.

## System Variables
### View All System Variables
```bash
set
env
printenv
```

### How Do I Display The Value Of a Variable?
```bash
echo "$PATH"
echo "${HOME}"
```

### Printf Command
The printf command is just like echo command
```bash
printf "$VARIABLE_NAME\n"
printf "String %s" $VARIABLE_NAME
printf "Signed Decimal Number %d" $VARIABLE_NAME
printf "Floating Point Number %f" $VARIABLE_NAME
```

The following variables are set by the shell:

| System Variable | Meaning                        | To View Variable Value Type	 |
|-----------------|--------------------------------|---------------------------------|
| BASH_VERSION	  | Holds the version of this instance of bash.	 | echo $BASH_VERSION
| HOSTNAME | The name of the your computer. | echo $HOSTNAME |
| CDPATH | The search path for the cd command. | echo $CDPATH |
| HISTFILE | The name of the file in which command history is saved. | echo $HISTFILE |
| HISTFILESIZE | The maximum number of lines contained in the history file.	| echo $HISTFILESIZE |
| HISTSIZE | The number of commands to remember in the command history. The default value is 500. | echo $HISTSIZE |
| HOME | The home directory of the current user.	 | echo $HOME |
| IFS | The Internal Field Separator that is used for word splitting after expansion and to split lines into words with the read builtin command. The default value is <space><tab><newline>.	 | echo $IFS |
| LANG | Used to determine the locale category for any category not specifically selected with a variable starting with LC_. | echo $LANG |
| PATH | The search path for commands. It is a colon-separated list of directories in which the shell looks for commands.	| echo $PATH |
| PS1 | Your prompt settings.	 | echo $PS1 |
| TMOUT	  | The default timeout for the read builtin command. Also in an interactive shell, the value is interpreted as the number of seconds to wait for input after issuing the command. If not input provided it will logout user.	 | echo $TMOUT
| TERM | Your login terminal type. | echo $TERM <br>  export TERM=vt100|
| SHELL | Set path to login shell.	 | echo $SHELL |
| DISPLAY | Set X display name	 | echo $DISPLAY <br>  export DISPLAY=:0.1|
| EDITOR | Set name of default text editor.		| export EDITOR=/usr/bin/vim |


## User Defined Variables
Creating and setting variables within a script is fairly simple. Use the following syntax:

```bash
varName=someValue
```
**someValue** is assigned to given **varName** and **someValue** must be on right side of = (equal) sign. If **someValu**e is not given, the variable is assigned the null string.

### How Do I Display The Variable Value?
```bash
echo "$varName"
echo "${varName}"
printf "${varName}"
printf "%s\n" ${varName}
```

## Default shell variables value


### The := syntax
If the variable is an empty, you can assign a default value. The syntax is:
```bash
echo ${grandslam="Default value"} 
echo ${grandslam:="Default value"}
```

## Qutoting
Sometime you do not wish to use variables or wildcards. For example, do not print value of $PATH, but just print $PATH on screen as a word. You can enable or disable the meaning of a special character by enclosing them in single quotes. 
```bash
echo "Path is $PATH"  ## $PATH will be expanded
echo 'I want to print $PATH' ## PATH will not be expanded
```

## Escape Characters
You can use the following backslash-escaped characters.
 ```
 \a     alert (bell)
\b     backspace
\e     an escape character
\f     form feed
\n     new line
\r     carriage return
\t     horizontal tab
\v     vertical tab
\\     backslash
\'     single quote
\nnn   the eight-bit character whose value is the octal value nnn (one to three digits)
\xHH   the eight-bit character whose value is the hexadecimal value HH (one or two hex digits)
\cx    a control-x character
```
## Export Variables
The export builtin automatically exports to the environment of child processes.
```bash
export backup="/nas10/mysql"
echo "Backup dir $backup"
```

## Unset
Use the unset command to delete the variables during program execution. It can remove both functions and shell variables. 
```bash
export backup="/nas10/mysql"
echo "Backup dir $backup:-"File Not Found""
unset backup
echo "Backup dir $backup:-"File Not Found""
```

```bash
unset -f function_name
```

## Getting User Input Via Keyboard
You can accept input from the keyboard and assign an input value to a user defined shell variable using read command.

```bash
read -p "Prompt" variable1 variable2 variableN
```

Where,

* **-p "Prompt"** : Display prompt to user without a newline.
* **variable1** : The first input (word) is assigned to the variable1.
* **variable2** : The second input (word) is assigned to the variable2.

Other options:
- **-r** : Tells read not to treat backslashes (\) as escape characters
- **-t**: set time out read command
- **-s**: causes input to not be displayed on screen

Display the "Are you sure (Y/N)?" prompt:


```bash
read -r -p "Are you sure (Y/n)? " answer
echo "You typed: $answer"
```

### Handling multiple values
