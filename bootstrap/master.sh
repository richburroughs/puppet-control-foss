#!/bin/bash

rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum install -y puppet-agent

yum install -y puppetserver
systemctl start puppetserver
systemctl enable puppetserver

puppet module install zack-r10k
puppet apply -e "class { 'r10k': remote => 'https://github.com/richburroughs/puppet-control-foss' }"
r10k deploy environment -pv

puppet agent -t
