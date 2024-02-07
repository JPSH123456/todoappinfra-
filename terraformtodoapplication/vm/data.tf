# data "azurerm_key_vault" "mykeyvault" {
#   name                = "jaiprakash7943456789"
#   resource_group_name = "firstrg"
# }

# data "azurerm_key_vault_secret" "myusername" {
#   name         = "username"
#   key_vault_id = data.azurerm_key_vault.mykeyvault.id
# }

# data "azurerm_key_vault_secret" "mypassword" {
#   name         = "password"
#   key_vault_id = data.azurerm_key_vault.mykeyvault.id
# }

# data "azurerm_network_interface" "vminterface" {
#   for_each = var.vms
#   name                = each.value.network_interface_name
#   resource_group_name = each.value.resource_group_name
# }



