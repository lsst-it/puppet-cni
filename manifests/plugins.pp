#
# @summary Install CNI reference plugins
#
# @param version
#   CNI plugins release version
#
# @param checksum
#   Release tarball checksum string
#
# @param checksum_type
#   The digest algorithm used for the checksum string.
#
# @See `puppet/archive` for the list of supported checksum types.
#
class cni::plugins (
  String $version       = '0.8.5',
  String $checksum      = 'bd682ffcf701e8f83283cdff7281aad0c83b02a56084d6e601216210732833f9',
  String $checksum_type = 'sha256',
  Optional[Array[String]] $enable = undef,
) {
  require cni
  # the parse order is significant for $install_path... it must be evaluated after ::cni but
  # before ::cni::plugins::install
  $install_path = "${cni::plugins_path}/${version}"
  contain cni::plugins::install

  if $enable {
    $enable.each |String $p| {
      ensure_resources('cni::plugins::enable', { $p => {} })
    }
  }
}
