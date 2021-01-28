class cni::plugins (
  String $version       = '0.8.5',
  String $checksum      = 'bd682ffcf701e8f83283cdff7281aad0c83b02a56084d6e601216210732833f9',
  String $checksum_type = 'sha256',
  Optional[Array[String]] $enable = undef,
) {
  require cni
  # the parse order is signifigant for $install_path... it must be evaluated after ::cni but
  # before ::cni::plugins::install
  $install_path = "${cni::plugins_path}/${version}"
  contain cni::plugins::install

  if $enable {
    $enable.each |String $p| {
      cni::plugins::enable { $p: }
    }
  }
}
