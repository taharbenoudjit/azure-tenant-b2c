## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.graph_worker](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_application_certificate.graph_worker](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_certificate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_end_date_relative"></a> [cert\_end\_date\_relative](#input\_cert\_end\_date\_relative) | n/a | `string` | n/a | yes |
| <a name="input_cert_name"></a> [cert\_name](#input\_cert\_name) | n/a | `string` | n/a | yes |
| <a name="input_certificate_type"></a> [certificate\_type](#input\_certificate\_type) | n/a | `string` | n/a | yes |
| <a name="input_register_certificate_display_name"></a> [register\_certificate\_display\_name](#input\_register\_certificate\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_register_certificate_redirect_uris"></a> [register\_certificate\_redirect\_uris](#input\_register\_certificate\_redirect\_uris) | n/a | `list(string)` | n/a | yes |
| <a name="input_register_certificate_sign_in_audience"></a> [register\_certificate\_sign\_in\_audience](#input\_register\_certificate\_sign\_in\_audience) | n/a | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | n/a | yes |

## Outputs

No outputs.