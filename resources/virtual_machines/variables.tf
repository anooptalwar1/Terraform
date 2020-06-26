variable name { 
   default = "terraform"
   description = "Name of the virtual network"
}


variable location {
  default = "Canada Central"
  description = "Geographic location of the virtual network"
} 

variable role {
  default = ""
  description = "Set role tag "
}


variable datacenter {
  default = ""
  description = "Set datacenter tag"
}

variable control_count {
  default = 1 
  description = "Number of VMs to provision." 
}

variable count_offset { 
   default = 0 
   description = "Start server numbering from this value. If you set it to 100, servers will be numbered -101, 102,..."
} 

variable count_format { 
   default = "%02d" 
   description = "Server numbering format (-01, -02, etc.) in printf format"
} 

variable subnet_ids {
  default = []
  description = "Subnets for the network interface"
}

variable private_ip_address_allocation {
  default = "dynamic"
  description = "IP assignment for the network interface. Can be static or dynamic: if using static please set private_ip_address"
}

variable private_ip_addresses {
  default = [""]
  description = "Rrivate IP address for the network interface. Required if private_ip_address_allocation is static"
}

variable public_ip_addresses {
  default = [""]
  description = "Optional Public IP addresses assigned to the network interface"
}

variable public_ip_address_ids {
  default = [""]
  description = "Optional Public IP address id to assign to the network interface"
}

variable resource_group_name {
  description = "Resource group name"
}

variable network_security_group_id {
  default = ""
  description = "Optional network security group id to attach to instance"
}

variable vm_name {
  default = "vm"
  description = "Name of the Virtual Machine" 
}

variable vm_size {
  default = "Standard_A1"
  description = "Size of the VM"
}

# Storage account to use
variable storage_account_name {
  description = "Azure storage account to use to store OS disk images"
}

variable storage_primary_blob_endpoint {
  description = "Azure storage blob endpoint to use to store OS disk images"
}

variable image_publisher {
  default = "openlogic"
  description = "OS Image publisher"
}

variable image_offer {
  default = "Ubuntu"
  description = "OS Image offer"
}

variable image_sku {
  default = "7.2"
  description = "OS Image sku"
}

variable image_version {
   default = "latest"
   description = "OS Image version"
}

variable admin_username {
  default = "root"
  description = "Admin account"
}

variable admin_password {
   description = "Admin account password (required)"
}

variable os_disk_name {
   default = "osdisk"
   description = "Base name of the OS disk"
}

variable "ssh_key" {
  description = "Path to the public key to be used for ssh access to the VM.  Only used with non-Windows vms and can be left as-is even if using Windows vms. If specifying a path to a certification on a Windows machine to provision a linux vm use the / in the path versus backslash. e.g. c:/home/id_rsa.pub"
  default     = "~/.ssh/id_rsa.pub"
}