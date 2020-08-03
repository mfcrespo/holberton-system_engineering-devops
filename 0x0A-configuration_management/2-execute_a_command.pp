# Using Puppet, create a manifest that kills a process named killmenow
exec { 'kill_file':
  path    => '/usr/bin/',
  command => 'pkill killmenow'
}
