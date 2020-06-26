
resource "azurerm_network_interface" "ni" {
    count = "${var.control_count}"
    name = "${var.vm_name}-ni-${format(var.count_format, var.count_offset + count.index + 1)}"
    location = "${var.location}"
    resource_group_name = "${var.resource_group_name}"

    #network_security_group_id = "${var.network_security_group_id}"

    ip_configuration {
        name = "${var.vm_name}-ni-${format(var.count_format, var.count_offset + count.index + 1) }"
        subnet_id = "${var.subnet_ids[count.index]}"
        private_ip_address_allocation = "${var.private_ip_address_allocation}"
        #private_ip_address = "${var.private_ip_addresses[count.index]}" #can't be zero yet
        public_ip_address_id = "${var.public_ip_address_ids[count.index]}"
    }
}

resource "azurerm_storage_container" "osdisk" {
    count = "${var.control_count}"
    name = "${var.vm_name}${var.os_disk_name}${format(var.count_format, var.count_offset + count.index + 1)}"
    storage_account_name = "${var.storage_account_name}"
    container_access_type = "private"
}

resource "azurerm_virtual_machine" "vm" {
    count = "${var.control_count}"
    name = "${var.vm_name}-${format(var.count_format, var.count_offset + count.index + 1)}"
    location = "${var.location}"
    resource_group_name = "${var.resource_group_name}"
    network_interface_ids = ["${element(azurerm_network_interface.ni.*.id, count.index)}"]
    vm_size = "${var.vm_size}"

    storage_image_reference {
        publisher = "${var.image_publisher}"
        offer = "${var.image_offer}"
        sku = "${var.image_sku}"
        version = "${var.image_version}"
    }

    storage_os_disk {
        name = "${var.vm_name}-${var.os_disk_name}-${format(var.count_format, var.count_offset + count.index + 1)}"
        vhd_uri = "${var.storage_primary_blob_endpoint}${element(azurerm_storage_container.osdisk.*.name, count.index)}/${var.os_disk_name}.vhd"
        caching = "ReadWrite"
        create_option = "FromImage"
    }

    os_profile {
        computer_name = "${var.vm_name}-${format(var.count_format, var.count_offset+count.index+1)}"
        admin_username = "${var.admin_username}"
        admin_password = "${var.admin_password}"
    }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/${var.admin_username}/.ssh/authorized_keys"
      key_data = "${file("${var.ssh_key}")}"
    }
  }
}



