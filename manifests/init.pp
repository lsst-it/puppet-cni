#
# @summary Installs Container Network Interface software
#
# @param base_path
#   Base path under which to install software.
#
class cni (
  Stdlib::Absolutepath $base_path = '/opt/cni',
) {
  $bin_path     = "${base_path}/bin"
  $plugins_path = "${base_path}/plugins"
  $dl_path      = "${plugins_path}/dl"

  $stat = {
    owner => 'root',
    group => 'root',
    mode  => '0755',
  }

  ensure_resources('file', {
      $base_path    => $stat + { ensure => directory },
      $bin_path     => $stat + { ensure => directory },
      $plugins_path => $stat + { ensure => directory, purge => true },
      $dl_path      => $stat + { ensure => directory },
  })
}
