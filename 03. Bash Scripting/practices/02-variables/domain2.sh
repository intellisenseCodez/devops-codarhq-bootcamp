#!/bin/bash

# Timeout Input

read -r -t 10 -p "Enter the Internet domain name (e.g. nixcraft.com) : " domain_name
whois "$domain_name"
