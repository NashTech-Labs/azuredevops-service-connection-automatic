data "azuredevops_project" "ado_project" {
  name = var.azuredevops_project
}

data "azurerm_subscription" "subscription" {
  subscription_id = var.azurerm_subscription_id
}

resource "azuredevops_serviceendpoint_azurerm" "ado_se_azurerm" {
  project_id                             = data.azuredevops_project.ado_project.id
  service_endpoint_name                  = var.azuredevops_service_endpoint_name
  service_endpoint_authentication_scheme = "ServicePrincipal"
  azurerm_spn_tenantid                   = var.azurerm_spn_tenantid
  azurerm_subscription_id                = var.azurerm_subscription_id
  azurerm_subscription_name              = data.azurerm_subscription.subscription.display_name
}
