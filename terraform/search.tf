resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "AustraliaEast"
}

resource "azurerm_search_service" "example" {
  name                = "leif-example-resource"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "standard"
}