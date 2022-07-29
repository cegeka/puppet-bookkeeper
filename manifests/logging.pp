# Class: bookkeeper::logging
#
# This module manages bookkeeper
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class bookkeeper::logging (
  $log_dir = $bookkeeper::log_dir,
) inherits bookkeeper {

  file { $log_dir :
    ensure => directory,
    owner  => 'bookkeeper',
    group  => 'bookkeeper'
  }

  file { "${log_dir}/bookkeeper-cli.log":
    ensure => present,
    mode   => '0644'
  }

  file { "${log_dir}/bookkeeper-server.log":
    ensure => present,
    mode   => '0644',
    owner  => 'bookkeeper',
    group  => 'bookkeeper'
  }

}
