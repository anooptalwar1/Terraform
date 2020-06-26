variable name { 
   default = "terraform"
   description = "Name of the virtual network"
}

variable location {
  default = "Canada Central"
  description = "Geographic location of the virtual network"
} 

variable network_address_space {
  default = "10.0.0.0/16"
  description = "Address space for the virtual networks"
}

variable resource_group_name {
  description = "Resource group name"
}