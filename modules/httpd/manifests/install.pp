class httpd::install {

  package { 'httpd':
    ensure => 'present',
  }

  service { 'httpd':
    ensure => 'running',
    enable => 'true',
    require => Package['httpd'],
  }

  file { '/var/www/html/index.html':
    ensure => 'file',
    mode => '0644',
    source => 'puppet:///modules/httpd/index.html',
    require => Package['httpd'],
    notify => Service['httpd']
  }

}

