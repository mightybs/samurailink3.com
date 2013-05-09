---
layout: post
title: "Virtual Web Server: Part 5 - PHP and MySQL Setup"
date: 2013-05-02 16:15
comments: true
categories: [Tutorials]
---

Next on our list, we need to get PHP and MySQL set up if we're ever going to host something like WordPress or Drupal. Let's get everything installed with `apt-get install php5 mysql-server`. During the setup, you will need to set a password for the root user of the MySQL server. Make sure to set something long, complicated, and different than your shell password, you don't want your entire server compromised if someone figures out your MySQL password.

Now, restart Apache with `service apache2 restart` so we can start using PHP.

Next, navigate to where you put the example file last time, remove your old example file (it should be `index.html`), and make `index.php` with these contents:

```
<?php
phpinfo();
?>
```

Now, head over to your site and take a look, you should see something similar to this:

[{% img ../../../../../images/2013-05-02-virtual-web-server-part-5-php-and-mysql-setup-1.png %}](../../../../../images/2013-05-02-virtual-web-server-part-5-php-and-mysql-setup-1-full.png)

If you see that, you're done here. Next, we'll set up FTP accounts, then get WordPress running.

**Other posts in this series:**

1. [Getting a Server](/blog/2013/04/23/virtual-web-server-part-1-rackspace/)
2. [Getting a Domain Name](/blog/2013/04/23/virtual-web-server-part-2-hover/)
3. [Automatic Updates](/blog/2013/04/23/virtual-web-server-part-3-automatic-updates-in-debian/)
4. [Apache2 Setup](/blog/2013/04/28/virtual-web-server-part-4-apache-web-server/)
5. PHP and MySQL Setup _- You are here_
6. ProFTPd Setup
7. WordPress Setup
8. RVM Setup
9. Git Setup
10. OctoPress Setup
11. Rackspace Backups

