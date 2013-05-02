---
layout: post
title: "Virtual Web Server: Part 2 - Hover"
date: 2013-04-23 17:19
comments: true
categories: [Tutorials]
---

There is a small caveat to virtual hosting: You will need a domain name, and here's why:

Apache, Nginx, and other popular pieces of webserver software are capable of hosting multiple websites from one IP address. Its what allows hosting companies to serve multiple websites off of one IP address. Without this technology, if sites required a dedicated IP address, the internet would have quickly run out of room for websites, especially on IPv4. What the webserver software does is look at the domain requested in the http request. Based on this data, the web server is able to route you to the appropriate place. So, in essence **the rest will not work well without a domain name**. You can host a single site by IP address, but this is expensive and fairly wasteful, depending on the amount of traffic you're expecting. Do youself a favor, spend some cash, get a hostname (or three!).

You can buy a domain for a specific period of time from a [Domain Registrar](http://en.wikipedia.org/wiki/Domain_name_registrar), of which, there are several. Tons. A whole truckload of them. My personal recommendation is [Hover](https://www.hover.com/). Hover is a different type of domain registrar, they have a very clean interface, buying is easy, canceling is one click, and they don't bug you to upgrade or buy fancy add-ons. Hover respects their customers, [unlike some registrars](http://www.godaddy.com). A .com will run you $15 a year, but you can use this coupon code to take 10% off the final price: `twig`. I would like to thank [This Week In Google](http://twit.tv/twig) for the promo code (and if you don't watch, you really should.

Now that you have a domain name, we have to start configuring our server, then move on to Apache configuration. The expensive part is over with, now we're onto the time-consuming part.

**Other posts in this series:**

1. [Getting a Server](../../../../2013/04/23/virtual-web-server-part-1-rackspace/)
2. Getting a Domain Name _- You are here_
3. [Automatic Updates](../../../../2013/04/23/virtual-web-server-part-3-automatic-updates-in-debian/)
4. [Apache2 Setup](../../../../2013/04/28/virtual-web-server-part-4-apache-web-server/)
5. [PHP and MySQL Setup](../../../../2013/05/02/virtual-web-server-part-5-php-and-mysql-setup/)
6. ProFTPd Setup
7. WordPress Setup
8. RVM Setup
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups
