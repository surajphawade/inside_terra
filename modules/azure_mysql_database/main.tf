resource "azurerm_mssql_database" "msdb" {
  name         = var.msdb_name
  server_id    = azurerm_mysql_server.sqlserver.id
  collation    = var.collation
  #license_type = "LicenseIncluded" 
}

data "azurerm_mysql_server" "sqlserver" {
  name                = var.sqlserver_name
  resource_group_name = var.rg_name
}