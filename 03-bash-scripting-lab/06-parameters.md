# Linux Positional Parameters
- All command line parameters or arguments can be accessed via $1, $2, $3,..., $9.
- **$*** holds all command line parameters or arguments.
- **$#** holds the number of positional parameters.
- **$-** holds flags supplied to the shell.
- **$?** holds the return value set by the previously executed command.
- **$$** holds the process number of the shell (current shell).
- **$!** hold the process number of the last background command.
- **$@** holds all command line parameters or arguments.

```bash
#!/bin/bash
echo "The script name : $0"
echo "The value of the first argument to the script : $1"
echo "The value of the second argument to the script : $2"
echo "The value of the third argument to the script : $3"
echo "The number of arguments passed to the script : $#"
echo "The value of all command-line arguments (\$* version) : $*"
echo "The value of all command-line arguments (\$@ version) : $@"
```

