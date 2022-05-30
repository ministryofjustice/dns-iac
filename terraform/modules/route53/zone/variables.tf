variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = ""
}

variable "delegation_set_id" {
  type    = string
  default = null
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Whether to force destroy this zone (and destroy all records)"
}

variable "tags" {
  type = map(any)
}
