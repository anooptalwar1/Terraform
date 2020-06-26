output "id" {
  description = "Output the object ID"
  value      = azurerm_log_analytics_workspace.laworkspace.id
}

output "name" {
  description = "Output the object name"
  value      = azurerm_log_analytics_workspace.laworkspace.name
}

output "object" {
  sensitive = true
  description = "Output the full object"
  value      = azurerm_log_analytics_workspace.laworkspace
}