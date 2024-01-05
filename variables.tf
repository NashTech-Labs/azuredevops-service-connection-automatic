variable "azuredevops_org_service_url" {
  type        = string
  description = "Azure Organization Service URL"
}

variable "azuredevops_personal_access_token" {
  type        = string
  description = "Azure Devops Personal Access Token"
}

variable "azure_devops_project" {
  type        = string
  description = "Azure Devops Project"
}

variable "azurerm_subscription_id" {
  type        = string
  description = "azurerm subscription id"
}

variable "azurerm_spn_tenantid" {
  type        = string
  description = "azurerm spn tenant id"
}

variable "azuredevops_service_endpoint_name" {
  type        = string
  description = "service endpoint name"
  default     = "Service Connection AzureRM"
}
