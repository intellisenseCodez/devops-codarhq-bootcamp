## Setup Linux Environment on Windows and MacOS using Vagrant

There are multiple ways to setup a Linux environment on a Windows or Mac machines such as cloud vm, wsl2, virtualbox, Hyperkit e.t.c.,. 

However in this guide we will using vagrant to set up as a Linux environment.

This setup is ideal for developers who want a consistent and isolated Linux environment for testing, coding, or deployment.

## 🚀 Prerequisites

Ensure you have the following installed:

### 1. VirtualBox
- Download and install from: [https://www.virtualbox.org](https://www.virtualbox.org)

### 2. Vagrant
- Download and install from: [https://www.vagrantup.com/downloads](https://www.vagrantup.com/downloads)

### 3. Terminal
- **Windows**: Use [Git Bash](https://gitforwindows.org) or [Windows Terminal](https://aka.ms/terminal)
- **macOS**: Use the built-in Terminal app


## 💻 Installation
1. **Clone repository**:
```bash
git clone https://github.com/intellisenseCodez/linux-guide-lab/01-fundamental-of-linux/linux-vagrant-env

cd linux-vagrant-env
```

## 🚀 Launch the Virtual Machine
```bash
vagrant up
```

## 🚀 SSH into Your Linux Environment
```bash
vagrant ssh
```

## 🔄 Useful Vagrant Commands
```bash
vagrant halt      # Shut down the VM
vagrant up        # Start the VM
vagrant reload    # Restart the VM with changes
vagrant destroy   # Remove the VM completely
```
