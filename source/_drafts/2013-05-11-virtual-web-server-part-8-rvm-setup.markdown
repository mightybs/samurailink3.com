---
layout: post
title: "Virtual Web Server: Part 8 - RVM Setup"
date: 2013-05-11 09:49
comments: true
categories: [Tutorials]
---

For Ruby applications, managing dependencies manually can be difficult. Luckily [RVM](https://rvm.io/) is there to make everything easier on us. RVM manages different Ruby versions, dependencies, and gem versions. It is hugely helpful in getting Ruby and Rails installed quickly and easily. First off, make a new user that is going to run your new Rails application with `adduser railsuser`, and add a complex password. Now, this user will temporarily need sudo access for the initial RVM install, give them this with `adduser railsuser sudo`.

RVM installes on a per-user basis, allowing different people to use different versions of Ruby and Rails, awesome from a multi-host server perspective. 

{% gist 5311708 %}
