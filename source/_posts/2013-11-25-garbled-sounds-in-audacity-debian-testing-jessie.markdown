---
layout: post
title: "Garbled Sounds in Audacity - Debian Testing (jessie)"
date: 2013-11-25 13:47
comments: true
categories: [News]
---

While trying to record some lines for [inSecurity](http://inthirty.net/category/insecurity/), I ran into a fairly annoying bug with Audacity on my home system. I recorded some sound, and it did record properly, but when I tried to play it back, all I heard was garbled audio for a split second. After a long time Googling for the answer, I stumbled upon [this launchpad bug report](https://bugs.launchpad.net/ubuntu/+source/audacity/+bug/1223549), which [details a workaround](https://bugs.launchpad.net/ubuntu/+source/audacity/+bug/1223549/comments/6) at the bottom. I took this information and made an `alias` entry in my `.bashrc` file:

```bash
alias audacity='PULSE_LATENCY_MSEC=30; export PULSE_LATENCY_MSEC; /usr/bin/audacity'
```

I could hear the audio properly when I relaunched audacity, much to my happiness.