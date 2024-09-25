module "tenant" {
  source = "./modules/tenant"
  providers = {
    azurerm = azurerm
  }
  rg_name                        = var.rg_name
  rg_location                    = var.rg_location
  tenant_country_code            = var.tenant_country_code
  tenant_data_residency_location = var.tenant_data_residency_location
  tenant_display_name            = var.tenant_display_name
  tenant_sku_name                = var.tenant_sku_name
}

module "certificate_registration" {
  source                                = "./modules/certificate_registration"
  tenant_id                             = module.tenant.tenant_id
  register_certificate_display_name     = "GraphWorker_App"
  register_certificate_sign_in_audience = "AzureADMyOrg"
  register_certificate_redirect_uris    = ["http://localhost/"]
  certificate_type                      = "AsymmetricX509Cert"
  cert_end_date_relative                = "17532h"
  cert_name                             = "" #Add name of the certificate file here Ex. graphworker-cert.cer
}

module "registartion_api_scope" {
  source                                  = "./modules/registration_api_scope"
  tenant_id                               = module.tenant.tenant_id
  api_app_display_name                    = "Api"
  api_app_sign_in_audience                = "AzureADandPersonalMicrosoftAccount"
  api_app_identifier_uris                 = ["https://${module.tenant.tenant_domain_name}/apinka"]
  api_requested_access_token_version      = 2
  api_auth_admin_consent_description      = "Allows the app to access to game data on behalf of a user."
  api_auth_admin_consent_display_name     = "Access Games"
  api_auth_enabled                        = true
  api_auth_type                           = "Admin"
  api_auth_value                          = "Games.Access"
  web_grant_access_token_issuance_enabled = true
  web_grant_id_token_issuance_enabled     = true
  single_page_application_redirect_uris   = ["http://localhost:8080/"]
  resource_access = [
    {
      id   = "" # add scope id
      type = "Scope"
    },
    {
      id   = "" # add scope id
      type = "Scope"
    }
  ]
}

module "ms_graph" {
  source                        = "./modules/ms_graph"
  tenant_id                     = module.tenant.tenant_id
  graph_worker_display_name     = "GraphWorker_App"
  graph_worker_sign_in_audience = "AzureADMyOrg"
  graph_worker                  = ["http://localhost/"]
}

resource "azurerm_static_site" "sample-app" {
  name                = "sample-app"
  resource_group_name = var.rg_name
  location            = var.rg_location
  sku_size            = "Free"
}

resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "cd scripts/ && powershell -ExecutionPolicy Bypass -File test.ps1"
  }

  depends_on = [
    module.tenant,
    azurerm_static_site.sample-app,
    module.certificate_registration,
    module.ms_graph,
    module.registartion_api_scope
  ]
}
