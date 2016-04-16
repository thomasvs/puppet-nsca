class nsca::server::config {
  File {
    # on a default RHEL install these files are root:root, not nsca
    owner => 'root',
    group => 'root',
    mode => 0640,
  }

  file { '/etc/nagios/nsca.cfg':
    ensure  => present,
    source  => 'puppet:///modules/nsca/server/nsca.cfg',
    require => Class['nsca::server::install'],
    notify  => Class['nsca::server::service'],
  }
}
