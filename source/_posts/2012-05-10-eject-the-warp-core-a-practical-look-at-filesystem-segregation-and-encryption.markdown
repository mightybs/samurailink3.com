---
layout: post
title: "Eject the Warp Core: A practical look at filesystem segregation and encryption"
date: 2012-05-10 22:00
comments: true
categories: [Security, Linux, Encryption]
---

Here's my presentation I gave at Ohio InfoSec Forum today about the "Ejectable Core Backtrack Machine" and how filesystem segregation and encryption can help keep your data out of the wrong hands.

To get the full experience, open up the speaker notes to read along with what I'll be saying. It won't replace actually being there, but hopefully it'll help you grasp the concepts.

Future considerations (from InfoSec):

[tmpfs](http://en.wikipedia.org/wiki/Tmpfs) instead of /tmp
Find a way to disable direct memory access on the kernel level (firewire and PCI can exploit this)

<iframe src="https://docs.google.com/presentation/d/1ytk9MqE3adNX7-q6zmhNrSFpq2w2pre0orvGADpq7kM/embed?start=false&loop=false&delayms=5000" frameborder="0" width="960" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>