# File: nginx_config.pp

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Configure Nginx site
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  replace => true,
  content => "
server {
    listen 80;
    server_name _;

    location / {
        return 200 'Hello World!';
    }

    location /redirect_me {
        return 301 http://$host/;
    }
}
",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Remove default Nginx default configuration
file { '/etc/nginx/sites-enabled/default':
  ensure => absent,
}

# Reload Nginx to apply changes
exec { 'nginx_reload':
  command     => '/usr/sbin/service nginx reload',
  path        => '/usr/bin:/usr/sbin:/bin',
  refreshonly => true,
  subscribe   => File['/etc/nginx/sites-available/default'],
}

