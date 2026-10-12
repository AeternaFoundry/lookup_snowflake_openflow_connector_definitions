data "snowflake_openflow_connector_definitions" "openflow_connector_definitions_lookup" {
  for_each = var.openflow_connector_definitions_lookup

  like = each.value.like

  dynamic "limit" {
    for_each = each.value.limit != null ? [each.value.limit] : []
    content {
      from = limit.value.from
      rows = limit.value.rows
    }
  }
}

