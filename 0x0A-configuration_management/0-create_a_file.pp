# A Puppet manifest that creates a file 'school' in '/tmp'
# The file 'School' has permissions 0744, file belongs to the user and group
# www-data

file { '/tmp/school':
ensure  => 'file',
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
}

