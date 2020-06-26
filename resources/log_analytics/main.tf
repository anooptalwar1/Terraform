resource "azurerm_log_analytics_workspace" "laworkspace" {
  name                = "${var.workspacename}-laworkspace"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  sku                 = "PerGB2018"
}

resource "azurerm_log_analytics_solution" "laci" {
  solution_name         = "ContainerInsights"
  location              = "${var.location}"
  resource_group_name   = "${var.resource_group_name}"
  workspace_resource_id = azurerm_log_analytics_workspace.laworkspace.id
  workspace_name        = azurerm_log_analytics_workspace.laworkspace.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/Containers"
  }
  }

resource "azurerm_log_analytics_solution" "lasecure" {
  solution_name         = "Security"
  location              = "${var.location}"
  resource_group_name   = "${var.resource_group_name}"
  workspace_resource_id = azurerm_log_analytics_workspace.laworkspace.id
  workspace_name        = azurerm_log_analytics_workspace.laworkspace.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/Security"
  }
  }
  