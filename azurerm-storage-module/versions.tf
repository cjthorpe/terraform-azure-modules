terraform {
  required_providers {
    azuredevops = {
      source = "terraform-providers/azuredevops"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.9.0"
    }
  }
  required_version = ">= 0.13"
}
