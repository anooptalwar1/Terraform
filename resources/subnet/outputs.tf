output "ids" {
  value = "${azurerm_subnet.sb.*.id}"
  #value = [ "${azurerm_subnet.sb.*.id}" ]
}