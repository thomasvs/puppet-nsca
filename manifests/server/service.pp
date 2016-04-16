class nsca::server::service {

  service { 'nsca':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['nsca::server::config'],
  }
}
