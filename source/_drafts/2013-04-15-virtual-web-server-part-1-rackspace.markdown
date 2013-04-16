---
layout: post
title: "Virtual Web Server: Part 1 - Rackspace"
date: 2013-04-15 18:33
comments: true
categories: [Tutorials]
---

# Getting a Server

I work on a lot of web projects, and I needed a way to centrally host them without needed to configure a server each time. I wanted something that could host static sites, rails sites, and PHP/MySQL sites. I could have gone with a combination of hosting platforms, but I really wanted something that I had more control over, without running the server out of my home. The power in my apartment fluctuates enough that I can't really be comfortable with hosting public projects here, even with a battery backup.

I decided on [Rackspace](http://www.rackspace.com/) for a few different reasons, not the least of which was [their awesome 'fanatical' support](http://samurailink3.com/blog/2013/04/09/rackspace/). I started out by launching a new Debian Cloud Server. I chose Debian because of the ease-of-use of Debian systems, my familiarity, and [my general move away from Ubuntu](http://samurailink3.com/blog/2013/04/13/the-move-away-from-ubuntu/). Debian tends to be a stable, secure distribution for web hosting. Combine that with good backups and you've got a professional setup.

Today I'll start a series of posts on how I've set my virtual web server up and walk you through how to do the same.


**Other posts in this series:**

1. Getting a Server
2. Getting a Domain Name
3. Apache2 Setup
4. PHP and MySQL Setup
5. ProFTPd Setup
6. WordPress Setup
7. RVM Setup
8. Git Setup
9. OctoPress Setup


Automatic updates
proftpd {% gist 5388226 %}
SSH /bin/false {% gist 5388253 %}
Apache2
    virtual hosts
    .htaccess
    a2enmod rewrite
git/git-core
rvm

`{% gist %}`