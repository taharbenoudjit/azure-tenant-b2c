variable "rg_name" {
  description = "The name to give to the resource group where the resources will be deployed"
  type        = string
}

variable "rg_location" {
  description = "Azure region where the resources should be deployed Ex. westeurope"
  type        = string
}

variable "tenant_country_code" {
  description = "Country code of the B2C tenant"
  type        = string
}

variable "tenant_data_residency_location" {
  description = "Location in which the B2C tenant is hosted and data resides. values: Asia Pacific, Australia, Europe, Global and United States"
  type        = string
}

variable "tenant_display_name" {
  description = "The initial display name of the B2C tenant."
  type        = string
}

variable "tenant_sku_name" {
  description = "Billing SKU for the B2C tenant. Must be one of: PremiumP1 or PremiumP2"
  type        = string
}