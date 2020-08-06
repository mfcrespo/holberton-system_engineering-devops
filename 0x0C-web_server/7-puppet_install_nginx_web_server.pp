# Configure Nginx whit puppet

# sudo apt-get update y sudo apt-get -y install nginx
package { 'nginx':
  ensure => installed,
  name   => 'nginx',
}

# echo "Holberton School" > /var/www/html/index.html
file { 'path_to_file':
  content => 'Holberton School',
  path    => '/var/www/html/index.html'
}

# REDIRECT="/listen 80 default_server/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;"
# sudo sed -i "$REDIRECT" /etc/nginx/sites-available/default
file_line { 'redirect':
  ensure   => present,
  path     => '/etc/nginx/sites-available/default',
  after    => 'server_name _;',
  line     => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  multiple => true
}

# sudo service nginx restart
service { 'restart_server':
  ensure  => running,
  restart
}