
resource "azurerm_redis_cache" "redis" {
  name                = "${var.name}-cache"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  capacity            = "${var.capacity}"
  family              = "${lookup(var.family, var.tier)}"
  sku_name            = "${var.tier}"
  enable_non_ssl_port = "${var.non_ssl_port}"
  minimum_tls_version = "1.2"

  redis_configuration {}
}
