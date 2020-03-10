#!/bin/bash
sudo apt-get update -y
sudo apt-get install ntp -y
sudo wget https://apt.puppet.com/puppet-release-xenial.deb
sudo dpkg -i puppet-release-xenial.deb
sudo apt-get install puppet -y

#PUPPET_CONF="/etc/puppet/puppet.conf"
#cat > $PUPPET_CONF <<EOF
#[main]
#logdir=/var/log/puppet
#vardir=/var/lib/puppet
#ssldir=/var/lib/puppet/ssl
#rundir=/run/puppet
#factpath=$vardir/lib/facter
#prerun_command=/etc/puppet/etckeeper-commit-pre
#postrun_command=/etc/puppet/etckeeper-commit-post
#
##[master]
## These are needed when the puppetmaster is run by passenger
## and can safely be removed if webrick is used.
##ssl_client_header = SSL_CLIENT_S_DN 
##ssl_client_verify_header = SSL_CLIENT_VERIFY
#
#[agent]
#server=ec2-184-72-142-124.compute-1.amazonaws.com" >> /etc/puppet/puppet.conf
#EOF




