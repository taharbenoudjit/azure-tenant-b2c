resource "azuread_application" "graph_worker" {
  display_name     = var.register_certificate_display_name
  sign_in_audience = var.register_certificate_sign_in_audience

  web {
    redirect_uris = var.register_certificate_redirect_uris
  }
}


resource "azuread_application_certificate" "graph_worker" {
  application_object_id = azuread_application.graph_worker.id
  type                  = var.certificate_type
  value                 = filebase64("${path.module}/certs/${var.cert_name}")
  end_date_relative     = var.cert_end_date_relative
}