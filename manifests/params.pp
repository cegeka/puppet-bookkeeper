# Class: bookkeeper::params
#
# This is a private class and should not be called directly
#
class bookkeeper::params (
  $service_enable = true,
  $service_ensure = 'running',
  $service_manage = true,
  $service_name = 'bookkeeper',
  $package_ensure = 'present',
  $package_name = 'apache-bookkeeper',
  $config_name = '/etc/bookkeeper/bk_server.conf',
  $log_dir = '/var/log/bookkeeper',
  $logger = 'CONSOLE,ROLLINGFILE',

) {
  $bookeeper_version_number = Integer(regsubst($::profile::iac::bookkeeper::package_ensure , "[.]","","G"))

  if $bookeeper_version_number >= 4162 {
    $logger_file = 'log4j2.xml'
    $logger_env  = 'BOOKIE_ROOT_LOG_APPENDER=ROLLINGFILE'
  } else {
    $logger_file = 'log4j.properties'
    $logger_env  = 'BOOKIE_ROOT_LOGGER=CONSOLE,ROLLINGFILE'
  }

}
