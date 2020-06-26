variable "name" {
  description = "Name of virtual gateway."
}

variable "resource_group_name" {
  description = "Name of resource group to deploy resources in."
}

variable "location" {
  description = "The Azure Region in which to create resource."
}

variable subnet_ids {
  default = []
  description = "Subnets for the network interface"
}

variable private_ip_address_allocation {
  default = "dynamic"
  description = "IP assignment for the network interface. Can be static or dynamic: if using static please set private_ip_address"
}

variable public_ip_address_ids {
  default = [""]
  description = "Optional Public IP address id to assign to the network interface"
}

variable "enable_bgp" {
  description = "If true, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to false."
  type        = bool
  default     = false
}

variable "active_active" {
  description = "If true, an active-active Virtual Network Gateway will be created. An active-active gateway requires a HighPerformance or an UltraPerformance sku. If false, an active-standby gateway will be created. Defaults to false."
  type        = bool
  default     = false
}

variable "sku" {
  description = "Configuration of the size and capacity of the virtual network gateway."
}

variable "client_configuration" {
  description = "If set it will activate point-to-site configuration."
  type        = object({ address_space = string, protocols = list(string), certificate = string })
  default     = null
}

variable "local_networks" {
  description = "List of local virtual network connections to connect to gateway."
  type        = list(object({ name = string, gateway_address = string, address_space = list(string), shared_key = string, ipsec_policy = any }))
  default     = []
}


variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}