#  let’s fix our stack so that we get to 0
exec { 'ulimit':
  command  => 'sed -i "s+15+2000+g" /etc/default/nginx',
  provider => shell,
}

exec { 'restartnginxservice':
  command  => 'service nginx restart',
  provider => shell,
  require  => Exec['ulimit'],
}
