# == Class: bupper
#
# A basic module to manage bupper
#
# === Parameters
# [*version*]
#   Version to install (Default: 'present')
#
# [*enable*]
#   Should the service be enabled during boot time? (Default: true)
#
# [*start*]
#   Should the service be started by Puppet? (Default: true)
#
class bupper(
  $version = 'present',
  $enable = true,
  $start = true,
) {

  class { 'bupper::install': } ->
  class { 'bupper::config': } ~>
  class { 'bupper::service': } ->
  Class['bupper']

}
