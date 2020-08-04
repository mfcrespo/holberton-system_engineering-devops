# set up your client SSH configuration file
file_line { 'use the private key':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   =>  'IdentityFile ~/.ssh/holberton',
}

file_line { 'without password':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => 'PasswordAuthentication'
}
