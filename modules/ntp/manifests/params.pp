class ntp::params {

  $ntpserver = 'default.example.com'
  $dfile = '/var/lib/ntp/drift'
  $ifile = '/etc/ntp/crypto/pw'
  $kfile = '/etc/ntp/keys'
  $restricts = ["default nomodify notrap nopeer noquery", "127.0.0.1", "::1"]
}