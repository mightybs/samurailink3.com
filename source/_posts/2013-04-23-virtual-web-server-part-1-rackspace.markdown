---
layout: post
title: "Virtual Web Server: Part 1 - Rackspace"
date: 2013-04-23 06:14
comments: true
categories: [Tutorials]
---

Today I'll start a series of posts on how I've set my virtual web server up and walk you through how to do the same. You should be comfortable using the command line, Linux systems, and SSH.

# Getting a Server

I work on a lot of web projects, and I needed a way to centrally host them without needed to configure a server each time. I wanted something that could host static sites, rails sites, and PHP/MySQL sites. I could have gone with a combination of hosting platforms, but I really wanted something that I had more control over, without running the server out of my home. The power in my apartment fluctuates enough that I can't really be comfortable with hosting public projects here, even with a battery backup.

I decided on [Rackspace](http://www.rackspace.com/) for a few different reasons, not the least of which was [their awesome 'fanatical' support](http://samurailink3.com/blog/2013/04/09/rackspace/). I started out by launching a new Debian Cloud Server. I chose Debian because of the ease-of-use of Debian systems, my familiarity, and [my general move away from Ubuntu](http://samurailink3.com/blog/2013/04/13/the-move-away-from-ubuntu/). Debian tends to be a stable, secure distribution for web hosting. Combine that with good backups and you've got a professional setup. Rackspace is cheap, but isn't free, so you'll need to pay monthly for the service. My server runs me about $20 a month, so find a few buddies and split the cost up.

The first step is to get yourself a username over at [Rackspace.com](http://www.rackspace.com). Next, start up a new cloud server by clicking the `Create Server` button:

$cloud server startup

For this server, we're going to use Debian 6 (or 7 if its out now) and 512MB of RAM. Honestly, I'm running a very thin server, it isn't very powerful, and it works just fine. If your site has a million hits an hour, you probably shouldn't be following this tutorial. For everyone else, this works just fine.

$ server launch options

Go ahead and copy the password that's shown and log in via SSH. You'll need to log in as `root@ip-address-here`. Use the command `passwd` to set a new password. Make this long, complicated, and memorable, these are your keys to the castle, it would be a shame if [something happened to it](http://25.media.tumblr.com/tumblr_lzk228Lb0Z1rnxi5bo1_500.gif).

And now you have a public server, ready to build things on. In the next posts of this series, I'll walk you through virtual hosting, WordPress, OctoPress, and other essentials.

**Other posts in this series:**

1. Getting a Server _- You are here_
2. Getting a Domain Name
3. Automatic Updates
4. Apache2 Setup
5. PHP and MySQL Setup
6. ProFTPd Setup
7. WordPress Setup
8. RVM Setup
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups