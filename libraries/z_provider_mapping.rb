# provider mappings for Chef 11

##########
# instance
##########

Chef::Platform.set platform: :windows, resource: :sql_server_instance, provider: Chef::Provider::SqlServerInstance