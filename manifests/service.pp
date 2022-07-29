# Class: bookkeeper::service
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
class bookkeeper::service (
  $service_enable = $::bookkeeper::params::service_enable,
  $service_ensure = $::bookkeeper::params::service_ensure,
  $service_manage = $::bookkeeper::params::service_manage,
  $service_name   = $::bookkeeper::params::service_name,
) inherits bookkeeper {
  if !($service_ensure in ['running', 'stopped']) {
    fail('service_ensure parameter must be running or stopped')
  }

  if $service_manage == true {
    file { '/etc/sysconfig/bookkeeper':
      ensure  => file,
      content => template('bookkeeper/bookkeeper.sysconfig.erb')
    }

    service { $service_name:
      ensure     => $service_ensure,
      enable     => $service_enable,
      name       => $service_name,
      hasstatus  => true,
      hasrestart => true,
    }
  }

}
