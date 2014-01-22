---
layout: post
title: "Vagrant Box: Debian 7.3 32-bit"
date: 2014-01-22 16:53
comments: true
categories: News
---

Recently I've been tasked with the job of becoming a [Ruby on Rails](http://rubyonrails.org/) application developer. In the past few months, my skillset has gone from "complete noob" to "not-a-complete noob". I'll be making more Rails posts as time goes on, but I needed to share something I made today: A Vagrant Base box.

Yea, I get it, they're everywhere. Honestly, though, I looked for a long time and couldn't find a stupidly clean, Debian 32-bit machine made for VirtualBox 4.3.6 (with Chef-Solo). I decided to take the half-hour and make my own. The way the Vagrant docs read, they make the whole premise of creating an image out to be this insane time-consuming thing. It's really not. As a matter of fact, it's pretty easy (especially if you have Linux experience already). But this post isn't going to walk you through how to create that, there are far better resources out there for creating Vagrant Base Boxes. Instead, I'm going to share mine that you can use for any and all of your projects. Here's the details:

    Vagrant Base Box: Clean Debian 32-bit
    OS: Debian 7.3 x86
    VirtualBox Additions: 4.3.6
    Chef Client: 11.8.2
    Preinstalled applications: Curl

I do most of my configuration through Chef, today. I'm not an expert by any means, and I do rely on custom scripts for some items. If you need something added, get a cookbook or script it. This is supposed to be lean, clean, and easy to stand up without getting in your way. If you have any ideas, throw them out in the comments.

[Download Vagrant Base Box: Clean Debian 32-bit](http://files.samurailink3.com/Debian-7.3-x86-vbox-chef.box)

URL for Vagrantfile: `http://files.samurailink3.com/Debian-7.3-x86-vbox-chef.box`
