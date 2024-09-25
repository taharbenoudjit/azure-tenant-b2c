## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [random_uuid.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |
| [azuread_application_published_app_ids.well_known](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/application_published_app_ids) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_app_display_name"></a> [api\_app\_display\_name](#input\_api\_app\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_api_app_identifier_uris"></a> [api\_app\_identifier\_uris](#input\_api\_app\_identifier\_uris) | n/a | `list(string)` | n/a | yes |
| <a name="input_api_app_sign_in_audience"></a> [api\_app\_sign\_in\_audience](#input\_api\_app\_sign\_in\_audience) | n/a | `string` | n/a | yes |
| <a name="input_api_auth_admin_consent_description"></a> [api\_auth\_admin\_consent\_description](#input\_api\_auth\_admin\_consent\_description) | n/a | `string` | n/a | yes |
| <a name="input_api_auth_admin_consent_display_name"></a> [api\_auth\_admin\_consent\_display\_name](#input\_api\_auth\_admin\_consent\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_api_auth_enabled"></a> [api\_auth\_enabled](#input\_api\_auth\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_api_auth_type"></a> [api\_auth\_type](#input\_api\_auth\_type) | n/a | `string` | n/a | yes |
| <a name="input_api_auth_value"></a> [api\_auth\_value](#input\_api\_auth\_value) | n/a | `string` | n/a | yes |
| <a name="input_api_requested_access_token_version"></a> [api\_requested\_access\_token\_version](#input\_api\_requested\_access\_token\_version) | n/a | `number` | n/a | yes |
| <a name="input_resource_access"></a> [resource\_access](#input\_resource\_access) | n/a | `any` | n/a | yes |
| <a name="input_single_page_application_redirect_uris"></a> [single\_page\_application\_redirect\_uris](#input\_single\_page\_application\_redirect\_uris) | n/a | `list(string)` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | n/a | yes |
| <a name="input_web_grant_access_token_issuance_enabled"></a> [web\_grant\_access\_token\_issuance\_enabled](#input\_web\_grant\_access\_token\_issuance\_enabled) | n/a | `bool` | n/a | yes |
| <a name="input_web_grant_id_token_issuance_enabled"></a> [web\_grant\_id\_token\_issuance\_enabled](#input\_web\_grant\_id\_token\_issuance\_enabled) | n/a | `bool` | n/a | yes |

## Outputs

No outputs.