output "database_migration_services" {
  description = "All database_migration_service resources"
  value       = azurerm_database_migration_service.database_migration_services
}
output "database_migration_services_location" {
  description = "List of location values across all database_migration_services"
  value       = [for k, v in azurerm_database_migration_service.database_migration_services : v.location]
}
output "database_migration_services_name" {
  description = "List of name values across all database_migration_services"
  value       = [for k, v in azurerm_database_migration_service.database_migration_services : v.name]
}
output "database_migration_services_resource_group_name" {
  description = "List of resource_group_name values across all database_migration_services"
  value       = [for k, v in azurerm_database_migration_service.database_migration_services : v.resource_group_name]
}
output "database_migration_services_sku_name" {
  description = "List of sku_name values across all database_migration_services"
  value       = [for k, v in azurerm_database_migration_service.database_migration_services : v.sku_name]
}
output "database_migration_services_subnet_id" {
  description = "List of subnet_id values across all database_migration_services"
  value       = [for k, v in azurerm_database_migration_service.database_migration_services : v.subnet_id]
}
output "database_migration_services_tags" {
  description = "List of tags values across all database_migration_services"
  value       = [for k, v in azurerm_database_migration_service.database_migration_services : v.tags]
}

