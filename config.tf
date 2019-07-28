resource "azurerm_storage_account" "dev" {
  name                     = "${var.sa_name}"
  resource_group_name      = "this-should-change-at-runtime"
  location                 = "${var.sa_location}"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
    owner       = "bradnissen"
  }
}