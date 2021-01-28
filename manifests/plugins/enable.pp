define cni::plugins::enable {
  include cni::plugins

  file { "${cni::bin_path}/${name}":
    ensure => link,
    target => "${cni::plugins::install_path}/${name}",
  }
}
