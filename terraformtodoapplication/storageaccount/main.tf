resource "azurerm_resource_group" "resourcegp" {
  name     = "example-resources"
  location = "Central India"
}
resource "azurerm_storage_account" "storage" {
  name                     = "storageahahhj79323"
  resource_group_name      = azurerm_resource_group.resourcegp.name
  location                 = azurerm_resource_group.resourcegp.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
resource "azurerm_storage_container" "example" {
  name                  = "newcontainer2343"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}