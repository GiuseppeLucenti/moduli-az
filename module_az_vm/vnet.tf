resource "azurerm_virtual_network" "vnet_test_1" {
  depends_on          = [azurerm_resource_group.RG_test_1]
  name                = var.vnet_test_1_name
  address_space       = [var.vnet_test_1_address_prefix]
  location            = azurerm_resource_group.RG_test_1.location
  resource_group_name = azurerm_resource_group.RG_test_1.name

  tags = {
    ResourcesOwner = var.tag_resources_owner
    Project        = var.tag_project
  }
}

resource "azurerm_subnet" "subnet_test_1" {
  depends_on           = [azurerm_virtual_network.vnet_test_1]
  name                 = var.subnet_test_1_name
  resource_group_name  = azurerm_resource_group.RG_test_1.name
  virtual_network_name = azurerm_virtual_network.vnet_test_1.name
  address_prefixes     = [var.subnet_test_1_address_prefix]
}