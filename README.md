# puppet-control-foss
Control repo for setting up a FOSS Puppet 4 master with PuppetDB.

In manifests/site.pp there is a node definition for the Puppet master. Your node's hostname
should match that regex.

To bootstrap on CentOS 7:

Install PC1 Yum repo
```
sudo rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
```

Install Puppet agent
```
sudo yum install -y puppet-agent
```

Install puppetserver on master node. Set memory in /etc/sysconfig/puppetserver if needed (default is 2G)
```
sudo yum install -y puppetserver
sudo systemctl start puppetserver
sudo systemctl enable puppetserver
```

Setup and run r10k
```
sudo puppet module install zack-r10k
sudo puppet apply -e "class { 'r10k': remote => 'https://github.com/richburroughs/puppet-control-foss' }"
sudo r10k deploy environment -pv
```

Run Puppet agent on master
```
sudo puppet agent -t
```
To Do:

Automate bootstrapping
Change to roles/profiles for classification
