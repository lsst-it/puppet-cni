class cni {
  $install_root = '/opt/cni'
  $bin_path     = "${install_root}/bin"
  $plugins_path = "${install_root}/plugins"
  $dl_path      = "${plugins_path}/dl"

  $stat = {
    owner => 'root',
    group => 'root',
    mode  => '0755',
  }

  ensure_resources('file', {
      $install_root => $stat + { ensure => directory },
      $bin_path     => $stat + { ensure => directory },
      $plugins_path => $stat + { ensure => directory },
      $dl_path      => $stat + { ensure => directory },
  })
}
