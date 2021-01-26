class cni {
  $install_path = '/opt/cni/bin'

  $stat = {
    owner => 'root',
    group => 'root',
    mode  => '0755',
  }

  ensure_resources('file', {
      '/opt/cni'    => $stat + { ensure => directory },
      $install_path => $stat + { ensure => directory },
  })
}
