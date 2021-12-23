# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include node_exporter::install
class node_exporter::install {
  package { "${node_exporter::install_name}":
    ensure => $node_exporter::install_ensure,
  }
}
