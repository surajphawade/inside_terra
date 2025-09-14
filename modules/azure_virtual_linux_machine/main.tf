

resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pip.id
    subnet_id                     = data.azurerm_subnet.subnet.id
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.rg_name
  location            = var.location
  size                = "Standard_B1s"
  admin_username      = var.admin_username #data.azurerm_key_vault_secret.admin_name.value
  admin_password      = var.admin_password #data.azurerm_key_vault_secret.admin_password.value
  disable_password_authentication = false
  network_interface_ids = [azurerm_network_interface.nic.id,]

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
custom_data = base64encode(<<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "Hello from Terraform Nginx VM" > /var/www/html/index.html
          EOF
  )
}