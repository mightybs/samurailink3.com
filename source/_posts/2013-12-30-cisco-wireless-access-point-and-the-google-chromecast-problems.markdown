---
layout: post
title: "Cisco Wireless Access Point and the Google Chromecast Problems"
date: 2013-12-30 16:01
comments: true
categories: News
---

A while ago, I plunked down $35 to get Google's [second attempt](https://play.google.com/store/devices/details?id=chromecast) at the [living room stream box](http://en.wikipedia.org/wiki/Nexus_Q). After being extremely impressed with the price tag, I became extremely disappointed in the way it worked in my almost-corporate home network.

For the life of me, I couldn't get the Chromecast and my devices to see each other. I'm using a home-built [Astaro-at-Home](http://www.sophos.com/en-us/products/free-tools/sophos-utm-home-edition.aspx) (now Sophos UTM Home Edition) box coupled with a [dumb gigabit switch](http://www.dlink.com/us/en/business-solutions/switching/unmanaged-switches/rackmount/dgs-1024d-24-port-copper-gigabit-switch) and a nice [Cisco wireless access point](http://www.amazon.com/gp/product/B004PHVQFW/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B004PHVQFW&linkCode=as2&tag=thbloftowe-20). Not really a typical home setup, compared with all the unsecured Linksys boxes running around, but not overly-complex either.

I tried everything I could, got frustrated, and gave up on the device for a couple weeks before tackling it again over a slow weekend. I found a [couple fantastic](http://forums.androidcentral.com/google-chromecast/301720-issue-chromecast-cisco-aironet-1140-a.html) [pieces of information](https://supportforums.cisco.com/thread/2230888) that pointed me in the right direction. I needed to add two statements to my AP configuration (yes, in text mode, there is no web option for this).

Adding these two statements over SSH solved all of my problems with the Chromecast:

```
no ip igmp snooping
no dot11 igmp snooping-helper
```

These two lines allow the Chromecast to talk to devices over the access point and complete the set up correctly. Not really the way I wanted it, especially since the Nexus Q was so much easier to set up, but it works now.

As far as the Chromecast goes, it's a great device for $35. From a technical perspective, the Nexus Q was far cleaner to set up and run with, the Chromecast seems to crash and disconnect more than I would like it to, but for $35, I'm not going to complain.