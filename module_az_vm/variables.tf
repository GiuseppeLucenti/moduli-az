variable "RG_test_1_name" {
  description = "The name of the resource group"
  type        = string
}

variable "RG_test_1_location" {
  description = "The location of the resource group"
  type        = string
}

##########################################################  VNET

variable "vnet_test_1_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_test_1_address_prefix" {
  description = "The address prefix for the virtual network"
  type        = string
}

variable "subnet_test_1_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_test_1_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
}
##########################################################  VM

variable "nic_test_1_name" {
  description = "The name of the network interface"
  type        = string
}

variable "ip_configuration_name" {
  description = "The name of the ip configuration"
  type        = string
}

variable "private_ip_address_allocation" {
  description = "The ip of the private ip address allocation"
  type        = string
}

variable "public_ip_address_id" {
  description = "The ip of the public ip address id"
  type        = string
}

variable "vdi_001_test_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "vdi_001_test_hostname" {
  description = "The hostname of the virtual machine"
  type        = string
}

variable "vdi_001_test_size" {
  description = "The size of the virtual machine"
  type        = string
}




variable "storage_os_disk_name" {
  description = "The name of the storage os disk"
  type        = string
}

variable "storage_os_disk_caching" {
  description = "The caching of the storage os disk"
  type        = string
}

variable "storage_os_disk_create_option" {
  description = "The create option of the storage os disk"
  type        = string
}

variable "storage_os_disk_managed_disk_type" {
  description = "The managed disk type of the storage os disk"
  type        = string
}

variable "storage_image_reference_publisher" {
  description = "The pubblisher of the torage image reference"
  type        = string
}

variable "storage_image_reference_offer" {
  description = "The offer of the torage image reference"
  type        = string
}

variable "storage_image_reference_sku" {
  description = "The sku of the torage image reference"
  type        = string
}

variable "storage_image_reference_version" {
  description = "The version of the torage image reference"
  type        = string
}



variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

##########################################################  KEY VAULT

variable "key_vault_test_1_name" {
  description = "The name of the key vault"
  type        = string
}

variable "key_vault_test_1_skuname" {
  description = "The sku name of the key vault"
  type        = string
}

variable "secret_permissions" {
  description = "The secret permissions of the key vault"
  type        = list(string)
}

variable "storage_permissions" {
  description = "The storage permissions of the key vault"
  type        = list(string)
}

variable "vdi-001-test-ks-user-name" {
  description = "The name of the vdi 001 test ks user"
  type        = string
}

variable "vdi-001-test-ks-pwd-name" {
  description = "The name of the vdi 001 test ks pwd"
  type        = string
}

variable "random_pwd_length" {
  description = "The length of the random pwd"
  type        = number
}

variable "random_pwd_special" {
  description = "The length of the random pwd"
  type        = bool
}

variable "random_pwd_override_special" {
  description = "The length of the random pwd"
  type        = string
}

##########################################################  TAGS

variable "tag_resources_owner" {
  description = "The resources owner"
  type        = string
}

variable "tag_project" {
  description = "The project"
  type        = string
}
