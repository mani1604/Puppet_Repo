# Puppet_Repo


One role and one profile for the puppet run.

## Module NTP
Installs ntp and ensures it runs on reboot.
The ntp.conf is a template with all config options as variables in the params.pp file.
In the profile, there is hiera call to a grab a parameter which passes a variable into the module to override the ntp server in the params.pp file. 

## Module HTTPD
Installs httpd and ensures it runs on reboot.
The index.html is a template file that displays "Puppet is Great!".
