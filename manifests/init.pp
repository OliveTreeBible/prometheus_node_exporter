# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include node_exporter
class node_exporter (
  String  $install_name,
  String  $install_ensure,
  String  $service_name,
  Enum['running', 'stopped'] $service_ensure, 
  Boolean $service_enable 
) {
  contain node_exporter::install
  contain node_exporter::service
  
  Class['::node_exporter::install']
  ~> Class['::node_exporter::service']
}
