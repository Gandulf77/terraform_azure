
variable "resource_group_name" {
  type = string
  description = "Name of the Azure resource group"
  default = "gandulf77"
}


variable "location" {
    type = string
  description = "Azure region to deploy the resources"
  default = "francecentral"
}


variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}