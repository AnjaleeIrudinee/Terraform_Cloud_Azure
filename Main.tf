terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
# Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "devops1"
    storage_account_name = "terraformgithubactions1"
    container_name       = "tfstate1"
    key                  = "demo.terraform.tfstate1"
}

  cloud {
    organization = "kochasoft_test"
    workspaces {
      name = "First-Workspace"
    }
  }
}

provider "azurerm" {
  features {}
}
