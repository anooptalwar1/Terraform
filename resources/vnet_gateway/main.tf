resource "azurerm_virtual_network_gateway" "gw" {
  name                = "${var.name}-vpngw"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  
  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = var.active_active
  enable_bgp    = var.enable_bgp
  sku           = var.sku

  ip_configuration {
    name                          = "${var.name}-gw-config"
    public_ip_address_id          = "${var.public_ip_address_ids[0]}"
    private_ip_address_allocation = "${var.private_ip_address_allocation}"
    subnet_id                     = "${var.subnet_ids[0]}"
  }

  dynamic "ip_configuration" {
    for_each = var.active_active ? [true] : []
    content {
      name                          = "${var.name}-gw-aa-config"
      public_ip_address_id          = "${var.public_ip_address_ids[count.index]}"
      private_ip_address_allocation = "${var.private_ip_address_allocation}"
      subnet_id                     = "${var.subnet_ids[count.index]}"
    }
  }

  dynamic "vpn_client_configuration" {
    for_each = var.client_configuration != null ? [var.client_configuration] : []
    iterator = vpn
    content {
      address_space = [vpn.value.address_space]

      root_certificate {
        name = "VPN-Certificate"

        public_cert_data = vpn.value.certificate
      }

      vpn_client_protocols = vpn.value.protocols
    }
  }

  # TODO Buggy... keep want to change this attribute
  lifecycle {
    ignore_changes = [vpn_client_configuration[0].root_certificate]
  }

  tags = var.tags
}