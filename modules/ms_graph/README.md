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
| [azuread_app_role_assignment.graph_worker](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/app_role_assignment) | resource |
| [azuread_application.graph_worker](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_service_principal.graph_worker](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_service_principal.msgraph](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_application_published_app_ids.well_known](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/application_published_app_ids) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_graph_worker"></a> [graph\_worker](#input\_graph\_worker) | n/a | `list(string)` | n/a | yes |
| <a name="input_graph_worker_display_name"></a> [graph\_worker\_display\_name](#input\_graph\_worker\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_graph_worker_sign_in_audience"></a> [graph\_worker\_sign\_in\_audience](#input\_graph\_worker\_sign\_in\_audience) | n/a | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | n/a | yes |

## Outputs

No outputs.