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
class bookkeeper::package (
  $package_ensure = $bookkeeper::params::package_ensure,
  $package_name   = $bookkeeper::params::package_name,
) inherits bookkeeper {

  package { $package_name :
    ensure => $package_ensure,
  }

}
