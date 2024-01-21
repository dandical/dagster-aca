
resource "azurerm_resource_group" "example" {
  name     = "dagster-aca-rg"
  location = "australiaeast"
}
module "acr" {
  source = "./modules/acr"
}

module "container_app" {
  source = "./modules/container-app"
  acr_url = module.acr.acr_url
  depends_on = [module.acr]
}
