---
layout: post
title: "Virtual Web Server: Part 7 - WordPress Setup"
date: 2013-05-09 05:24
comments: true
categories: [Tutorials]
---

Now that you have a user and are able to upload files, lets get a [WordPress](http://wordpress.org/) blog going. The first thing to do is download [the latest WordPress package](http://wordpress.org/latest.zip), extract it, then upload it via your newly created FTP server. I like [FileZilla](https://filezilla-project.org/) for FTP work, but any FTP client will work.

Head over to the site, you should see that you need to create a configuration file. If you don't see this, and see an error message instead, make sure you have `php5-mysql` installed. You can do this with `apt-get install php5-mysql` then `service apache2 restart`. For the configuration file, we'll need to first get our database details. This poses somewhat of a problem, though, we don't have a database currently. Log onto your server's root account via SSH, then log onto your MySQL instance with `mysql -u root -p` and enter your MySQL password (this should be different from your user password). Follow along with the commands below to create a new database and authorizations so we can finish the WordPress setup (all commands should be run from the MySQL command prompt):

Create a new database: `CREATE DATABASE exampledatabase;`  
Create a new MySQL User: `GRANT ALL PRIVILEGES ON exampledatabase.* TO "exampleuser"@"localhost" IDENTIFIED BY "MakeAComplexPasswordHere";`  
Refresh permissions: `FLUSH PRIVILEGES`  
Exit the console: `exit`  

Click `Let's go!` on the WordPress wizard and fill in the details below:

Database Name: `exampledatabase`  
User Name: `exampleuser`  
Password: `YourComplexPasswordHere`  
Database Host: `localhost`  
Table Prefix: `wp_`  

WordPress should then generate a text box with a lot of configuration data in it. Copy all of this text into a file named `wp-config.php`, then upload it to the root of your web directory via FTP.

Now your configuration is done, go ahead and proceed with the install. The rest is simple, set up a name for your site, set up a username/password for WordPress, then get on with building cool things. The internet is ripe with WordPress themes, plugins, advice, and examples, do some Googling, figure out what you want to do from here.

**Other posts in this series:**

1. [Getting a Server](/blog/2013/04/23/virtual-web-server-part-1-rackspace/)
2. [Getting a Domain Name](/blog/2013/04/23/virtual-web-server-part-2-hover/)
3. [Automatic Updates](/blog/2013/04/23/virtual-web-server-part-3-automatic-updates-in-debian/)
4. [Apache2 Setup](/blog/2013/04/28/virtual-web-server-part-4-apache-web-server/)
5. [PHP and MySQL Setup](/blog/2013/05/02/virtual-web-server-part-5-php-and-mysql-setup/)
6. [ProFTPd Setup](/blog/2013/05/09/virtual-web-server-part-6-proftpd-setup/)
7. WordPress Setup _- You are here_
8. [RVM Setup](/blog/2013/05/11/virtual-web-server-part-8-rvm-setup/)
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups
