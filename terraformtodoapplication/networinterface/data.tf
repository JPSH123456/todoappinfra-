# data "azurerm_subnet" "newsubnet" {
#   for_each             = var.nics
#   name                 = each.value.subnet_name
#   virtual_network_name = "vn1"
#   resource_group_name  = each.value.resource_group_name
# }

# # data "azurerm_public_ip" "newpublic" {
# #   for_each = var.nics
# #   name                = each.value.public_ip_address_name
# #   resource_group_name = each.value.resource_group_name
# # }
