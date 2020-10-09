# Using strace, find out why Apache is returning a 500 error.
# Once you find the issue, fix it and then automate it using Puppet
# (instead of using Bash as you were previously doing)
exec { 'rewrite phpp typo':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => 'sed -i -e "s/phpp/php/g" /var/www/html/wp-settings.php',
  provider => 'shell',
}
