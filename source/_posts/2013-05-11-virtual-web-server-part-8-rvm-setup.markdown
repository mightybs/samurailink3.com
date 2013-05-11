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