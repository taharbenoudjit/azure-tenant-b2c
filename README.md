# Project Overview

This project automates the provisioning and deployment of a cloud infrastructure on Microsoft Azure, featuring:
1. Azure B2C (Business-to-Consumer): A tenant for managing customer identity and access with customizable authentication flows.
2. Hosts the frontend of the application with integrated features like global content distribution and optimized performance.
3. A serverless computing service used for running backend logic without managing the underlying infrastructure.

## Key Features
* Infrastructure Provisioning: Using infrastructure as code (IaC), the project provisions an Azure B2C tenant for handling user authentication and identity management, an Azure Static Web App to serve the frontend, and Azure Functions for serverless backend logic.

* Seamless Integration: The key functionality here is the automated linking of the Azure B2C tenant to both the Static Web App and the Azure Function. This integration allows the app to securely authenticate users and invoke backend functions.

## Benifits
* Centralized Identity Management: Azure B2C allows centralized user management, providing secure access control for end users with minimal configuration.

* Serverless Backend: The use of Azure Functions allows you to focus on application logic without the need to manage infrastructure, while the Static Web App ensures a fast, globally distributed front-end experience.

* Automated Provisioning: All components, including linking the Azure B2C tenant to the app and function, are provisioned automatically, reducing manual setup and configuration errors.

## Usage
1. Add the certificate file in modules/certificate_registration/certs
2. For the variables you have two options, you can change them directly in the main.tf file or add them in the terraform.tfvars file (I left an example so you can follow it)
3. If you will use a pipeline you need to set up a remote backend for the state of the infra, you need to add it in the provider.tf file (follow this link https://developer.hashicorp.com/terraform/language/settings/backends/azurerm)


# Terraform module


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.0.0 |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_certificate_registration"></a> [certificate\_registration](#module\_certificate\_registration) | ./modules/certificate_registration | n/a |
| <a name="module_ms_graph"></a> [ms\_graph](#module\_ms\_graph) | ./modules/ms_graph | n/a |
| <a name="module_registartion_api_scope"></a> [registartion\_api\_scope](#module\_registartion\_api\_scope) | ./modules/registration_api_scope | n/a |
| <a name="module_tenant"></a> [tenant](#module\_tenant) | ./modules/tenant | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_static_site.sample-app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_site) | resource |
| [null_resource.run_script](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

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

No outputs.