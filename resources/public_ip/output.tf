output "ids" {
  value = "${azurerm_public_ip.pi.*.id}"
  #value = [ "${azurerm_public_ip.pi.*.id}" ]
}

output "ip_addresses" {
  value = [ "${azurerm_public_ip.pi.*.ip_address}" ]
}
