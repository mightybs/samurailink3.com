---
layout: post
title: "Compiz Fusion in Debian"
date: 2013-04-21 20:55
comments: true
categories: [Tutorials]
---

One of the things I love the most about Linux environments is [Compiz-Fusion](http://www.compiz.org/). Even though the majority of plugins are pure eye-candy, I find that zooming around the desktop environment in a pretty environment is helpful to my productivity. And seriously, [who wouldn't want their desktop to do this?](http://www.youtube.com/watch?v=Fyl_dEO8KkI)

What I needed to do is get this installed on my new Debian system, but it does take a little bit of work to get installed. [This post over on the Debian forums](http://forums.debian.net/viewtopic.php?p=436909&sid=ad2ae373bf6fc4bcad35d3c0a39c4b64#p436909) told me exactly what to do. It looks like Compiz-Fusion is in the `sid` repository, so you need to add a new line to your `/etc/apt/sources.list` file:

```
## SID: to get compiz
deb http://ftp.us.debian.org/debian/ sid main non-free contrib
```

After you do that, run these commands to set your default release channel, update the repository listings, and install compiz-fusion and some common compiz add-ons:

```
sudo su
echo 'APT::Default-Release "testing";' >> /etc/apt/apt.conf
apt-get update
apt-get install fusion-icon compiz* compizconfig-settings-manager
```

This should install Compiz, the fusion-icon program, a suite of stable and unstable plugins, and the graphical settings manager.
