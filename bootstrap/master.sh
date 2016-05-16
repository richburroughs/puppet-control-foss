#!/bin/bash

PATH="/opt/puppetlabs/bin:$PATH"

yum update -y
yum install -y git
yum install -y puppetserver
systemctl start puppetserver
systemctl enable puppetserver

puppet module install zack-r10k
puppet apply -e "class { 'r10k': remote => 'https://github.com/richburroughs/puppet-control-foss' }"
r10k deploy environment production -pv

puppet agent -t

puppet resource package puppet-client-tools ensure=latest
