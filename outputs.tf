output "iothub_fallback_routes_id" {
  description = "Map of id values across all iothub_fallback_routes, keyed the same as var.iothub_fallback_routes"
  value       = { for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iothub_fallback_routes_condition" {
  description = "Map of condition values across all iothub_fallback_routes, keyed the same as var.iothub_fallback_routes"
  value       = { for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "iothub_fallback_routes_enabled" {
  description = "Map of enabled values across all iothub_fallback_routes, keyed the same as var.iothub_fallback_routes"
  value       = { for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : k => v.enabled if v.enabled != null }
}
output "iothub_fallback_routes_endpoint_names" {
  description = "Map of endpoint_names values across all iothub_fallback_routes, keyed the same as var.iothub_fallback_routes"
  value       = { for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : k => v.endpoint_names if v.endpoint_names != null && length(v.endpoint_names) > 0 }
}
output "iothub_fallback_routes_iothub_name" {
  description = "Map of iothub_name values across all iothub_fallback_routes, keyed the same as var.iothub_fallback_routes"
  value       = { for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : k => v.iothub_name if v.iothub_name != null && length(v.iothub_name) > 0 }
}
output "iothub_fallback_routes_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_fallback_routes, keyed the same as var.iothub_fallback_routes"
  value       = { for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "iothub_fallback_routes_source" {
  description = "Map of source values across all iothub_fallback_routes, keyed the same as var.iothub_fallback_routes"
  value       = { for k, v in azurerm_iothub_fallback_route.iothub_fallback_routes : k => v.source if v.source != null && length(v.source) > 0 }
}

