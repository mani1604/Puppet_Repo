class profile::prof (
  $ntpserver = hiera('ntp::params::ntpserver'),
)
{
  include ntp
  include httpd
}
