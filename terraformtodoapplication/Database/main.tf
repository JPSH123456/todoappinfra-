resource "azurerm_sql_database" "databasesql" {
  for_each            = var.databases
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  server_name         = each.value.server_name

}
