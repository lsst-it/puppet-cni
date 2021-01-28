class cni::plugins (
  String $version       = '0.8.5',
  String $checksum      = 'bd682ffcf701e8f83283cdff7281aad0c83b02a56084d6e601216210732833f9',
  String $checksum_type = 'sha256',
) {
  require cni
  contain cni::plugins::install
}
