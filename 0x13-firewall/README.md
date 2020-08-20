# **0x13. Firewall**

## **Learning Objectives**
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### **General**
+ What is HTTPS SSL 2 main roles
+ What is the purpose encrypting traffic
+ What SSL termination means

## **Requirements**

### **General**
+ Allowed editors: vi, vim, emacs                                                                                       + - A README.md file, at the root of the folder of the project, is mandatory
+ Allowed editors: vi, vim, emacs
+ All your files will be interpreted on Ubuntu 16.04 LTS
+ All your files should end with a new line
+ A README.md file, at the root of the folder of the project, is mandatory
+ All your Bash script files must be executable
+ Your Bash script must pass Shellcheck (version 0.3.7) without any error
+ The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
+ The second line of all your Bash scripts should be a comment explaining what is the script doing

# **Tasks**

0.  Firewall ABC: Pick one answer for every question

What is a firewall?

     1. A hardware security system
     2. A hardware or software security system
     3. A software security system

What are the 2 types of firewall:

     1. Soft and hard firewall
     2. Incoming and outgoing firewall
     3. Network and host-based firewall

What is the main function of a firewall?

     1. To filter incoming and outgoing network traffic
     2. To filter incoming and outgoing TCP traffic
     3. To filter outgoing traffic

1. Block all incoming traffic but: Lets install the ufw firewall and setup a few rules on web-01.

Requirements:

	* The requirements below must be applied to web-01 (feel free to do it on lb-01 and web-02, but it wont be checked)
	* Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
	  + 22 (SSH)
	    + 443 (HTTPS SSL)
	      + 80 (HTTP)
	      * Share the ufw commands that you used in your answer file
