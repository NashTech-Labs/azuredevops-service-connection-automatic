terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.10.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.83.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuredevops" {
  org_service_url       = var.org_service_url
  personal_access_token = var.personal_access_token
}