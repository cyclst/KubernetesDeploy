terraform {
  backend "azurerm" {
    resource_group_name  = "k8sdeploy"
    storage_account_name = "k8sdeploysto"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  subscription_id = "09686404-8ee6-4e70-816c-e402b7690642"
  features {}
}

data "azurerm_resource_group" "rg" {
  name = "k8sdeploy"
}
