
resource "azurerm_virtual_network" "myvn" {
  for_each = var.vnet 
  name                = each.value.name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  
  
    
  }

# output "virtualnetwork" {
#   value = azurerm_virtual_network.myvn
  
# }