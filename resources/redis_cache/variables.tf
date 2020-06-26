variable name { 
   default = "terraform"
   description = "Name of the virtual network"
}

variable "resource_group_name" {
  description = "Default resource group name that the database will be created in."
  default     = "webapp-rg"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
}

variable "tier" {
  description = "Redis tier setting Basic, Standard or Premium"
  default     = "Basic"
}

variable "family" {
  type        = "map"
  description = "Redis tier family.  "

  default = {
    	Basic    = "C"
    	Standard = "C"
        Premium  = "P"
    }
}

variable "capacity" {
  description = "Size of redis cache to deploy"
  default     = 1 
}

variable "non_ssl_port" {
  description = "Enable non SSL port of redis"
  default     = "false"
}