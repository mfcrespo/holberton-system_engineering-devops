# **0x0C. Web server**

## **Learning Objectives**
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### **General**
+ What is the main role of a web server
+ What is a child process
+ Why web servers usually have a parent process and child processes
+ What are the main HTTP requests

## **Requirements**

### **General**
+ Allowed editors: vi, vim, emacs
+ All your files will be interpreted on Ubuntu 16.04 LTS
+ All your files should end with a new line
+ A README.md file, at the root of the folder of the project, is mandatory
+ All your Bash script files must be executable
+ Your Bash script must pass Shellcheck (version 0.3.7) without any error
+ The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
+ The second line of all your Bash scripts should be a comment explaining what is the script doing

# **Tasks**

0. Transfer a file to your server: Write a Bash script that transfers a file from our client to a server:

Requirements:

Accepts 4 parameters
The path to the file to be transferred
The IP of the server we want to transfer the file to
The username scp connects with
The path to the SSH private key that scp uses
Display Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY if less than 3 parameters passed
scp must transfer the file to the user home directory ~/
Strict host key checking must be disabled when using scp

1. Install nginx web server: Web servers are the piece of software generating and serving HTML pages, let’s install one!

Requirements:

Install nginx on your web-01 server
Nginx should be listening on port 80
When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Holberton School
As an answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements

2. Setup a domain name: .TECH Domains is one of the top domain providers. They are known for the stability and quality of their DNS hosting solution. Holberton School partnered with .TECH Domains so that you can learn about DNS.

.TECH Domains worked with domain name registrars to give you access to a free domain name for a year. Please get the promo code in your tools space. Feel free to drop a thank you tweet for .TECH Domains.

Provide the domain name in your answer file.

Requirement:

provide the domain name only (example: foobar.tech), no subdomain (example: www.foobar.tech)
configure your DNS records with an A entry so that your root domain points to your web-01 IP address Warning: the propagation of your records can take time (~1-2 hours)
go to your profile and enter your domain in the Project website url field

3. Redirection: 
Replace a line with multiple lines with sed
Configure your Nginx server so that /redirect_me is redirecting to another page.

Requirements:

The redirection must be a “301 Moved Permanently”
You answer file should be a Bash script containing commands to automatically configure a Ubuntu machine to respect above requirements
Using what you did with 1-install_nginx_web_server, write 3-redirection so that it configures a brand new Ubuntu machine to the requirements asked in this task

4. Not found page 404: Configure your Nginx server to have a custom 404 page that contains the string Ceci n'est pas une page.

Requirements:

The page must return an HTTP 404 error code
The page must contain the string Ceci n'est pas une page
Using what you did with 3-redirection, write 4-not_found_page_404 so that it configures a brand new Ubuntu machine to the requirements asked in this task

5. Design a beautiful 404 page: Some of my favorites:

Digital Ocean
Github
Lego
Blizzard
StickerMule
Get creative and impress us!

Note that if you decide to have your creative 404 page as the default one, make sure that it still contains the string Ceci n'est pas une page (otherwise the checker will fail your previous project).

Submit the URL of your 404 page in the field bellow.

Please, remember that these blogs must be written in English to further your technical ability in a variety of settings.

6. Install Nginx web server (w/ Puppet): Time to practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 301 redirect when querying /redirect_me.

Requirements:

Nginx should be listening on port 80
When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Holberton School
The redirection must be a “301 Moved Permanently”
Your answer file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements