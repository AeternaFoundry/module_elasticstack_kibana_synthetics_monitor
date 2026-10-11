output "kibana_synthetics_monitors_id" {
  description = "Map of id values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_synthetics_monitors_alert" {
  description = "Map of alert values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no alert are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.alert if v.alert != null && length(v.alert) > 0 }
}
output "kibana_synthetics_monitors_browser" {
  description = "Map of browser values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no browser are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.browser if v.browser != null && length(v.browser) > 0 }
}
output "kibana_synthetics_monitors_enabled" {
  description = "Map of enabled values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.enabled if v.enabled != null }
}
output "kibana_synthetics_monitors_http" {
  description = "Map of http values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no http are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.http if v.http != null && length(v.http) > 0 }
}
output "kibana_synthetics_monitors_icmp" {
  description = "Map of icmp values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no icmp are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.icmp if v.icmp != null && length(v.icmp) > 0 }
}
output "kibana_synthetics_monitors_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_synthetics_monitors_labels" {
  description = "Map of labels values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no labels are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "kibana_synthetics_monitors_locations" {
  description = "Map of locations values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no locations are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.locations if v.locations != null && length(v.locations) > 0 }
}
output "kibana_synthetics_monitors_name" {
  description = "Map of name values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_synthetics_monitors_namespace" {
  description = "Map of namespace values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no namespace are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "kibana_synthetics_monitors_params" {
  description = "Map of params values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no params are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.params if v.params != null && length(v.params) > 0 }
}
output "kibana_synthetics_monitors_private_locations" {
  description = "Map of private_locations values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no private_locations are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.private_locations if v.private_locations != null && length(v.private_locations) > 0 }
}
output "kibana_synthetics_monitors_retest_on_failure" {
  description = "Map of retest_on_failure values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no retest_on_failure are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.retest_on_failure if v.retest_on_failure != null }
}
output "kibana_synthetics_monitors_schedule" {
  description = "Map of schedule values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no schedule are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.schedule if v.schedule != null }
}
output "kibana_synthetics_monitors_service_name" {
  description = "Map of service_name values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no service_name are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "kibana_synthetics_monitors_space_id" {
  description = "Map of space_id values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_synthetics_monitors_tags" {
  description = "Map of tags values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no tags are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kibana_synthetics_monitors_tcp" {
  description = "Map of tcp values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no tcp are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.tcp if v.tcp != null && length(v.tcp) > 0 }
}
output "kibana_synthetics_monitors_timeout" {
  description = "Map of timeout values across all kibana_synthetics_monitors, keyed the same as var.kibana_synthetics_monitors except keys with no timeout are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_monitor.kibana_synthetics_monitors : k => v.timeout if v.timeout != null }
}

