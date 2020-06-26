
resource "azurerm_subnet" "sb"  { 
  count = "${length(var.address_prefixes)}" 
  name  = "${var.name}-subnet-${count.index}"
  resource_group_name = "${var.resource_group_name}"
  virtual_network_name = "${var.virtual_network_name}"
  address_prefix = "${element(var.address_prefixes,count.index)}"
}



