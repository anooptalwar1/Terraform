variable "location" {
  type = string
}

variable "name" {
  type = string
}

variable network_address_space {
  type = list
}

variable subnet_address_prefixes { 
	type = list
	default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
}

variable control_count {
  type = number
  default = 1
}

variable datacenter {
  type = string
}

variable admin_username {
  type = string
}

variable admin_password {
  type = string
}

variable "environment" {
  type = string
}

variable "db_name" {
  type = string
  default = "mydatabase"
}

variable "sql_admin_username" {
  type = string
  default = "azureuser"
}

variable "sql_password" {
  type = string
  default = "P@ssw0rd12345!"
}

variable "start_ip_address" {
  type = string
  default = "0.0.0.0"
}

variable "end_ip_address" {
  type = string
  default = "255.255.255.255"
}

variable "workspacename" {
  type = string
  description = "(Required) Log Analytics workspace name"
}


variable "remote_port" {
  description = "Protocols to be used for remote vm access. [protocol, backend_port].  Frontend port will be automatically generated starting at 50000 and in the output."
  default     = {}
}

variable "lb_port" {
  description = "Protocols to be used for lb health probes and rules. [frontend_port, protocol, backend_port]"
  default     = {}
}