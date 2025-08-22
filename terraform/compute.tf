resource "azurerm_linux_virtual_machine" "vm" {
  name                            = "example-vm"
  location                        = azurerm_resource_group.rg.location
  resource_group_name             = azurerm_resource_group.rg.name
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false
  
  user_data = base64encode(templatefile("${path.module}/scripts/startup.sh", {
    http_port = var.http_port
  }))

  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}
