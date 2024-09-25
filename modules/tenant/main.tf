resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
}


resource "azurerm_aadb2c_directory" "tenant" {
  country_code            = var.tenant_country_code
  data_residency_location = var.tenant_data_residency_location
  display_name            = var.tenant_display_name
  domain_name             = "${var.tenant_display_name}.onmicrosoft.com"
  resource_group_name     = azurerm_resource_group.rg.name
  sku_name                = var.tenant_sku_name
}