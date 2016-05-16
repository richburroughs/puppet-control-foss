# puppet-control-foss
Control repo for setting up a FOSS Puppet 4 master with PuppetDB on RedHat or
CentOS 7.

There's a Vagrantfile included. If you'd like to provision a Puppet master
with Vagrant, run:

```
vagrant up
```

If you'd like to use this repo on another VM or cloud provider do:

```
git clone https://github.com/richburroughs/puppet-control-foss
cd puppet-control-foss
./bootstrap/agent.sh
./bootstrap/master.sh
```

To Do:

Add agent nodes to Vagrantfile
DNS or hosts
Improve bootstrapping
Change to roles/profiles for classification
