resource "azurerm_key_vault" "key_vault_test_1" {
  depends_on          = [azurerm_resource_group.RG_test_1]
  name                = var.key_vault_test_1_name
  location            = azurerm_resource_group.RG_test_1.location
  resource_group_name = azurerm_resource_group.RG_test_1.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = var.key_vault_test_1_skuname

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = var.secret_permissions

    storage_permissions = var.storage_permissions
  }

  tags = {
    ResourcesOwner = var.tag_resources_owner
    Project        = var.tag_project
  }
}

resource "random_password" "key_vault_test_1_random_pwd" {
  length           = var.random_pwd_length
  special          = var.random_pwd_special
  override_special = var.random_pwd_override_special
}

resource "azurerm_key_vault_secret" "vdi-001-test-ks-user" {
  depends_on   = [azurerm_key_vault.key_vault_test_1]
  name         = var.vdi-001-test-ks-user-name
  value        = var.admin_username
  key_vault_id = azurerm_key_vault.key_vault_test_1.id

  tags = {
    ResourcesOwner = var.tag_resources_owner
    Project        = var.tag_project
  }
}

resource "azurerm_key_vault_secret" "vdi-001-test-ks-pwd" {
  depends_on   = [azurerm_key_vault.key_vault_test_1, random_password.key_vault_test_1_random_pwd]
  name         = var.vdi-001-test-ks-pwd-name
  value        = random_password.key_vault_test_1_random_pwd.result
  key_vault_id = azurerm_key_vault.key_vault_test_1.id

  tags = {
    ResourcesOwner = var.tag_resources_owner
    Project        = var.tag_project
  }
}