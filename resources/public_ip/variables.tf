variable name {
  default = "terraform"
  description = "Base name of the public-ip"
}

variable control_count {
  default = 1
  description = "Number of Public Ips to create"
}

variable count_offset {
   default = 0
   description = "Start Interface numbering from this value. If you set it to 100, servers will be numbered -101, 102,..."
}

variable count_format {
   default = "%02d"
   description = "Server numbering format (-01, -02, etc.) in printf format"
}

variable resource_group_name {
  default = ""
  description = "Resource group name"
}

variable location {
  default = "Canada Central"
  description = "Azure location for the public IP"
}

variable public_ip_address_allocation {
  default = "static"
  description = "Is IP addres static or dynamic"
}

variable "environment" {
  type = string
}