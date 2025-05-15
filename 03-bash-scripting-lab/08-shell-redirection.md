# Shell Redirection

## Standard input

- Standard input is the default input method, which is used by all commands to read its input.
- It is denoted by zero number (0).
- Also known as stdin.
- The default standard input is the keyboard.
- < is input redirection symbol and syntax is:

### Syntax
```bash
command < filename
```

### Example
```bash
cat < /etc/passwd
sort < /etc/resolv.conf
```

## Standard output
- Standard output is used by a command to writes (display) its output.
- The default is the screen.
- It is denoted by one number (1).
- Also known as stdout.
- The default standard output is the screen.
- > is output redirection symbol and syntax is:

### Syntax
```bash
command > output.file.name
```

### Example
```bash
ls > /tmp/output.txt
cat /tmp/output.txt

```

## Standard error
- Standard error is the default error output device, which is used to write all system error messages.
- It is denoted by two number (2).
- Also known as stderr.
- The default standard error device is the screen or monitor.
- 2> is input redirection symbol and syntax is:

### Syntax
```bash
command 2> errors.txt
```


### Example
```bash
find / -iname "*.conf" 2>fileerrors.txt
cat fileerrors.txt
```