module "create_rg" {
  source = "./terraform-module-rg"
}

module "create_sa" {
  source = "./terraform-module-sa"
  sa_rg_name     = "${module.create_rg.rg_name}" 
}


# resource "azurerm_storage_account" "dev" {
#   name                     = "${var.sa_name}"
#   resource_group_name      = "${module.create_rg.rg_name}"
#   location                 = "${var.sa_location}"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "dev"
#     owner       = "bradnissen"
#   }
# }