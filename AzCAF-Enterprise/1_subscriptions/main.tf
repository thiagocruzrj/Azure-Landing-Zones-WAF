terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.109.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = ">= 1.13.1"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_management_group" "landing_zones" {
  name = var.lz_management_group
}

# create a management group for the project set
resource "azurerm_management_group" "project_set" {
  name                       = var.management_group_name
  display_name               = var.mg_display_name
  parent_management_group_id = data.azurerm_management_group.landing_zones.id
}

module "lz-vending" {
  for_each = var.lz_vending
  source   = "Azure/lz-vending/azurerm"
  version  = "4.1.3"
  location = var.location

  subscription_alias_enabled = true
  subscription_alias_name    = each.value.subscription_alias_name
  subscription_display_name  = each.value.subscription_display_name
  subscription_workload      = var.subscription_workload
}