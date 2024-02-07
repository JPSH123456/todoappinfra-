terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }


  # backend "azurerm" {
  #   resource_group_name  = "example-resources"
  #   storage_account_name = "storageahahhj79323"
  #   container_name       = "newcontainer2343"
  #   key                  = "resource.terraform.tfstate"
  # }

}
provider "azurerm" {
  features {

  }
}