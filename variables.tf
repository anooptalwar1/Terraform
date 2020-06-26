variable "location" {
  type = string
}

variable "name" {
  type = string
}

# VM variables
variable network_address_space {
  type = list
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
  type = list
}


# Log Analytics
variable "workspacename" {
  type = string
  description = "(Required) Log Analytics workspace name"
}
