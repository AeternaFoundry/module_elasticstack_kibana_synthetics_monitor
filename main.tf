resource "elasticstack_kibana_synthetics_monitor" "kibana_synthetics_monitors" {
  for_each = var.kibana_synthetics_monitors

  name              = each.value.name
  alert             = each.value.alert
  browser           = each.value.browser
  enabled           = each.value.enabled
  http              = each.value.http
  icmp              = each.value.icmp
  labels            = each.value.labels
  locations         = each.value.locations
  namespace         = each.value.namespace
  params            = each.value.params
  private_locations = each.value.private_locations
  retest_on_failure = each.value.retest_on_failure
  schedule          = each.value.schedule
  service_name      = each.value.service_name
  space_id          = each.value.space_id
  tags              = each.value.tags
  tcp               = each.value.tcp
  timeout           = each.value.timeout
  timeouts          = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

