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
  $config_name = '/etc/bookkeeper/bk_server.conf'
) {

}
