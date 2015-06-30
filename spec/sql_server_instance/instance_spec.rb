require 'spec_helper'

describe 'minimal::instance' do 
  
  let(:chef_run) do 
    runner = ChefSpec::SoloRunner.new(step_into: ['sql_server_instance'])
    runner.converge(described_recipe)
  end
  
  context 'when compiling the test recipe' do
    it 'creates the "new" sql server instance' do
      expect(chef_run).to create_sql_server_instance('new')
    end
  end
end

describe 'sql_server::default' do 
  
  let(:chef_run) do 
    runner = ChefSpec::SoloRunner.new(step_into: ['sql_server_instance'])
    runner.converge(described_recipe)
  end
  
  context 'when compiling the test recipe' do
    it 'creates the "new" sql server instance' do
      expect(chef_run).to create_sql_server_instance('new')
    end
    it 'creates a directory for the ConfigurationFile.ini' do
      expect(chef_run).to create_directory('c:/sql').with(path: 'c:/sql')
    end
  end
end