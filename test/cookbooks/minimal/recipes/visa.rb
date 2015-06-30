directory 'c:\sql'

cookbook_file 'c:\sql\ConfigurationFile.ini' do
  source 'ConfigurationFile.ini'
end

directory "c:\\MNTDATA1"

powershell_script 'Install SQL Server' do
  code <<-EOH
    cd c:\\sql
    & d:\\setup.exe /CONFIGURATIONFILE=ConfigurationFile.ini  /SQLSYSADMINACCOUNTS="Administrator" /INSTANCEID="isa2012R2" /INSTANCENAME="isa2012R2" /SQLSVCACCOUNT="NT AUTHORITY\\SYSTEM" /AGTSVCACCOUNT="NT AUTHORITY\\SYSTEM" /SAPWD="C0m91xP@M" /INSTANCEDIR="C:\\PROGRAM FILES\\Microsoft SQL Server" /INSTALLSQLDATADIR="c:\\MNTDATA1" /FEATURES="SQLENGINE,FULLTEXT,REPLICATION,CONN,IS,BC,SSMS,ADV_SSMS" /MEDIALAYOUT="Core"
  EOH
end