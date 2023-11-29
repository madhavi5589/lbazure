terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
}
data "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  
}

resource "azurerm_public_ip" "example" {
  name                = var.azurerm_public_ip
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  allocation_method   = "Static"
}

resource "azurerm_lb" "example" {
  name                = var.azurerm_lb
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name

  frontend_ip_configuration {
    name                 = var.frontend_ip_configuration
    public_ip_address_id = azurerm_public_ip.example.id
  }
}

