variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Azure Container Registry."
}

variable "acr_name" {
  type        = string
  description = "Specifies the name of the Azure Container Registry. Must be unique within Azure."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "sku" {
  default     = "Basic"
  type        = string
  description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium."
}

variable "admin_enabled" {
  default     = false
  type        = bool
  description = "Specifies whether the admin user is enabled. Defaults to false."
}