resource "azurerm_resource_group" "resource_grp" {
  name     = var.name
  location = var.location

  tags = var.tags
}
