---
layout: post
title: "Virtual Web Server: Part 3 - Automatic Updates in Debian"
date: 2013-04-23 20:33
comments: true
categories: [Tutorials]
---

The next thing you should do is enable automatic security updates. No sense in having your server get hacked because you were too busy to update it. Luckily, in most systems, this is pretty easy.

First, install `unattended-upgrades` like this:
    apt-get install unattended-upgrades
Then configure your settings with `nano /etc/apt/apt.conf.d/50unattended-upgrades`. Depending on the system, I usually only enable automatic security updates, but on development systems, its nice to have everything update as well. Debian Stable doesn't change all that much, but there's always the risk of breaking things. The configuration file below only has security updates enabled.

{% gist 5448625 %}

Go ahead and run `apt-get update` and `apt-get upgrade` to bring your system completely up to date as of this moment. So far, we've just done some system maintainence tasks, nothing really fun, don't have much to show for our work, until next time. In the next article, I'll walk you through Apache configuration and we'll get to hosting real websites.

**Other posts in this series:**

1. [Getting a Server](http://samurailink3.com/blog/2013/04/23/virtual-web-server-part-1-rackspace/)
2. [Getting a Domain Name](http://samurailink3.com/blog/2013/04/23/virtual-web-server-part-2-hover/)
3. Automatic Updates _- You are here_
4. Apache2 Setup
5. PHP and MySQL Setup
6. ProFTPd Setup
7. WordPress Setup
8. RVM Setup
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups