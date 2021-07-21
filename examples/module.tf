provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

module "actiongroup" {
  depends_on          = [azurerm_resource_group.example]
  source              = "../"
  resource_group_name = azurerm_resource_group.example.name
  name                = "actiongroup"
  email_address       = "email@gmail.com"

  tags = {
    Name        = "Alert"
    Environment = "Dev"
    Team        = "DevOps"
    Department  = "IT"
  }
}

output id {
  value = module.actiongroup.id
}

output name {
  value = module.actiongroup.name
}