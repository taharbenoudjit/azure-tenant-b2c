variable "tenant_id" {
  type = string
}

variable "register_certificate_display_name" {
  type = string
}

variable "register_certificate_sign_in_audience" {
  type = string
}

variable "register_certificate_redirect_uris" {
  type = list(string)
}

variable "certificate_type" {
  type = string
}

variable "cert_end_date_relative" {
  type = string
}

variable "cert_name" {
  type = string
}