class cni::plugins::dhcp {
  include cni::plugins

  ensure_resources('cni::plugins::enable', { 'dhcp' => {} })

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
    ensure  => 'running',
    enable  => true,
    require => Class['systemd::systemctl::daemon_reload'],
  }
}
