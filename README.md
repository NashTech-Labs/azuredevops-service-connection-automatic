# azuredevops-service-connection-automatic
This techhub contains script to create service connection for Azure Resource Manager (ARM) in Azure Devops 

## Pre-Requisite
- Azure Account
- Azure CLI

## Steps
- Login to Azure using the azure CLI
- Clone the Repository
- Then run the terraform commands to create the service connection (give the variables value when prompt ask).

```
Commands :
-  terraform init
-  terraform plan
-  terraform apply
```

```
You can also create your own terraform.auto.tfvars file to define the values of the variables. 
- To create a tfvars file `vim terraform.auto.tfvars`
- Add variable_name = value
```

## Inputs:
Inputs for the module

| Variable | Description | Type | Required | Default |
|--|--|--|--|--|
| org_service_url | Azure Organization Service URL | string | true | |
| personal_access_token | Azure Devops Personal Access Token | string | true | |
| azure_devops_project | Azure Devops Project | string | true | |
| azurerm_subscription_id | azurerm subscription id | string | true | |
| azurerm_spn_tenantid | azurerm spn tenant id | string | true | |
| service_endpoint_name | service endpoint name | string | false |  Service Connection AzureRM |
