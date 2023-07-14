resource "newrelic_one_dashboard" "exampledash" {
  for_each = var.dashboards_data

  name        = each.value.dashboards_name
  permissions = each.value.permissions

  page {
    name = each.value.pagename

    widget_billboard {
      title  = each.value.widget_billboard.title
      row    = each.value.widget_billboard.row
      column = each.value.widget_billboard.column
      width  = each.value.widget_billboard.width
      height = each.value.widget_billboard.height

      nrql_query {
        query = each.value.widget_billboard.nrql_query
      }
    }

    widget_bar {
      title  = each.value.widget_bar.title
      row    = each.value.widget_bar.row
      column = each.value.widget_bar.column
      width  = each.value.widget_bar.width
      height = each.value.widget_bar.height

      nrql_query {
        query = each.value.widget_bar.nrql_query
      }
    }

    widget_line {
      title  = each.value.widget_line.title
      row    = each.value.widget_line.row
      column = each.value.widget_line.column
      width  = each.value.widget_line.width
      height = each.value.widget_line.height

      nrql_query {
        query = each.value.widget_line.nrql_query
      }
    }
  }
}
