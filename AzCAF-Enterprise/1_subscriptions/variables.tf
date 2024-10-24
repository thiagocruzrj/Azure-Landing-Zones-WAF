variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  type        = string
  default     = "eastus"
}

variable "lz_vending" {
  description = "The name of the landing zone to deploy."
}

variable "subscription_workload" {
  description = "Value of the workload type"
  type        = string
  default     = "Production"
}

variable "lz_management_group" {
  description = "The of the management group to deploy the landing zone to."
  type        = string
  default     = "echolearn"
}

variable "management_group_name" {
  description = "The name of the management group to deploy the landing zone to."
  type        = string
  default     = "lz_echolearn"
}

variable "mg_display_name" {
  description = "Management group display name"
  type        = string
  default     = "LZ-EchoLearn"
}