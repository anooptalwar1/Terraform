resource "azurerm_resource_group" "rg" {
    name     = "${var.name}-resourcegroup"
    location = "${var.location}"
}

