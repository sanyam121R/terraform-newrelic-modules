resource "newrelic_one_dashboard" "exampledash" {
  for_each = var.dashboards_data

  name        = each.value.dashboards_data.dashboards_name
  permissions = each.value.dashboards_data.permissions

  page {
    name = each.value.dashboards_data.pagename

    widget_billboard {
      title  = each.value.dashboards_data.widget_billboard.title
      row    = each.value.dashboards_data.widget_billboard.row
      column = each.value.dashboards_data.widget_billboard.column
      width  = each.value.dashboards_data.widget_billboard.width
      height = each.value.dashboards_data.widget_billboard.height

      nrql_query {
        query = each.value.dashboards_data.widget_billboard.nrql_query
      }
    }

    widget_bar {
      title  = each.value.dashboards_data.widget_bar.title
      row    = each.value.dashboards_data.widget_bar.row
      column = each.value.dashboards_data.widget_bar.column
      width  = each.value.dashboards_data.widget_bar.width
      height = each.value.dashboards_data.widget_bar.height

      nrql_query {
        query = each.value.dashboards_data.widget_bar.nrql_query
      }
    }

    widget_line {
      title  = each.value.dashboards_data.widget_line.title
      row    = each.value.dashboards_data.widget_line.row
      column = each.value.dashboards_data.widget_line.column
      width  = each.value.dashboards_data.widget_line.width
      height = each.value.dashboards_data.widget_line.height

      nrql_query {
        query = each.value.dashboards_data.widget_line.nrql
      }
    }
  }
}
