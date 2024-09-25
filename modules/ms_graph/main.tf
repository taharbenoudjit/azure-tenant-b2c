data "azuread_application_published_app_ids" "well_known" {}

resource "azuread_service_principal" "msgraph" {
  application_id = data.azuread_application_published_app_ids.well_known.result.MicrosoftGraph
  use_existing   = true
}


resource "azuread_application" "graph_worker" {
  display_name     = var.graph_worker_display_name
  sign_in_audience = var.graph_worker_sign_in_audience

  web {
    redirect_uris = var.graph_worker
  }


  required_resource_access {
    resource_app_id = data.azuread_application_published_app_ids.well_known.result.MicrosoftGraph


    resource_access {
      id   = azuread_service_principal.msgraph.app_role_ids["Application.ReadWrite.All"]
      type = "Role"
    }
  }
}


resource "azuread_service_principal" "graph_worker" {
  application_id = azuread_application.graph_worker.application_id
}

resource "azuread_app_role_assignment" "graph_worker" {
  app_role_id         = azuread_service_principal.msgraph.app_role_ids["Application.ReadWrite.All"]
  principal_object_id = azuread_service_principal.graph_worker.object_id
  resource_object_id  = azuread_service_principal.msgraph.object_id
}