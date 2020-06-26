
resource "azurerm_virtual_network" "vn" {
  name                = "${var.name}-network"
  resource_group_name = "${var.resource_group_name}"
  address_space       = "${var.network_address_space}"
  location            = "${var.location}"
}



