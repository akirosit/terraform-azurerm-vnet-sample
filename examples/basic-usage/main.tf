module "vnet" {
  source         = "akirosit/vnet-sample/azurerm"
  resource_group = "MyRG"
  location       = "westeurope"
  vnet_cidr      = ["10.1.0.0/16"]
}
