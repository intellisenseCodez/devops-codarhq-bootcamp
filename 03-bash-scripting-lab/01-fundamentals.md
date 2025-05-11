# What is Linux Shell

Computers understand the language of zeros and ones, known as binary language. In the early days of computing, instructions were provided using binary language, which is difficult for all of us to read and write. Therefore, an operating system has a unique program called the shell. The shell accepts human-readable commands and translates them into something the kernel can read and process.

- The shell is a user program or it is an environment provided for user interaction.
- It is a command language interpreter (CLI) that executes commands read from the standard input device such as keyboard or from a file.
- The shell is not part of system kernel, but uses the system kernel to execute programs, create files etc.
- Several shells are available for Linux including:
    - BASH ( Bourne-Again SHell ) - Most common shell in Linux. It's Open Source.
    - CSH (C SHell) - The C shell's syntax and usage are very similar to the C programming language.
    - KSH (Korn SHell) - Created by David Korn at AT & T Bell Labs. The Korn Shell also was the base for the POSIX Shell standard specifications.
    - TCSH - It is an enhanced but completely compatible version of the Berkeley UNIX C shell (CSH).

## Shell Prompt
There are various ways to get shell access:

- **Terminal** - Linux desktop provide a GUI based login system. Once logged in you can gain access to a shell by running X Terminal (XTerm), Gnome Terminal (GTerm), or KDE Terminal (KTerm) application.
- **Connect via secure shell (SSH)** - You will get a shell prompt as soon as you log in into remote server or workstation.
- **Use the console** - A few Linux system also provides a text-based login system. Generally you get a shell prompt as soon as you log in to the system.


1. To find all of the available shells in your system, type the following command:
``bash
cat /etc/shells
``

2. To find out your current shell type following command.
``bash
echo $SHELL
ps $$
ps -p $$
``

3. How to change the current shell in linux type following command.
``bash
chsh
chsh -s /usr/bin/bash
``

## What is a Shell Script or shell scripting
Normally shells are interactive. However, if you store a sequence of commands to a text file and tell the shell to execute the text file instead of entering the commands, that is known as a shell program or shell script.

A Shell script can be defined as - "a series of command(s) stored in a plain text file". A shell script is similar to a batch file in MS-DOS, but it is much more powerful compared to a batch file.

### Each shell script consists of
- **Shell keywords** such as if..else, do..while.
- **Shell commands** such as pwd, test, echo, continue, type.
- **Linux binary commands** such as w, who, free etc..
- **Text processing utilities** such as grep, awk, cut.
- **Functions** - add frequent actions together via functions. For example, /etc/init.d/functions file contains functions to be used by most or all system shell scripts in the /etc/init.d directory.
- **Control flow** statments such as if..then..else or shell loops to perform repeated actions.


## Why shell scripting?
- Shell scripts can take input from a user or file and output them to the screen.
- Whenever you find yourself doing the same task over and over again you should use shell scripting, i.e., repetitive task automation.
    - Creating your own power tools/utilities.
    - Automating command input or entry.
    - Customizing administrative tasks.
    - Creating simple applications.
    - Since scripts are well tested, the chances of errors are reduced while configuring services or system administration tasks such as adding new users.

### Practical examples where shell scripting actively used
- Monitoring your Linux system.
- Data backup and creating snapshots.
- Dumping Oracle or MySQL database for backup.
- Creating email based alert system.
- Find out what processes are eating up your system resources.
- Find out available and free memory.
- Find out all logged in users and what they are doing.
- Find out if all necessary network services are running or not. For example if web server failed then send an alert to system administrator via a pager or an email.
- Find out all failed login attempt, if login attempt are continue repeatedly from same network IP automatically block all those IPs accessing your network/service via firewall.
- User administration as per your own security policies.
- Find out information about local or remote servers.
- Configure server such as BIND (DNS server) to add zone entries.

Shell scripting is fun. It is useful to create nice (perhaps ugly) things in shell scripting. Here are a few examples of scripts I use everyday:

- Find out today's weather (useful when you are busy in a chat room).
- Find out what that site is running (just like netcraft).
- Download RSS feeds and display them as you login or in your email.
- Find out the name of the MP3 file you are listening to.
- Monitor your domain expiry date every day.