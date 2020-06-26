variable "resource_group_name" {
  description = "(Required) Resource group name"
}

variable "location" {
  description = "(Required) Location of the resources"
}

variable "name" {
  description = "(Required) Log Analytics workspace name"
}

variable "workspacename" {
  type = string
  description = "(Required) Log Analytics workspace name"
}