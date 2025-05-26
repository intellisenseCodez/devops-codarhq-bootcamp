# IP, CIDR, Subnet and Ports.

## IP Address
An Internet Protocol (IP) address is the unique identifying number assigned to every device connected to the internet. An IP address definition is a numeric label assigned to devices that use the internet to communicate. Computers that communicate over the internet or via local networks share information to a specific location using IP addresses.

IP addresses have two distinct versions or standards:
   
- **The Internet Protocol version 4 (IPv4)**: address is the older of the two, which has space for up to 4 billion IP addresses and is assigned to all computers. 
    
- **The Internet Protocol version 6 (IPv6)**: has space for trillions of IP addresses, which accounts for the new breed of devices in addition to computers. 

There are also several types of IP addresses, including `public`, `private`, `static`, and `dynamic` IP addresses.

## IPv4 and IPv6

### IPv4
IPv4 is the fourth version of the IP. It is one of the core protocols of the standards-based methods used to interconnect the internet and other networks

A key point here is that, by standard, **an IP address is 32 bits long (4 bytes)**, which means that there are only 2^32 (4,294,967,296) possible unique IP addresses. It takes the format of four sets of numbers, each of which ranges from 0 to 255 and represents an eight-digit binary number, separated by a period point.

The IPv4 address space is a finite resource, and we need to wisely utilize each IP address (similar to our planet's land). 

!["Ipv4 Address"](../resources/images/IPv4.webp)

### IPv6
A newer version due to IPv4 exhaustion, written as eight groups of four hexadecimal digits separated by colons (e.g., 2001:0db8:85a3:0000:0000:8a2e:0370:7334). It has a much larger address space.

## Subnetting
Subnetting is the process of dividing a large network (IP address space) into smaller, more manageable sub-networks, or subnets. This is typically done to improve the efficiency and security of IP address allocation, reduce network traffic, and better organize network devices.

### Why Subnet
- Security
- Privacy
- Isolation


### Types of Subnet
- **Private Subnet**: network that has no access to internet

- **Public Subnet**: network has access to internet


### Classful IP Networks

!["Ipv4 Address"](../resources/images/classful-IP.jpg)


## Classless Inter-Domain Routing 
CIDR (Classless Inter-Domain Routing) is a method for more flexible and efficient IP address allocation and routing, designed to replace the older class-based system (Class A, B, C). 

CIDR allows networks to be divided into variable-sized subnets, providing better control over IP address allocation and reducing the waste of IP addresses.

## Use Case
Suppose a company has a block of 256 public IP addresses provided by the local service provider. 

![""](../resources/images/block-of-256-addresses.svg)

The IP address block is 37.1.1.0 , written in slash notation as 37.1.1.0/24. Using the CIDR, we can easily calculate that the boundaries of this network are Network ID 37.1.1.0 and Broadcast address 37.1.1.255, as shown in figure 1 above


## Ports
In networking, ports are logical channels or endpoints used to identify specific services or applications running on a device. Ports allow multiple services to run on a single IP address by directing incoming data to the appropriate application. Each port is associated with a number ranging from 0 to 65535.

- Ports help computers distinguish between different types of network traffic.
- For example, a server might be running both a web server and an email server. Using different ports allows the computer to route incoming web traffic to the web server and email traffic to the email server.

- **HTTP (80)**: Used for standard web traffic.
- **HTTPS (443)**: Used for secure web traffic (encrypted with SSL/TLS).
- **FTP (21)**: Used for File Transfer Protocol.
- **SSH (22)**: Used for Secure Shell (remote login and command execution).
- **SMTP (25)**: Used for sending emails via Simple Mail Transfer Protocol.
- **DNS (53)**: Used for Domain Name System services


Links
- https://www.submarinecablemap.com/
- https://cidr.xyz/