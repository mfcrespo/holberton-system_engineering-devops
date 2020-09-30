# 0x17. Web stack debugging #3

## Background Context

When debugging, sometimes logs are not enough. Either because the software is breaking in a way that was not expected and the error is not being logged, or because logs are not providing enough information. In this case, you will need to go down the stack, the good news is that this is something Holberton students can do :)

Wordpress is a very popular tool, it allows you to run blogs, portfolios, e-commerce and company websites It actually powers 26% of the web, so there is a fair chance that you will end up working with it at some point in your career.

Wordpress is usually run on LAMP (Linux, Apache, MySQL, and PHP), which is a very widely used set of tools.

The web stack you are debugging today is a Wordpress website running on a LAMP stack.

##Tasks of project

0. Strace is your friend 
Using strace, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet (instead of using Bash as you were previously doing).

Hint:

strace can attach to a current running process
You can use tmux to run strace in one window and curl in another one
Requirements:

Your 0-strace_is_your_friend.pp file must contain Puppet code
You can use whatever Puppet resource type you want for you fix

#### Follow me

| Author | GitHub | Twitter | Linkedin |
| :---: | :---: | :---: | :---: |
| Maria Fernanda Crespo | [mfcrespo](https://github.com/mfcrespo) | [@mafe_crespo](https://twitter.com/mafe_crespo) | [mariafernandacrespo](https://www.linkedin.com/in/mariafernandacrespo) |


<p>
<img src="https://pbs.twimg.com/profile_images/1116938743968149504/0TQ4K4r3_400x400.jpg" width="20%" height="20%">                                                       
</p>

[Maria Fernanda Crespo](https://twitter.com/mafe_crespo)

##### Holberton School - Foundations - System engineering & DevOps - Web stack
##### September 30, 2020. Cali, Colombia
