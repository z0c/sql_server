if defined?(ChefSpec)
  ChefSpec.define_matcher :sql_server_instance
 
  def create_sql_server_instance(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:sql_server_instance, :create, resource)
  end
 
  def enable_sql_server_instance(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:sql_server_instance, :enable, resource)
  end
 
  def delete_sql_server_instance(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:sql_server_instance, :delete, resource)
  end
 
end