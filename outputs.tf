output "database_migration_services_location" {
  description = "Map of location values across all database_migration_services, keyed the same as var.database_migration_services"
  value       = { for k, v in azurerm_database_migration_service.database_migration_services : k => v.location }
}
output "database_migration_services_name" {
  description = "Map of name values across all database_migration_services, keyed the same as var.database_migration_services"
  value       = { for k, v in azurerm_database_migration_service.database_migration_services : k => v.name }
}
output "database_migration_services_resource_group_name" {
  description = "Map of resource_group_name values across all database_migration_services, keyed the same as var.database_migration_services"
  value       = { for k, v in azurerm_database_migration_service.database_migration_services : k => v.resource_group_name }
}
output "database_migration_services_sku_name" {
  description = "Map of sku_name values across all database_migration_services, keyed the same as var.database_migration_services"
  value       = { for k, v in azurerm_database_migration_service.database_migration_services : k => v.sku_name }
}
output "database_migration_services_subnet_id" {
  description = "Map of subnet_id values across all database_migration_services, keyed the same as var.database_migration_services"
  value       = { for k, v in azurerm_database_migration_service.database_migration_services : k => v.subnet_id }
}
output "database_migration_services_tags" {
  description = "Map of tags values across all database_migration_services, keyed the same as var.database_migration_services"
  value       = { for k, v in azurerm_database_migration_service.database_migration_services : k => v.tags }
}

