class ntp::install (
  $ntpserver = $::profile::prof::ntpserver,
) inherits ntp::params
{

  package { 'ntp':
    ensure => 'present',
  }

  service { 'ntpd':
    ensure => 'running',
    enable => 'true',
    require => Package['ntp'],
  }

  file { '/etc/ntp.conf':
    ensure => 'file',
    mode => '0644',
    owner   => '0',
    group   => '0',
    content => template('ntp/ntp.conf.erb'),
    require => Package['ntp'],
    notify => Service['ntpd'],
  }

}