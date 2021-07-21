variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created."
  type        = string
}

variable "email_address" {}
variable "name" {}
variable "tags" {
  type = map
}