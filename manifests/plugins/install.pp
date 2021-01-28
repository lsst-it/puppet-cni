class cni::plugins::install {
  assert_private()

  include archive

  $version       = $cni::plugins::version
  $checksum      = $cni::plugins::checksum
  $checksum_type = $cni::plugins::checksum_type
  $install_path  = $cni::plugins::install_path

  $uname        = 'linux'
  $arch         = 'amd64'
  $base_url     = "https://github.com/containernetworking/plugins/releases/download/v${version}"
  $slug         = "cni-plugins-${uname}-${arch}-v${version}"
  $archive_file = "${slug}.tgz"
  $source       = "${base_url}/${archive_file}"

  file { $install_path:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  archive { $archive_file:
    ensure          => present,
    checksum        => $checksum,
    checksum_type   => $checksum_type,
    cleanup         => false,
    creates         => "${install_path}/macvlan",
    # --mode is needed as release tarballs seem to chmod the root dir differently, which
    # causes the puppet code to be non-idempotent
    extract_command => "tar -xf %s -C ${install_path} --strip-components=1 --mode 0755",
    extract_path    => $install_path,
    extract         => true,
    path            => "${cni::dl_path}/${archive_file}",
    source          => $source,
    require         => File[$install_path],
  }
}
