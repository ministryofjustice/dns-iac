variable "domain" {
  type        = string
  description = "Domain to configure"
}

variable "description" {
  type        = string
  description = "Domain description"
  default     = ""
}

variable "delegation_set_id" {
  type        = string
  description = ""
  default     = ""
}

variable "records" {
  description = "Records to attach to the domain"
  default     = []
}

variable "tags" {
  type        = map(any)
  description = "Tags to apply to resource"
  default     = {}
}
