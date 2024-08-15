#
# @summary Enables the the cni-dhcp service
#
# Installs the cni-dhcp systemd service and enables it to start on boot.
#
# Explicit inclusion of this class is not necessary when using the
# cni::plugins::dhcp class.
#
# This class is intended to be included directly only when it is desirable to enable
# the cni-dhcp service without managing the installation of the cni plugin
# binaries.
#
class cni::plugins::dhcp::service {
  $epp_vars = {
    prog => "${cni::bin_path}/dhcp",
  }

  systemd::unit_file { 'cni-dhcp.socket':
    content => epp("${module_name}/dhcp/cni-dhcp.socket.epp"),
  }
  -> systemd::unit_file { 'cni-dhcp.service':
    content => epp("${module_name}/dhcp/cni-dhcp.service.epp", $epp_vars),
  }
  ~> service { 'cni-dhcp':
    ensure => 'running',
    enable => true,
  }
}
