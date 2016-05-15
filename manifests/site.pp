node ‘puppet*' {
  include puppetdb
  include puppetdb::master::config
}

node default {}
