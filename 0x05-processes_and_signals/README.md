# **0x05. Processes and signals**

## **Learning Objectives**
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### **General**
+ What is a PID
+ What is a process
+ How to find a process’ PID
+ How to kill a process
+ What is a signal
+ What are the 2 signals that cannot be ignored

## **Requirements**

### **General**
+ Allowed editors: vi, vim, emacs
+ All your files will be interpreted on Ubuntu 14.04 LTS
+ All your files should end with a new line
+ A README.md file, at the root of the folder of the project, is mandatory
+ All your Bash script files must be executable
+ Your Bash script must pass Shellcheck (version 0.3.3-1~ubuntu14.04.1 via apt-get) without any error
+ The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
+ The second line of all your Bash scripts should be a comment explaining what is the script doing

# **Tasks**

0. What is my PID: Write a Bash script that displays its own PID.

1. List your processes: Write a Bash script that displays a list of currently running processes.

+ Requirements:

	* Must show all processes, for all users, including those which might not have a TTY
	* Display in a user-oriented format
	* Show process hierarchy

2. Show your Bash PID: Using your previous exercise command, write a Bash script that displays lines containing the bash word, thus allowing you to easily get the PID of your Bash process.

+ Requirements:

	* You cannot use pgrep
	* The third line of your script must be # shellcheck disable=SC2009

3. Show your Bash PID made easy: Write a Bash script that displays the PID, along with the process name, of processes whose name contain the word bash.

+ Requirements:

	* You cannot use ps

4. To infinity and beyond: Write a Bash script that displays To infinity and beyond indefinitely.

+ Requirements:

	* In between each iteration of the loop, add a sleep 2

5. Kill me now. We killed our 4-to_infinity_and_beyond process using ctrl+c in the previous task, there is actually another way to do this. Write a Bash script that kills 4-to_infinity_and_beyond process.

+ Requirements:

	* You must use kill

6. Kill me now made easy: Write a Bash script that kills 4-to_infinity_and_beyond process.

+ Requirements:

	* You cannot use kill or killall

7. Highlander: Write a Bash script that displays:

	* To infinity and beyond indefinitely
	* With a sleep 2 in between each iteration
	* I am invincible!!! when receiving a SIGTERM signal
	* Make a copy of your 6-kill_me_now_made_easy script, name it 67-kill_me_now_made_easy, that kills the 7-highlander process instead of the 4-to_infinity_and_beyond one.

8. Beheaded process: Write a Bash script that kills the process 7-highlander.

9. Process and PID file: Write a Bash script that:

	* Creates the file /var/run/holbertonscript.pid containing its PID
	* Displays To infinity and beyond indefinitely
	* Displays I hate the kill command when receiving a SIGTERM signal
	* Displays Y U no love me?! when receiving a SIGINT signal
	* Deletes the file /var/run/holbertonscript.pid and terminates itself when receiving a SIGQUIT or SIGTERM signal
