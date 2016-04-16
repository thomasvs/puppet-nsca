class nsca::client::config {
  File {
    # on a default RHEL install these files are root:root, not nsca
    owner => 'root',
    group => 'root',
  }

  file { '/etc/nagios/send_nsca.cfg':
    ensure  => present,
    source  => 'puppet:///modules/nsca/client/send_nsca.cfg',
    require => Class['nsca::client::install'],
  }
}
