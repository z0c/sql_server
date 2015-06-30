if defined?(ChefSpec)
  def create_sql_server_instance(resource_name)
    ChefSpec::Matchers::Resource_NameMatcher.new(:sql_server_instance, :create, resource_name)
  end

  def enable_sql_server_instance(resource_name)
    ChefSpec::Matchers::Resource_NameMatcher.new(:sql_server_instance, :enable, resource_name)
  end

  def delete_sql_server_instance(resource_name)
    ChefSpec::Matchers::Resource_NameMatcher.new(:sql_server_instance, :delete, resource_name)
  end
end
