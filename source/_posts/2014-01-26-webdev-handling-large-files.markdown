---
layout: post
title: "WebDev: Handling Large Files"
date: 2014-01-26 15:00
comments: true
categories: News
---

With the release of my post on Vagrant, I discovered a personal need I had to host and store large files, semi-professionally, without much hassle. After considering Dropbox, various file lockers, or uploading the file to my webserver, I decided to use [Rackspace Cloud Files](http://www.rackspace.com/cloud/files/).

I've talked about Rackspace in the past, and am currently using their cloud servers to host this site (among others). The interface is clean, easy to use, and it's reliable. I wanted to have downloads from my site coming from `files.samurailink3.com`, it just looks better and provides a more cohesive user experience. I solved this problem very quickly by using a CNAME. It was really really easy. Check it out:

First, create a new public CDN container. Next, click on the gear and hit "View All Links...". Copy the http or https link and take a look at it: `http://somerandomjunk.ssl.cf2.rackcdn.com`

Head over to your domain host and go to your DNS settings. You'll need to create a new `CNAME` record. I've named mine `files`.

Take the fully qualified domain from your link, minus the `http://` and make that the target host of your new `CNAME`. Like this:

```
Type: CNAME
Host: files
Target Host: somerandomjunk.ssl.cf2.rackcdn.com
```

You can now upload files and head to `http://files.example.com/myfile.mp3` to access those huge files, without bogging down your web server.
