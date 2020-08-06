# Configure Nginx whit puppet

# sudo apt-get update y sudo apt-get -y install nginx
package { 'nginx':
  ensure => installed,
  name   => 'nginx'
}

# echo "Holberton School" > /var/www/html/index.html
file { '/var/www/html/index.html':
  ensure  => present,
  path    => '/var/www/html/index.html',
  content => 'Holberton School'
}

# REDIRECT="/listen 80 default_server/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;"
# sudo sed -i "$REDIRECT" /etc/nginx/sites-available/default
file_line { 'redirect':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

# sudo service nginx restart
service { 'nginx':
  ensure     => running,
  require    => Package['nginx'],
  hasrestart => true
}
