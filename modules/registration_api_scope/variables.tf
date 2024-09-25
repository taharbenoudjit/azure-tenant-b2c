variable "tenant_id" {
  type = string
}

variable "api_app_display_name" {
  type = string
}

variable "api_app_sign_in_audience" {
  type = string
}

variable "api_app_identifier_uris" {
  type = list(string)
}

variable "api_requested_access_token_version" {
  type = number
}

variable "api_auth_admin_consent_description" {
  type = string
}

variable "api_auth_admin_consent_display_name" {
  type = string
}

variable "api_auth_enabled" {
  type = bool
}

variable "api_auth_type" {
  type = string
}

variable "api_auth_value" {
  type = string
}

variable "web_grant_access_token_issuance_enabled" {
  type = bool
}

variable "web_grant_id_token_issuance_enabled" {
  type = bool
}

variable "single_page_application_redirect_uris" {
  type = list(string)
}

variable "resource_access" {
  type = any
}
