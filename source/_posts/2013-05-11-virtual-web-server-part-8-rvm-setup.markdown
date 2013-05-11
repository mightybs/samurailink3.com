---
layout: post
title: "Virtual Web Server: Part 8 - RVM Setup"
date: 2013-05-11 09:49
comments: true
categories: [Tutorials]
---

For Ruby applications, managing dependencies manually can be difficult. Luckily [RVM](https://rvm.io/) is there to make everything easier on us. RVM manages different Ruby versions, dependencies, and gem versions. It is hugely helpful in getting Ruby and Rails installed quickly and easily.

Log into the root account, then install the dependencies: `sudo apt-get -y install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion python`. After you install that, we need to download RVM and install RVM and Rails 1.9.3: `curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled --ruby=1.9.3`.

Now you have Ruby and Rails ready to do your bidding.

**Other posts in this series:**

1. [Getting a Server](/blog/2013/04/23/virtual-web-server-part-1-rackspace/)
2. [Getting a Domain Name](/blog/2013/04/23/virtual-web-server-part-2-hover/)
3. [Automatic Updates](/blog/2013/04/23/virtual-web-server-part-3-automatic-updates-in-debian/)
4. [Apache2 Setup](/blog/2013/04/28/virtual-web-server-part-4-apache-web-server/)
5. [PHP and MySQL Setup](/blog/2013/05/02/virtual-web-server-part-5-php-and-mysql-setup/)
6. [ProFTPd Setup](/blog/2013/05/09/virtual-web-server-part-6-proftpd-setup/)
7. [WordPress Setup](/blog/2013/05/09/virtual-web-server-part-7-wordpress-setup/)
8. RVM Setup _- You are here_
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups
