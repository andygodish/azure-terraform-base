variable "name" {
  description = "The name to apply to the resource group."
  type        = string
}

variable "location" {
    description = "The Azure region to deploy to."
    type = string
    default = "West Central US"
}

variable "tags" {
  description = "The tags to apply to resources"
  type        = map(string)
  default     = {}
}
