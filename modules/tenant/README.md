## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_aadb2c_directory.tenant](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/aadb2c_directory) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Azure region where the resources should be deployed Ex. westeurope | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name to give to the resource group where the resources will be deployed | `string` | n/a | yes |
| <a name="input_tenant_country_code"></a> [tenant\_country\_code](#input\_tenant\_country\_code) | Country code of the B2C tenant | `string` | n/a | yes |
| <a name="input_tenant_data_residency_location"></a> [tenant\_data\_residency\_location](#input\_tenant\_data\_residency\_location) | Location in which the B2C tenant is hosted and data resides. values: Asia Pacific, Australia, Europe, Global and United States | `string` | n/a | yes |
| <a name="input_tenant_display_name"></a> [tenant\_display\_name](#input\_tenant\_display\_name) | The initial display name of the B2C tenant. | `string` | n/a | yes |
| <a name="input_tenant_sku_name"></a> [tenant\_sku\_name](#input\_tenant\_sku\_name) | Billing SKU for the B2C tenant. Must be one of: PremiumP1 or PremiumP2 | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tenant_domain_name"></a> [tenant\_domain\_name](#output\_tenant\_domain\_name) | n/a |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | n/a |