resource "newrelic_alert_policy" "yan" {
  name                = "example"
  incident_preference = var.incident_preference
}


# USE THIS RESOURCE TO CREATE AND MANAGE NRQL ALERT CONDITIONS IN NEW RELIC.

resource "newrelic_nrql_alert_condition" "sanyam" {
  policy_id = newrelic_alert_policy.yan.id

  for_each    = var.alert_conditions
  name        = each.value.name
  description = "Alert when transactions are taking too long"

  nrql {
    query = each.value.nrql
  }

  critical {
    operator              = each.value.critical.operator
    threshold             = each.value.critical.threshold
    threshold_duration    = each.value.critical.threshold_duration
    threshold_occurrences = each.value.critical.threshold_occurrences
  }

  warning {
    operator              = each.value.warning.operator
    threshold             = each.value.warning.threshold
    threshold_duration    = each.value.warning.threshold_duration
    threshold_occurrences = each.value.warning.threshold_occurrences
  }
}


