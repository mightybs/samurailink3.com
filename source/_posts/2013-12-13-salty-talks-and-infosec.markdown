---
layout: post
title: "Salty Talks and InfoSec"
date: 2013-12-13 11:26
comments: true
categories: News
---

Last night was the holiday meeting of [Ohio InfoSec Forum](http://www.ohioinfosec.org/), a group that puts on monthly security meetings for free in [Kettering, Ohio](https://maps.google.com/maps?t=m&q=kettering+ohio&output=classic). They discuss everything from high-level security (use strong passwords) to low-level complex security (here's how you write a buffer overflow in C). It's really a fantastic group. I've recently had the pleasure of being added to their Board of Directors. I help with web technology, marketing, acquiring speakers and sponsors. You know, normal stuff that happens in a charity organization.

Anyway, we just recently had our holiday meeting, which consisted of us playing ["Who's Slide is it Anyway?!"](http://www.irongeek.com/i.php?page=videos/notacon10/1-14-whose-slide-is-it-anyway-nicolle-rogueclown-neulist). The format consists of picking audience members to present on a randomly-chosen slide deck, of which they have no prior information about. The results tend to be mildly hilarious. With some people standing in front of the group, completely flabergasted, as they struggle to find the words to talk about chair and couch design. Other people flew through the random deck with grace, talking about the fantastic new [PRISM](http://www.theguardian.com/world/prism) program (heavy sarcasm, of course). All in all, it was a good time.

One of the non-joke decks I made up was a quick 3-5 minute talk about how to hash passwords securely with salt (in case you can't use bcrypt or another made-for-password hashing algorithm). Check it out [here](/talks/salting-your-hashes/). It's not in-depth, it doesn't cover all use cases, but it does give a decent first-look at what salt is and why it's helpful.
