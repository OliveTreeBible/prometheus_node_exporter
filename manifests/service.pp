# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include node_exporter::service
class node_exporter::service {
  service { "${node_exporter::service_name}": 
    ensure => $node_exporter::service_ensure,
    enable => $node_exporter::service_enable,
  }
}
