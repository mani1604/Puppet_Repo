class profile::prof (
  $ntpserver = hiera('ntpserver'),
)
{
  include ntp
  include httpd
}
