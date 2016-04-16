class nsca::client::install {
  package { 'nsca-client':
    ensure => present
  }
}
