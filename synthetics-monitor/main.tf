resource "newrelic_synthetics_monitor" "monitor" {
  for_each         = var.config_data_synthetics

  name             = each.value.name
  status           = each.value.status
  period           = each.value.period
  uri              = each.value.uri
  type             = each.value.type
  locations_public = each.value.locations_public
  verify_ssl       = try(each.value.verify_ssl, true)
  tag {
    key    = each.value.tag.key
    values = each.value.tag.values
  }
}

