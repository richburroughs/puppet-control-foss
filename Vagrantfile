# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure(2) do |config|

  config.vm.box = "puppetlabs/centos-7.2-64-nocm"
  config.vm.hostname = "puppet.example.com"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end
  
  config.vm.provision "shell", path: "bootstrap/agent.sh"
  config.vm.provision "shell", path: "bootstrap/master.sh"
end
