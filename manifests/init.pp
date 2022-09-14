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
class bookkeeper(
  $service_enable        = $::bookkeeper::params::service_enable,
  $service_ensure        = $::bookkeeper::params::service_ensure,
  $service_manage        = $::bookkeeper::params::service_manage,
  $service_name          = $::bookkeeper::params::service_name,
  $config_name           = $::bookkeeper::params::config_name,
  $log_dir               = $::bookkeeper::params::log_dir,
  $logger                = $::bookkeeper::params::logger,
  $bookkeeper_extra_opts = undef
  ) inherits bookkeeper::params {

  contain 'bookkeeper::package'
  contain 'bookkeeper::logging'
  contain 'bookkeeper::service'

}
