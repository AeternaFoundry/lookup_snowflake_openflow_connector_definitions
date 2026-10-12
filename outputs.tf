output "openflow_connector_definitions_lookup_id" {
  description = "Map of id values across all openflow_connector_definitions_lookup, keyed the same as var.openflow_connector_definitions_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_openflow_connector_definitions.openflow_connector_definitions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "openflow_connector_definitions_lookup_like" {
  description = "Map of like values across all openflow_connector_definitions_lookup, keyed the same as var.openflow_connector_definitions_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_openflow_connector_definitions.openflow_connector_definitions_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "openflow_connector_definitions_lookup_limit" {
  description = "Map of limit values across all openflow_connector_definitions_lookup, keyed the same as var.openflow_connector_definitions_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_openflow_connector_definitions.openflow_connector_definitions_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "openflow_connector_definitions_lookup_openflow_connector_definitions" {
  description = "Map of openflow_connector_definitions values across all openflow_connector_definitions_lookup, keyed the same as var.openflow_connector_definitions_lookup except keys with no openflow_connector_definitions are omitted"
  value       = { for k, v in data.snowflake_openflow_connector_definitions.openflow_connector_definitions_lookup : k => v.openflow_connector_definitions if v.openflow_connector_definitions != null && length(v.openflow_connector_definitions) > 0 }
}

