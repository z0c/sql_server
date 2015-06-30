require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class SqlServerInstance < Chef::Resource::LWRPBase
      self.resource_name = :sql_server_service
      actions :create
      default_action :create
      provides :sql_server_service, os: 'windows'

      attribute :instance, kind_of: String, name_attribute: true
    end
  end
end