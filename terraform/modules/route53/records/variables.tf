variable "zone_id" {
  description = "Hosted zone ID"
}

variable "records" {
  description = "Records to attach to the domain"
  default     = []
}
