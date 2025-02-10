resource "azurerm_network_interface" "nic_test_1" {
  depends_on          = [azurerm_subnet.subnet_test_1]
  name                = var.nic_test_1_name
  location            = azurerm_resource_group.RG_test_1.location
  resource_group_name = azurerm_resource_group.RG_test_1.name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = azurerm_subnet.subnet_test_1.id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id          = var.public_ip_address_id
  }

  tags = {
    ResourcesOwner = var.tag_resources_owner
    Project        = var.tag_project
  }
}

resource "azurerm_virtual_machine" "vdi_001_test" {
  depends_on            = [azurerm_network_interface.nic_test_1, azurerm_key_vault.key_vault_test_1]
  name                  = var.vdi_001_test_name
  location              = azurerm_resource_group.RG_test_1.location
  resource_group_name   = azurerm_resource_group.RG_test_1.name
  network_interface_ids = [azurerm_network_interface.nic_test_1.id]
  vm_size               = var.vdi_001_test_size

  storage_os_disk {
    name              = var.storage_os_disk_name
    caching           = var.storage_os_disk_caching
    create_option     = var.storage_os_disk_create_option
    managed_disk_type = var.storage_os_disk_managed_disk_type
  }

  storage_image_reference {
    publisher = var.storage_image_reference_publisher
    offer     = var.storage_image_reference_offer
    sku       = var.storage_image_reference_sku
    version   = var.storage_image_reference_version
  }

  os_profile {
    computer_name  = var.vdi_001_test_hostname
    admin_username = azurerm_key_vault_secret.vdi-001-test-ks-user.value
    admin_password = azurerm_key_vault_secret.vdi-001-test-ks-pwd.value
  }

  tags = {
    ResourcesOwner = var.tag_resources_owner
    Project        = var.tag_project
  }
}