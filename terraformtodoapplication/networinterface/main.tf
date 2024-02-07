resource "azurerm_network_interface" "example" {
  for_each            = var.nics
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name      = "internal"
    subnet_id = each.value.subnet_id
    # subnet_id                     = data.azurerm_subnet.newsubnet[each.key].id
     private_ip_address_allocation = "Dynamic"
    # public_ip_address_id = each.value.public_ip_address_id

  }
}

# output "subent" {
#   value =  azurerm_subnet.mysubnets.id

# }


# ip_configuration {
#     name                          = "internal"
#     subnet_id                     =  data.azurerm_subnet.newsubnet.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = each.value.public_ip_address_id

#     }

# }
