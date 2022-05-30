variable "zone_id" {
  type = string
}

variable "name" {
  type = string
}

variable "ttl" {
  type = number
}

variable "primary_records" {
  type = list
}

variable "secondary_records" {
  type = list
}

variable "primary_health_check_id" {
  type = string
}

variable "secondary_health_check_id" {
  type = string
}

variable "primary_identifier" {
  type = string
}

variable "secondary_identifier" {
  type = string
}
