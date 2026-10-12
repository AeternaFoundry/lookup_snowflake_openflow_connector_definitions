variable "openflow_connector_definitions_lookup" {
  description = <<EOT
Map of openflow_connector_definitions_lookup, attributes below
Optional:
    - like
    - limit (block):
        - from (optional)
        - rows (required)
EOT

  type = map(object({
    like = optional(string)
    limit = optional(object({
      from = optional(string)
      rows = number
    }))
  }))
}

