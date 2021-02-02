# Class: bookkeeper
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
define bookkeeper::config (
  $ensure = present,
  $parameter = $title,
  $value = undef
){

  include bookkeeper::params

  augeas { "bk_config_${parameter}":
    incl    => $::bookkeeper::params::config_name,
    lens    => 'Simplevars.lns',
    context => "/files${::bookkeeper::params::config_name}",
    changes => [
      "set ${parameter} '${value}'"
    ],
    require => Package[$::bookkeeper::params::package_name],
    notify  => Service[$::bookkeeper::params::service_name]
  }

}
