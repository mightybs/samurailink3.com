---
layout: post
title: "Virtual Web Server: Part 6 - ProFTPd Setup"
date: 2013-05-09 04:36
comments: true
categories: [Tutorials]
---

Now that you have most of what you need to run some simple sites, you need a way to open it up to people, allow them to upload their own files. This is where [ProFTPd](http://www.proftpd.org/) comes in. First, install it with `apt-get install proftpd`. There are some configuration options as you set it up. Right now, select `standalone` when the installer asks you whether to run as a service or standalone server.

Now we have to create a user who will manage our domain. I usually set this name to the domain name itself without the ending (so `example` would manage `www.example.com`). Create a new user with `adduser example` and set a good, complex password. Debian will ask you for more details, but you don't need to fill these out. This creates a new user and home directory. We actually don't want our user to use `/home/example` as their home directory, we want them to be jailed to the web directory. Open up `/etc/passwd` in your text editor of choice, we're going to make some changes to this new user. We need to set a new home directory, and more imporantly, a new shell, we don't want the user logging on via SSH, they don't need that kind of access. Check out the example below for configuration details.

{% gist 5388253 %}

After you set up your user like `alice` in the example above, we need to change the permissions on our new user's home directory. Use this command to set the owner and group of the folder to your new user: `chown -R example:example /var/www/www.example.com/`. Now we're ready to set some ProFTPd configuration options. Open up `/etc/proftpd/proftpd.conf` and copy my configuration file below.

{% gist 5388226 %}

This configuration jails users in their home directories, which we've just set to be the public web directory. You do need to run `service proftpd restart` to apply the configuration changes.

Have your users log in with the following details (changed to fit your domain/username of course):

```
Host: www.example.com
Port: 21
Username: example
Password: # the password you set for this user #
```

Now your users can push and pull files to set up their websites.

**Other posts in this series:**

1. [Getting a Server](/blog/2013/04/23/virtual-web-server-part-1-rackspace/)
2. [Getting a Domain Name](/blog/2013/04/23/virtual-web-server-part-2-hover/)
3. [Automatic Updates](/blog/2013/04/23/virtual-web-server-part-3-automatic-updates-in-debian/)
4. [Apache2 Setup](/blog/2013/04/28/virtual-web-server-part-4-apache-web-server/)
5. [PHP and MySQL Setup](/blog/2013/05/02/virtual-web-server-part-5-php-and-mysql-setup/)
6. ProFTPd Setup _- You are here_
7. [WordPress Setup](/blog/2013/05/09/virtual-web-server-part-7-wordpress-setup/)
8. [RVM Setup](/blog/2013/05/11/virtual-web-server-part-8-rvm-setup/)
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups
