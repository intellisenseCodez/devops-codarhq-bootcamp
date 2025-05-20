# The bash shell

Bash is the shell, or command language interpreter, for the Linux operating system. The name is an acronym for the Bourne-Again SHell, a pun on Stephen Bourne, the author of the direct ancestor of the current Unix shell sh, which appeared in the Seventh Edition Bell Labs Research version of Unix Bash Reference Manual

## Bash and Command Types
The bash shell understands the following types of commands:

- **Aliases** such as ll
- **Keywords** such as if
- **Functions** (user defined functions such as genpasswd)
- **Built** in such as pwd
- **Files** such as /bin/date

The type command can be used to find out a command type.


## Write our first program: Hello, World!
Using an editor create a simple bash script file:

```bash
#!/bin/bash
echo "Hello, World!" 
echo "Knowledge is power."
```

Save and close the file. You can run the script as follows:

```bash
chmod +x hello.sh  # Allowing everyone to execute the script
./hello.sh
```

## Shebang
The shebang syntax is used in scripts to indicate an interpreter for execution under UNIX / Linux operating systems.

You will always see `#!/bin/bash` or `#!/usr/bin/env` bash as the first line when writing or reading bash scripts. Shebang starts with #! characters and the path to the bash or other interpreter of your choice. It is nothing but the absolute path to the Bash interpreter.

* Most Linux shell and perl / python script starts with the following line. Bash or sh example:

```bash
#!/bin/bash
```

OR

```bash
#!/usr/bin/env bash
```

Perl and python examples:

```bash
#!/usr/bin/perl
```

OR

```bash
#!/usr/bin/python
```

OR

```bash
#!/usr/bin/python3
```

## Shell Comments
It is an excellent practice to put comments into programs and shell scripts. 

**Single Line Comments**:

```bash
#!/bin/bash

# A Simple Shell Script To Get Linux Network Information

echo "Current date : $(date) @ $(hostname)"
echo "Network configuration"
ifconfig
```

**Multiple Line Comments**:

```bash
#!/bin/bash

# A Simple Shell Script To Get Linux Network Information

echo "Current date : $(date) @ $(hostname)"
echo "Network configuration"
ifconfig

<<COMMENT1
    Author: Oyekanmi Lekan
    Last updated: 10/May/2025
COMMENT1

```

## Shell Debug
Bash shell offers debugging options which can be turned on or off using set command.

- **set -x** : Display commands and their arguments as they are executed.
- **set -v** : Display shell input lines as they are read.
- **set -n** : Read commands but do not execute them. This may be used to check a shell script for syntax errors.

```bash
#!/bin/bash
### Turn on debug mode ###
set -n

# Run shell commands
echo "Hello $(LOGNAME)"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"

### Turn OFF debug mode ###
set +n

# Add more commands without debug mode
```