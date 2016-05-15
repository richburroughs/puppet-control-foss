node /puppet*/ {
  include puppetdb
  include puppetdb::master::config
  class { 'r10k':
      remote => 'https://github.com/richburroughs/puppet-control-foss',
  }
}

node default {
}
