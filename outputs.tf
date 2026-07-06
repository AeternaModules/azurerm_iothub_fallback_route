output "iothub_fallback_routes" {
  description = "All iothub_fallback_route resources"
  value       = azurerm_iothub_fallback_route.iothub_fallback_routes
}
output "iothub_fallback_routes_condition" {
  description = "List of condition values across all iothub_fallback_routes"
  value       = [for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : v.condition]
}
output "iothub_fallback_routes_enabled" {
  description = "List of enabled values across all iothub_fallback_routes"
  value       = [for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : v.enabled]
}
output "iothub_fallback_routes_endpoint_names" {
  description = "List of endpoint_names values across all iothub_fallback_routes"
  value       = [for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : v.endpoint_names]
}
output "iothub_fallback_routes_iothub_name" {
  description = "List of iothub_name values across all iothub_fallback_routes"
  value       = [for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : v.iothub_name]
}
output "iothub_fallback_routes_resource_group_name" {
  description = "List of resource_group_name values across all iothub_fallback_routes"
  value       = [for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : v.resource_group_name]
}
output "iothub_fallback_routes_source" {
  description = "List of source values across all iothub_fallback_routes"
  value       = [for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : v.source]
}

