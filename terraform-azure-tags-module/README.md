# terraform-azure-tags-module
-------------

Terraform module to define mandatory tags for Azure infrastructure and resources.

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
module "tags" {
  environment       = var.environment
  project_service   = var.project_service
  source            = "git@github.com:cjthorpe/terraform-azure-modules//terraform-azure-tags-module"
}
```

The above variable definitions would assume the following form:
```
variable "environment" {
  default     = "Prod"
  description = "The environment within which the infrastructure will be created. Used for tagging."
  type        = string
}

variable "project_service" {
  default     = "Sentinel Example"
  description = "The name of the service."
  type        = string
}
```

To call the tags module within your code, either call directly to apply only the mandatory tags:
```
tags = module.tags.tags
```

Or include some custom tags as well:
```
tags = merge( 
         map( 
          "TYPE", var.type 
         ), 
         module.tags.tags 
       ) 
```

-------------
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| environment | The environment within which the infrastructure will be created. | string | | Yes |
| project_service | The name of the service. | string | | Yes |
