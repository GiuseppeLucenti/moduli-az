output "vnet_test_1_id" {
  description = "ID della Virtual Network"
  value       = azurerm_virtual_network.vnet_test_1.id
}

output "subnet_test_1_id" {
  description = "ID della Subnet"
  value       = azurerm_subnet.subnet_test_1.id
}

output "nic_test_1_id" {
  description = "ID della Network Interface"
  value       = azurerm_network_interface.nic_test_1.id
}

output "vdi_001_test_id" {
  description = "ID della Virtual Machine"
  value       = azurerm_virtual_machine.vdi_001_test.id
}

output "key_vault_test_1_id" {
  description = "ID del Key Vault"
  value       = azurerm_key_vault.key_vault_test_1.id
}

output "key_vault_test_1_secret_user" {
  description = "Secret User del Key Vault"
  value       = azurerm_key_vault_secret.vdi-001-test-ks-user.value
}

output "key_vault_test_1_secret_pwd" {
  description = "Secret Password del Key Vault"
  value       = azurerm_key_vault_secret.vdi-001-test-ks-pwd.value
}

output "resource_group_test_1_id" {
  description = "ID del Resource Group"
  value       = azurerm_resource_group.RG_test_1.id
}

output "key_vault_test_1_secret_user_value" {
  description = "Valore del Secret User del Key Vault"
  value       = azurerm_key_vault_secret.vdi-001-test-ks-user.value
}

output "key_vault_test_1_secret_pwd_value" {
  description = "Valore del Secret Password del Key Vault"
  value       = azurerm_key_vault_secret.vdi-001-test-ks-pwd.value
}