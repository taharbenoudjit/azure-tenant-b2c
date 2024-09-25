data "azuread_application_published_app_ids" "well_known" {}

resource "random_uuid" "this" {}

resource "azuread_application" "this" {
  display_name     = var.api_app_display_name
  sign_in_audience = var.api_app_sign_in_audience


  identifier_uris = var.api_app_identifier_uris


  api {
    requested_access_token_version = var.api_requested_access_token_version
    oauth2_permission_scope {
      admin_consent_description  = var.api_auth_admin_consent_description
      admin_consent_display_name = var.api_auth_admin_consent_display_name
      enabled                    = var.api_auth_enabled
      id                         = random_uuid.this.result
      type                       = var.api_auth_type
      value                      = var.api_auth_value
    }
  }


  web {
    implicit_grant {
      access_token_issuance_enabled = var.web_grant_access_token_issuance_enabled
      id_token_issuance_enabled     = var.web_grant_id_token_issuance_enabled
    }
  }


  single_page_application {
    redirect_uris = var.single_page_application_redirect_uris
  }


  required_resource_access {
    resource_app_id = data.azuread_application_published_app_ids.well_known.result.MicrosoftGraph

    dynamic "resource_access" {
      for_each = var.resource_access
      content {
        id   = resource_access.value.id
        type = resource_access.value.type
      }
    }
  }
}