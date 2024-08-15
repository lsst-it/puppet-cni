#
# @summary Install and enable the cni-dhcp service
#
class cni::plugins::dhcp {
  include cni::plugins
  include cni::plugins::dhcp::service

  ensure_resources('cni::plugins::enable', { 'dhcp' => {} })

  # restart the service if the installed binary changes
  Cni::Plugins::Enable['dhcp'] ~> Service['cni-dhcp']
}
