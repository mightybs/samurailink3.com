---
layout: post
title: "Chrome OS Bootable Flash Drive! (Built on: 3/28/2011)"
date: 2011-03-29 08:59
comments: true
categories: [Chrome OS, Google]
---

[{% img center ../../../../../images/2011-08-15-chrome-os-bootable-flash-drive-built-on-8-slash-9-slash-2011-1.png %}](../../../../../images/2011-08-15-chrome-os-bootable-flash-drive-built-on-8-slash-9-slash-2011-1-full.png)

Well, here it is again! Another build, this one a week later. I've heard some reports that the Chrome Web Apps weren't working quite perfectly on some machines, that's the risk when you're running daily-builds of an operating system. This is freshly built as of yesterday, and I've update the instructions to include how to create a bootable Chrome OS flash drive in both Linux and Mac OSX. As usual, the Windows instructions are still there as always. After the jump, I'll include a copy/paste of the Instructions.txt file for your convenience. Have fun and let me know what you think!

[New Version Here]()

Credits and Utilities:

To unpack this file, you will need the totally awesome and free unzipping utility: [7zip](http://www.7-zip.org/)

This pack contains the [Image Writer for Microsoft Windows](https://launchpad.net/win32-image-writer), which is a great, simple way to take or place images onto drives. Give these guys a hand!

Instructions: (These are included in the download, as well)

```
To create a bootable USB drive:

WARNING!
DANGER!
READ THIS!
======================================
THIS WILL WIPE YOUR ENTIRE FLASH DRIVE
======================================

1. Open the image writer program.
2. Click the blue folder, select the usb_chromiumos_image*version info here*.img
3. Select the USB drive you would like to make bootable.
4. Click the 'Write' Button


To install Chromium OS on your main drive:

WARNING!
DANGER!
READ THIS!
=====================================
THIS WILL WIPE YOUR ENTIRE HARD DRIVE
=====================================

1. Boot from your USB device.
2. CTRL+ALT+F2
3. Login as Username: chronos Password: password
4. Run '/usr/sbin/chromeos-install'

==============================================
How to create a bootable drive using OSX/Linux
==============================================

DISCLAIMER!!
Be very very very careful with the dd command. This is a block device writer, it CAN AND WILL DESTROY ALL OF YOUR DATA IF USED INCORRECTLY.
CHOOSE THE RIGHT DEVICE TO WRITE TO!!!!

1. Open up a terminal
2. Use the command 'df'
3. At the very right of the table that is shown, you will see your mountpoint.
4. Try to recognize where your flash drive is mounted
5. For example, my flash drive is mounted at /media/flashdrive, to the left, I see the device as /dev/sdb1 (or on OSX, something like this: /dev/disk2s1)
6. You can also use the command like this 'df -h', this will show you the space total/used/free in human-readable values (8GB) instead of byte count, you should be able to recognize your drive on space alone.
7. READ THE DISCLAIMER ABOVE THIS SECTION. Be careful. PLEASE! You can and will overwrite your main OS disk (or any other attached device) if you are not 100% sure you have the correct drive. Keep this in mind when using terminal commands.
8. Use the command 'dd' to copy the raw image to your flash drive, here is how the command breaks down: dd if=/users/username/pathtoyour/imagefile.img of=/dev/disk2
9. Remember, you need to write the image to the full device, not just a partition. So if your 'flash drive' is /dev/sdb1, you want to use '/dev/sdb' in the 'dd' command. Likewise on OSX, if your drive is '/dev/disk2s1' you want to use '/dev/disk2' alone, without the partition modifier.
10. Most likely, you will need to use 'sudo' to invoke the dd command, depending on your setup.
11. You may need to unmount your flash drive to avoid a 'Resource Busy' error message.

These are daily builds, they have not been well tested for quality. Be careful and have fun. If you run into bugs, report them to the ChromiumOS bug tracker: http://groups.google.com/group/chromium-os-bugs?pli=1
```