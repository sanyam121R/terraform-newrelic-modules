variable "incident_preference" {
  type = string
}

variable "alert_conditions" {
  type        = map(any)
  description = "different alert conditions using for_each loop.."
}
