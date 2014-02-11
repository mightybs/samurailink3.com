#!/usr/bin/env bash

echo "Switching to user Vagrant"
su - vagrant
echo "Installing RVM with Ruby 2.0 and setting defaults"
\curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3
source /etc/profile.d/rvm.sh
rvm --default use 1.9.3
echo "Moving into app directory..."
cd /vagrant
echo "Installing Gems"
bundle install
sudo adduser vagrant rvm
