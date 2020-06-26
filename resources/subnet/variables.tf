variable name { 
   default = "terraform"
   description = "Name of the virtual network"
}

variable address_prefixes {
  default = [ "10.0.0.0/24" ] 
  description = "List of CIDRs for the subnets."
}

variable resource_group_name {
  default = ""
  description = "Resource group name"
}

variable virtual_network_name {
  default = ""
  description = "Virtual network name"
}