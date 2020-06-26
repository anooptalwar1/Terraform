variable resource_group_name {
  description = "Resource group name"
}

variable location {
   default = "Central US"
   description = "Geographic location"
}

variable account_name {
  description = "Storage account name. Must be unique across Azure." 
}

variable account_type {
  default = "Standard_LRS"
  description = "Storage acount type (i.e.,  Standard_LRS, Standard_ZRS, Standard_GRS, Standard_RAGRS, Premium_LRS)"
}
