
resource "azurerm_public_ip" "pi" {
  count = var.control_count
  location = var.location
  name  = "${var.name}-public-ip-${format(var.count_format, var.count_offset + count.index + 1)}"
  resource_group_name = "${var.resource_group_name}"
  allocation_method   = var.environment == "production" ? "Static" : "Dynamic"
}

