---
layout: post
title: "Fixing Wrong Authors in Git"
date: 2013-04-19 05:04
comments: true
categories: [Tutorials]
---

Ever accidentally made a commit... or a few commits... or a lot of commits with the wrong author or name set? Now you've pushed the branch to [GitHub](https://github.com/) and all the pictures are screwed up? Yea... me too.. I do that quite a bit. Luckily, I found the most noob-friendly way to fix it, thanks to [this post on Stack Overflow](http://stackoverflow.com/questions/750172/how-do-i-change-the-author-of-a-commit-in-git/8434756#8434756).

**Just a warning up front**, this will require a forced-push, since you're altering history, it will break other people if they have forked your repository, just let them know you're fixing things and they'll need manual intervention to start re-tracking your branch again.

Look through your commit log with `git log` or, in the case of repositories where you're the main author and haven't merged too many pull requests, head over to your [GitHub commit listing](https://github.com/samurailink3/samurailink3.github.com/commits/source) and look for the pictures that don't match. Make a note of the commit IDs you need to fix up and sit it off to the side, like so:

```
Commits to fix:

fd481a0
53113e3
3a4a67f
```

Now, take a look at about how many commits you've made, then rebase a stupidly-high number of commits, like this: `git rebase HEAD~120`. Now you'll see a big list of commits and one-line messages. Search through and find the commits you need to fix. Under each *need-to-fix* commit, put this line `exec git commit --amend --author="New Author Name <email@address.com>" -C HEAD`, but change that line to your correct name and email address. It should look something like this:

```
pick 8388019 Resized favicon to 16x16
pick 243eab2 Added PGP key. Still need style.
pick 4a85014 Added two posts from blogger.
pick a55b911 added c9revisions to git ignore
pick fd481a0 Removed bad markdown file
exec git commit --amend --author="Tom Webster <samurailink3@gmail.com>" -C HEAD
pick da4fe69 Fixed mixed up posts.
pick df6f740 Ejectable core post, attempted iFrame embed.
pick a600981 Add link to reflect original post
pick 53113e3 Fix size of slideshow
exec git commit --amend --author="Tom Webster <samurailink3@gmail.com>" -C HEAD
pick 220497c Added TrueCrypt Tutorial historic post.
pick 3a4a67f Added two historical posts.
exec git commit --amend --author="Tom Webster <samurailink3@gmail.com>" -C HEAD
pick e2092ec Change date for historic post.
```

You will need to put that line under each wrong commit, as it only works on one at a time. This allows you to specify which commits you'd like to change and what changes you'd like to make, very powerful, very awesome. Save and exit, then git will run through each line, doing exactly what you told it to do, changing the author at each point you put that new `exec` line.

Next, check out your log again with `git log` and make sure you didn't miss anything. If it all looks good, go ahead and make a forced update with `git push -f origin branchnamehere` (make sure you use the right branch name, of course). Your remote branch will update with the corrected name and author strings.
