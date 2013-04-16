---
layout: post
title: "Upgrading Debian Squeeze to Wheezy"
date: 2013-04-16 14:25
comments: true
categories: [Tutorials]
---

Since [switching to Debian](http://samurailink3.com/blog/2013/04/14/distribution-pilgrimage/) for the majority of my computing needs, I started looking for a way to get more up-to-date packages. The stability is nice, but I'm willing to live with some bugs if it means that my desktop can have more frequent updates. Turns out, all I need to do is change a few words in my `/etc/apt/source.list` file, and the system is upgrade with a simple `apt-get update` and `apt-get dist-upgrade`. The usual disclaimer applies, using software in `testing` or `unstable` could be dangerous and cause you to lose data / get divorced / start world war 3 (in that order).

Here's my stable `/etc/apt/source.list` file before:

```
#

# deb cdrom:[Debian GNU/Linux 6.0.7 _Squeeze_ - Official Snapshot i386 LIVE/INSTALL Binary 20130303-21:07]/ squeeze main

# deb cdrom:[Debian GNU/Linux 6.0.7 _Squeeze_ - Official Snapshot i386 LIVE/INSTALL Binary 20130303-21:07]/ squeeze main

deb http://ftp.us.debian.org/debian/ squeeze main contrib non-free
deb-src http://ftp.us.debian.org/debian/ squeeze main contrib non-free

deb http://security.debian.org/ squeeze/updates main contrib non-free
deb-src http://security.debian.org/ squeeze/updates main contrib non-free

# squeeze-updates, previously known as 'volatile'
deb http://ftp.us.debian.org/debian/ squeeze-updates main
deb http://ftp.us.debian.org/debian/ squeeze-proposed-updates main contrib non-free
deb-src http://ftp.us.debian.org/debian/ squeeze-proposed-updates main contrib non-free
deb-src http://ftp.us.debian.org/debian/ squeeze-updates main contrib non-free
```

And here's my testing `/etc/apt/sources.list` file after:

```
#

# deb cdrom:[Debian GNU/Linux 6.0.7 _Testing__ - Official Snapshot i386 LIVE/INSTALL Binary 20130303-21:07]/ testing main

# deb cdrom:[Debian GNU/Linux 6.0.7 _Testing_ - Official Snapshot i386 LIVE/INSTALL Binary 20130303-21:07]/ testing main

deb http://ftp.us.debian.org/debian/ testing main contrib non-free
deb-src http://ftp.us.debian.org/debian/ testing main contrib non-free

deb http://security.debian.org/ testing/updates main contrib non-free
deb-src http://security.debian.org/ testing/updates main contrib non-free

# testing-updates, previously known as 'volatile'
deb http://ftp.us.debian.org/debian/ testing-updates main
deb http://ftp.us.debian.org/debian/ testing-proposed-updates main contrib non-free
deb-src http://ftp.us.debian.org/debian/ testing-proposed-updates main contrib non-free
deb-src http://ftp.us.debian.org/debian/ testing-updates main contrib non-free
```

If you look, all that changed is the word `squeeze` to the word `testing`. Run a find-and-replace in your favorite text editor to make the switch. If you're really living on the edge, you can make the switch to the `unstable` branch, but I hear things break a bit more over there.

[Living with Eternal Upgrades - Debian Reference Guide](http://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_life_with_eternal_upgrades)
