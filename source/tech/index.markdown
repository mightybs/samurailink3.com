---
layout: page
title: "Technical Information"
comments: false
sharing: false
footer: false
---

This site is built using a few different components, and I've had a few people ask about it, so I made this page.

# This site is open source, grab all of the code here:

[{% img center ../../../../../images/github.png %}](https://github.com/samurailink3/samurailink3.com/tree/source)

I also accept pull requests if you find something wrong with the site, such as typos, mis-information, broken links, etc.

## General Overview

First off, this site is generated using [_Octopress_](http://octopress.org/) (based on [_Jekyll_](https://github.com/mojombo/jekyll)), and hosted on my personal web server (via [Rackspace](http://www.rackspace.com/)). If you need free hosting, check out the excellent [GitHub Pages](http://pages.github.com/). The site was originally hosted there, but I needed subdomain support (and eventually SSL), which GitHub Pages does not support. This site does not use a database or true CMS, only flat, generated HTML/JS/CSS files, making it very portable, and very easy to host anywhere.

I chose [_Octopress_](http://octopress.org/) because I wanted my website to be portable. With technology changing more and more each day, I needed to know that my previous writings would remain preserved and under my control, in a format that I could continue to work with as the years went on. [_Markdown_](http://daringfireball.net/projects/markdown/) is easily converted to straight-up HTML, and it is very readable in its plaintext, unconverted form, making it an easy choice for my past, current, and future writings. Honestly, reading blog-posts in plain [_Markdown_](http://daringfireball.net/projects/markdown/) is pretty readable, much more so than tag-laden HTML.

Using [_Markdown_](http://daringfireball.net/projects/markdown/) is a thing of beauty. No site to manage from, no continuous internet connection needed, no rich-text formatting editor required. I can write a blog post in an email to myself, in a [Google Keep](https://drive.google.com/keep/) note, in a plain-text file in Dropbox that I made in Notepad, or in Vim while I'm SSH'd into my home computer. Plain text is the most basic of all file formats, and it is truly portable, so why not keep things simple?

[_Octopress_](http://octopress.org/) also brings the promise of portability. No databases to export, no strange file formats to mess with, no bullshit. If I wanted to host my blog in my [Dropbox Public Folder](https://www.dropbox.com/help/16/en) or [Google Drive with Public Sharing](https://support.google.com/drive/bin/answer.py?hl=en&answer=2494822), I could. The site boils down to raw HTML, generated using open-source and widely available programs and toolchains.

And because the site is only flat HTML, CSS, and JavaScript, I dodge 75% of the hacking attempts, just by getting rid of PHP and the backend database. Don't get me wrong, I love [WordPress](http://wordpress.org/) to pieces, but it gets really annoying having to manually update the damn thing every 4 days, and its the kind of risk I just don't need with my personal site. [WordPress](http://wordpress.org/) really is more powerful than I need.

This style of site isn't for everyone. I live in Git and Bash. I see the terminal on a daily basis, and I love working in the server backend. If you're a tech guy or someone interested in the points I made above, go for it. If you're a person who just wants a fire-and-forget blog, head over to [Blogger](http://www.blogger.com/start?hl=en), if you want a little more power, but aren't ready to commit to anything terminal-based, try out [WordPress](http://wordpress.org/). But if you're a tech guy who wants control, power, portability, and ease-of-deployment, [_Octopress_](http://octopress.org/) will be your best friend.

## Branch Conventions

* `source` - This branch is the working pre-Jekyll copy. This branch contains the [_Markdown_](http://daringfireball.net/projects/markdown/) files and other files used to generate the site. If you want a good look at the site internals, download this and pull it apart.
* `blogger` - This branch is only to store my [old Blogger export file](https://github.com/samurailink3/samurailink3.com/blob/blogger/blog-01-29-2013.xml). It is an old, out-of-date branch, and once I finish converting [my old site](http://samurailink3.blogspot.com/), it will be removed.

## Technology Used (Creating, Generating, Hosting)

* [_Markdown_](http://daringfireball.net/projects/markdown/) - This is an easy-to-read, easy-to-write plain text format.
* [_Jekyll_](https://github.com/mojombo/jekyll) - This is a Ruby on Rails static site generator that works with text files written in [_Markdown_](http://daringfireball.net/projects/markdown/)
* [_Octopress_](http://octopress.org/) - This is a set of expansions/plugins for [_Jekyll_](https://github.com/mojombo/jekyll) that make blogging easy again. Things like embedded code-highlighting, theming, and deployment are built right in. Octopress is the easiest way to made a [_Jekyll-Powered_](https://github.com/mojombo/jekyll) site.
* [_Greyshade_](https://github.com/shashankmehta/greyshade) - A really incredible, completely responsive [_Octopress_](http://octopress.org/) theme by [Shashank Mehta](http://shashankmehta.in/).
* [_GitHub Pages_](http://pages.github.com/) - This is free hosting, courtesy of [GitHub](https://github.com/). _(I did use this at one point, but have since moved to my own [Rackspace](http://www.rackspace.com/) server, as I needed subdomain support and eventually SSL.)_
* [_Cloud 9 IDE_](https://c9.io/) - Today, I do most of my coding on my [Chromebook](http://www.google.com/intl/en/chrome/devices/), so I need a place where I can code in the cloud. Cloud 9 does that for me. With their embedded terminal and Rails implementation, I can work in the cloud without any real issues.