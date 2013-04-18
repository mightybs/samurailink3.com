---
layout: post
title: "Server-Bits #10: Subversion"
date: 2011-01-17 12:42
comments: true
categories: [Tutorials]
---

Subversion! One of the best ways to keep track of versions for code, homework, various essays, you name it. If it changes and you want the ability to roll back changes, Subversion is for you. In reality, Subversion is one of **many** types of versioning software out there, but its the one we are going to cover in this tutorial. If you're really interested in the alternatives, Google around for: Git, Mercurial, among many other smaller projects.

Why would anyone want to set up a software repository? Easy answer if you're a programmer of any sort. I'm a hobbyist programmer, and I constantly break my own code and projects when trying new things. I wanted an easy way to roll back any changes that I had made, while still retaining a history of some sort. I initially did this by copying different versions of the code into different folders, but this proved to be unmanageable in the long run. At the time, I was using 6 different computers to write my code, depending on which location I was in during that day. Manually copying this folder to a USB stick, then re-syncing the changes became a **major** hassle. Subversion allows you to create a repository in a folder and commit changes to it. Want to update a particular machine with the latest version of the code? Easy, subversion has an update feature that only pulls down the changes of the file since you last synced. Easy stuff, and I'll show you how to build your own subversion repository.



The very first thing you need to do is install subversion.

`sudo apt-get install subversion`

Yea, that easy.

Second thing, choose a place where your code will live. This shouldn't be your working directory at all, as you don't really directly interact with the subversion repository. I've made a directory inside my home directory called "SVN", and that's where all my projects live. The project I'm working on is called "Hax", so I'll create the Hax repository.

`svnadmin create hax`

Now I have a directory called 'hax' on my system.  If you browse to that directory and look around, it appears a little strange. That's because subversion creates a database system of sorts to manage, store, and compress your code. Again, you will not be interacting directly with this folder. You will write code elsewhere and commit (upload) the code to the repository.

Next, you need a username and password to be able to checkout (download) and commit code. Navigate to `your repository/conf`. So, in my example, I'd navigate to `hax/conf/`. Use a text editor to edit the `passwd` file. The default file should show you how to enter users. I'll go ahead and create my username and password:

`tom = password`

**NOTE:** Since this file contains all of the usernames and passwords to access your repository, make sure only you have access. You don't want people commiting code as you.
Now, I have a user, `tom`, and his password is `password`.

The next file you have to edit is: `repository/conf/svnserve.conf`
Scroll down until you reach the part of the file that lists:

```
#anon-access = read
#auth-access = write
```

You want to change this to say:

```
anon-acces = none
auth-access = write
```

One last line to change, find the line:

`#passwoord-db = password`

And change it to:

`password-db = password`

The first changes you made told subversion that no one should have anonymous access to your code, and authenticated users should have write access to the repository. The second change you made is to let subversion know that we will indeed be using that password file to store users and passwords.

Now you have successfully configured your subversion repository. The next thing we need to do is get your server publishing your repository so you can access it from anywhere. The command for this is `svnserve`. You can use `man svnserve` to see all of the options. The easiest way to get your SVN server up and running is:

`svnserve -d -r /home/username/path-to-repo`

The `-d` option sets svnserve into Daemon mode, so it will accept TCP connections automatically.
The `-r` option sets the path you gave as the root of the SVN server.

If you want, you can make one directory to house all of your projects. This way, you can commit code to `server.com/project1` and `server.com/project2`, all by running one instance of `svnserve`. Experiment to figure out which works best for you. For myself, I have one directory act as the root for svnserve, then all of my projects are then organized by category.

Now... This is how you use subversion to checkout and commit code:

To checkout your code:

`svn co svn://hostname.server.com/project1`

To add things to be committed:

`svn add filename.txt`

To delete a file (and delete it from the commit):

`svn rm filename.txt`

To commit your code to the repository:

`svn commit -m "Comment your changes!!"`

Now, a few lessons you need to take away from this:

1. You must manually add files to be committed. Just committing code won't do anything unless you tell subversion that a file must be included in the commit. You only have to do this once per new file, after that, subversion remembers that this file is to be included in the commit.
2. Likewise, if you would like to remove a file and have the repository reflect those changes, you must tell subversion that you are removing the file. Just deleting the file will leave it intact in the repository.
3. When you use the commit function, **please** use the `-m` flag. This will allow you to comment your changes, this is important because if you ever want to roll back to a previous version, you can look through the svn log and see exactly when you made a particular change. To view this log, use the command `svn log` when you are in your repository.
Now you have a basic understanding of subversion and how to set up your server to be a versioning repository. Have fun and happy coding!

If you want to pull your code into Windows to work on it, commit, and other SVN goodies, use the open source [TortoiseSVN](http://tortoisesvn.tigris.org/), it gives you access to all of the SVN power on your right-click menu. Enjoy!

_About Server-Bits:_

If you've ever wanted to get started building a server, right in your own backyard/kitchen/closet/mother's closet/mother's basement, then this is the read for you. Aimed at the not-so-technical-but-willing-to-learn, this will give you everything you need to build that monster-server you've dreamed of. **My goal: To give you a working server, for free, that you can use daily.**