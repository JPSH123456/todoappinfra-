resource "azurerm_linux_virtual_machine" "vm" {
  for_each            = var.vms
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = "username"
  admin_password      = "Jaiprakash@793"
  # admin_password    = data.azurerm_key_vault_secret.mypassword.value 
  disable_password_authentication = false

   # network_interface_ids = [data.azurerm_network_interface.vminterface[each.key].id]
   network_interface_ids = each.value.network_interface_ids

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}

# output "azurerm_linux_virtual_machine" {
#   value = azurerm_linux_virtual_machine.vm.id
  
# }
