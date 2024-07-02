terraform {
  required_version = "~>1.8.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.110.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.39.0"
    }

    external = {
      source = "hashicorp/external"
      version = "2.3.1"
    }

    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }

  backend "local" {
    path = "./terraform.tfstate"
  }
}
