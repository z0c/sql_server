require 'chef/provider/lwrp_base'
require 'chef/mixin/shell_out'

class Chef
  class Provider
    class SqlServerInstance < Chef::Provider::LWRPBase
      # Chef 11 LWRP DSL Methods

      # include Chef::Mixin::ShellOut
      use_inline_resources if defined?(use_inline_resources)

      # def whyrun_supported?
      #  false
      # end

      action :create do
        directory 'c:/sql'

        template 'c:/sql/ConfigurationFile.ini' do
          cookbook 'sql_server'
          source 'ConfigurationFile.ini.erb'
          variables instance_name: new_resource.name
        end

        directory 'c:/updates'

        install_cmd = 'd:\setup.exe /ConfigurationFile=ConfigurationFile.ini /IAcceptSqlServerLicenseTerms'
        shell_out!(install_cmd, cwd: 'c:\sql')
      end
    end
  end
end
