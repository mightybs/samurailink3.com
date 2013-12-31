---
layout: post
title: "Ship It with Netcat"
date: 2013-12-31 14:24
comments: true
categories: News
---

Ever needed to get a file across the internet, but securely, without SSH? I know, crazy to think about. What if all you've got is some spare TCP ports and a Windows box with the full version of [Nmap](http://nmap.org/book/inst-windows.html) installed on it? It's a bit of a long shot, but I needed to do this the other day and didn't want to use file locker to move my data. There are better ways to solve this problem, and it's more of a parlor trick than anything else. In any case, it's easy to set up and very cool.

We're going to use a combination of `nc` (netcat), `gpg`, `lzma`, and `tar` to accomplish our goals. I'll explain what each part of the command does along the way.

### On the sending machine:

`tar c myproject/ | lzma | gpg -a -c --cipher-algo AES256 --digest-algo SHA512 -o - | nc -w 1 192.168.1.102 1337` 

* `tar c myproject/` - Create a tar file out of the `myproject` directory and feed the output into...
* `lzma` - This will compress the tar file (giving you a `.tar.lzma` file). Then feed that output into...
* `gpg -a -c --cipher-algo AES256 --digest-algo SHA512 -o -` - GPG, asking it to create an ASCII-Armor file, encrypted with a passphrase instead of a key (choose a good passphrase here). We then specify the encryption cipher (as AES256) and the digest algorithm (as SHA512). Then, pipe that output to `stdout`, which is piped into...
* `nc -w 1 192.168.1.102 1337` - We tell netcat to wait `1` second, then make a connection to `192.168.1.102` on port `1337`. Now... we need a receiving machine before this command will work, so let's take a look at how to set that up.

### On the receiving machine:

`nc -lp 1337 | gpg -v -o - | lzcat | tar x -C ~/`

* `nc -lp 1337` - This tells the receiving machine to listen for a TCP connection on port `1337` then...
* `gpg -v -o -` - Any data that is received on port 1337 is fed into GPG, verification information is shown, then GPG will prompt you for the password you set. The decrypted data is then fed into....
* `lzcat` - Which will decompress any lzma data fed into it, the pipe the output to...
* `tar x -C ~/` - Which will then extract the data into your home directory `~/`.

Feel free to change any of the variables to suite your particular need. File transfer can be done in better/more efficient ways, but if you're in a bind, this can work in a pinch.


