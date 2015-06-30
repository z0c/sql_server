describe 'sql_server_instance' {
  context ':create' {
    it 'installs an instance' {
      Get-Service 'MSSQL$new' | Should Not BeNullOrEmpty
    }
  }
}