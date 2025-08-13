resource "azurerm_resource_group" "name" {
  name     = "example-resources"
  location = "West Europe"
  tags = {
    environment = "testing"
    prod ="ramesh"
    siva = "siva"
  }
}
