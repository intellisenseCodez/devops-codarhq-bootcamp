#!/bin/bash

# Display Domain Owner Information

read -r -p "Enter the Internet domain name (e.g. nixcraft.com) : " domain_name
whois "$domain_name"