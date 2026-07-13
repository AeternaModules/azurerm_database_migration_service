variable "database_migration_services" {
  description = <<EOT
Map of database_migration_services, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
    - subnet_id
Optional:
    - tags
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    subnet_id           = string
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_migration_services : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.database_migration_services : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.database_migration_services : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.database_migration_services : (
        contains(["Premium_4vCores", "Standard_1vCores", "Standard_2vCores", "Standard_4vCores"], v.sku_name)
      )
    ])
    error_message = "must be one of: Premium_4vCores, Standard_1vCores, Standard_2vCores, Standard_4vCores"
  }
  validation {
    condition = alltrue([
      for k, v in var.database_migration_services : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

