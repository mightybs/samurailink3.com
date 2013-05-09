---
layout: post
title: "Virtual Web Server: Part 4 - Apache Web Server"
date: 2013-04-28 07:06
comments: true
categories: [Tutorials]
---

Now that you have a server, a domain name, and automatic security updates, we can finally start to host web pages.

The very first thing we need to do is set our DNS records for our host. Head over to [Hover](https://www.hover.com), click on your doamin, then click DNS. Now, head to Rackspace and get the IP address of your server. You'll need three records for your domain on Hover:

```
Host: @
Record: A
Detail: YOUR RACKSPACE IP HERE

Host: *
Record: A
Detail: YOUR RACKSPACE IP HERE

Host: www
Record: CNAME
Detail: example.com
```

Check out the screenshots below to look at my setup:

[{% img center ../../../../../images/2013-04-28-virtual-web-server-part-4-apache-web-server-1.png %}](../../../../../images/2013-04-28-virtual-web-server-part-4-apache-web-server-1-full.png)
[{% img center ../../../../../images/2013-04-28-virtual-web-server-part-4-apache-web-server-2.png %}](../../../../../images/2013-04-28-virtual-web-server-part-4-apache-web-server-2-full.png)

Next, lets get apache installed with `apt-get install apache2`. Once this is installed, we will need to disable the default hosting profile, as it will mess up our configuration later on. Do this with `a2dissite default`.

Ok, now we'll enable the re-write module with `a2enmod rewrite`. We're doing this because we want our naked domain `example.com` to point to `www.example.com` automatically. Believe it or not, `example.com` is an entirely different site than `www.example.com`. We'll set up a rewrite rule now to make that happen.

Use `nano /var/www/.htaccess` to get into a text editor. Here's how I've set up my re-write rule, just copy/paste and modify it to fit your site:
{% gist 5335737 %}

Next, lets make a directory for our website with `mkdir /var/www/www.example.com`. After that, go ahead and put in a test file in that directory: `nano /var/www/www.example.com/index.html`. Just put any text you want into it, its just a test site for now.

Now, we'll need to make an apache configuration file for our site, so Apache knows what to do with it. Use `nano /etc/apache2/sites-available/www.example.com` to start writing it up. Apache config files aren't terribly difficult, but here's a template I use for my sites. You will need to change the `siteroot` and `sitename.example.com` at the very least.
{% gist 5111058 %}

Next, we have to tell Apache that we want to enable our site. We can do this with `a2ensite www.example.com`. Next, we'll have to either restart or reload the server configuration, I'm just going to restart it with `service apache2 restart`. Next up, head over to your domain, you should see your site up and running!

As always, if you feel something could be better or fixed up, [let me know](https://github.com/samurailink3/samurailink3.github.com/issues/).

**Other posts in this series:**

1. [Getting a Server](../../../../2013/04/23/virtual-web-server-part-1-rackspace/)
2. [Getting a Domain Name](../../../../2013/04/23/virtual-web-server-part-2-hover/)
3. [Automatic Updates](../../../../2013/04/23/virtual-web-server-part-3-automatic-updates-in-debian/)
4. Apache2 Setup _- You are here_
5. [PHP and MySQL Setup](../../../../2013/05/02/virtual-web-server-part-5-php-and-mysql-setup/)
6. [ProFTPd Setup](../../../../2013/05/09/virtual-web-server-part-6-proftpd-setup/)
7. WordPress Setup
8. RVM Setup
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups
