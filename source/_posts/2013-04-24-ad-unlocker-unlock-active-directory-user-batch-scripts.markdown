---
layout: post
title: "AD Unlocker: Unlock Active Directory User Batch Scripts"
date: 2013-04-24 12:52
comments: true
categories: [Code]
---

In a typical day at work, I run into a lot of locked user accounts, mostly because of mistyped passwords or misbehaving applications, and using ADUC (Active Directory Users and Computers) was getting to be a hassle. ADUC is a very powerful tool, but often it takes a long time to get started, and if the network conditions are less-than-ideal, you can run into major issues with lag and commands not completing. I needed a better way.

**Scripting!** The savior of us all. I decided to write two versions of this script, one that operates with PowerShell (and Active Directory module), and one that does not. The PowerShell version is much easier to use, as you only need your own admin account details and the other person's username. If you use the PowerShell-less version, you will need the full User Distinguished Name, which most of us don't have laying around. Use whichever you feel most comfortable with, and if you think they can be improved, please, [be my guest](https://gist.github.com/samurailink3/5453543).

Here are the two files:

`AD Unlocker - No PowerShell Needed`
{% gist 5453543 unlock.bat %}

`AD Unlocker - Easier to Use`
{% gist 5453543 unlock-ps.bat %}
