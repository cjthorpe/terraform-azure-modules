# terraform-azurerm-storage-module
-------------

Terraform module to create a storage account and storage container for hosting Terraform state within Azure.

Requires Terraform v0.12 and utilises HCL2 syntax.

-------------
## SSH

Rather than expose SSH keys within code make use of ssh-agent to securely store the key for use with Terraform.

Add the new identity to ssh-agent as follows:

```
$ eval $(ssh-agent -s) ssh-add ~/.ssh/id_azuredevops
```

-------------
## Usage

```
module "storage" {
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
  container_access_type    = var.container_access_type
  environment              = var.environment
  project_service          = var.project_service
  region                   = var.region
  resource_group_name      = var.resource_group_name
  source                   = "git@github.com:cjthorpe/terraform-azure-modules//azurerm-storage-module"
  storage_account_name     = var.storage_account_name
  storage_container_name   = var.storage_container_name
}
```

The above variable definitions would assume the following form:
```
variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account."
  type        = string
}

variable "account_tier" {
  description = "Defines the tier to use for this storage account."
  type        = string
}

variable "container_access_type" {
  description = "The Access Level configured for this Container."
  type        = string
}

variable "environment" {
  description = "The environment within which the infrastructure will be created. Used for tagging."
  type        = string
}

variable "project_service" {
  description = "The name of the service."
  type        = string
}

variable "region" {
  description = "The Azure region where the infrastructure is hosted."
  type        = string
}

variable "resource_group_name" {
  description = "The name to use for this resource group."
  type        = string
}

variable "storage_account_name" {
  description = "Specifies the name of the storage account."
  type        = string
}

variable "storage_container_name" {
  description = "The name of the Container which should be created within the Storage Account."
  type        = string
}
```

-------------
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account_replication_type | Defines the type of replication to use for this storage account. | string | | Yes |
| account_tier | Defines the tier to use for this storage account. | string | | Yes |
| container_access_type | The access level configured for this container. | string | Yes |
| environment | The environment within which the infrastructure will be created. | string | | Yes |
| project_service | The name of the service. | string | | Yes |
| region | The Azure region where the infrastructure is hosted. | | Yes |
| resource_group_name | The name to use for this resource group. | | Yes |
| storage_account_name | Specifies the name of the storage account. | | Yes |
| storage_container_name | The name of the container which should be created within the Storage Access. | | Yes |

-------------
## References

This module also references [terraform-azure-tags-module](https://github.com/cjthorpe/terraform-azure-modules/tree/master/terraform-azure-tags-module).
