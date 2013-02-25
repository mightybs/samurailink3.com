---
layout: post
title: "Project GameStation (Raspberry Pi Emulation Machine)"
date: 2013-02-20 18:00
comments: true
categories: [Gaming, Projects]
---

[{% img center ../../../../../images/2013-02-20-project-gamestation-1.jpg %}](../../../../../images/2013-02-20-project-gamestation-1-full.jpg)

Recently, I've been drowning in personal projects, but I feel that one of them is finally to the point where I can start to release information about it. **Project Gamestation** is a [Raspberry Pi](http://www.newark.com/jsp/shoppingCart/shoppingCart.jsp?ICID=Pi-Advanced-Bundle&_requestid=37485) based emulation machine. The vast majority of the code and configuration is incredibly easy to implement thanks to [RetroPie-Setup](https://github.com/petrockblog/RetroPie-Setup), a GitHub project by [PetRockBlog](https://github.com/petrockblog).

Really, the only configuration I've done with this project is controller configuration, automated RackSpace Cloud backups, OS configuration, and lots of testing. If you're looking to build one of these, you must have Linux experience (or a willingness to learn), and you can't be afraid of the command line.

The majority of NES and SNES games can be played with overclocking set to `modest`. The only time I ran into game slowdown is when playing complex SNES games like _Super Metroid_ and most Genesis games. I ended up settling on the `High` setting. `Medium` was too slow for _Sonic 3_, and `Turbo` was corrupting SD cards fairly frequently.

For the controllers, I'm using two cheap $10 USB controllers, one an [SNES imitation](http://www.amazon.com/gp/product/B002JAU20W/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B002JAU20W&linkCode=as2&tag=thbloftowe-20), the other an [NES imitation](http://www.amazon.com/gp/product/B002YVD3KM/ref=as_li_ss_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B002YVD3KM&linkCode=as2&tag=thbloftowe-20). The NES one I bought was fine, although a little flimsy. The SNES controller had a DPAD issue with the construction, I had to take it apart and move around the DPAD internals to get everything lined up correctly.

I am going to do a more thorough series of posts about the actual commands and setup later, but for now, I'll just give you a little bit of insight. HDMI sound isn't enabled by default, but you can fix this [pretty easily](http://www.raspberrypi.org/phpBB3/viewtopic.php?p=136939). Autologin is done with the `raspi-config` command, a wonderful menu-driven way to configure and update your Raspberry Pi. To exit the emulator, I read about a [way to make](http://www.raspberrypi.org/phpBB3/viewtopic.php?p=250689#p250689) [this happen easily](http://forum.themaister.net/viewtopic.php?pid=1065#p1065). It involves holding one button and pressing another to get back to the main menu. I did have trouble getting this to work in `DGEN`, the Genesis emulator, but I know this issue has gotten more visibility lately, so hopefully a fix is on the way.

My contribution to this whole project is cloud backups. You can configure `emulationstation` to throw all of your save games in a single directory, so I decided to combine this with [RackSpace Cloud Files](http://www.rackspace.com/cloud/files/) for automatic backups every 4 hours (via a cronjob). You will need to install duplicity, python-cloudfiles, and python for this to work:

{% gist 5028756 %}

Like I said before, I am planning an entire series related to created your own GameStation, but if you feel like getting started right now, hopefully this gives you a bit to go on. The system isn't perfect, by any means, but it is a decent start to a cheap emulation system.