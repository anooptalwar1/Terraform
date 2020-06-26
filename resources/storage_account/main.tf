resource "random_string" "random" {
  length  = 10
  upper   = false
  special = false
  number  = false
}

resource "azurerm_storage_account" "sa" {
    name = "bootdiags${random_string.random.result}"
    resource_group_name = "${var.resource_group_name}"
    location = "${var.location}"
	  account_tier = "Standard"
    account_replication_type = "LRS"
}


