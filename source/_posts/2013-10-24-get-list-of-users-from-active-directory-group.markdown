---
layout: post
title: "Get List of Users from Active Directory Group"
date: 2013-10-24 09:10
comments: true
categories: News
---

If you've ever needed to export a list of users from an Active Directory group, you've probably discovered that it isn't entirely straight forward. The secret to generating and exporting a list are a few command line tools, `dsquery` and `dsget`. Below, you'll see an example of a group export. The output is fixed-width, so use Excel to break up the data into a managable format.

You'll only need to change `CN=Group Name,OU=Groups,DC=Example,DC=com` to fit your domain and group. If you'd like to control what fields are exported from dsget, check out [this list of parameters](http://technet.microsoft.com/en-us/library/cc732535.aspx) for `dsget` on technet.

{% gist 7136822 %}

