output "vm_ids" {
  value = "${list(azurerm_virtual_machine.vm.*.id)}"
}