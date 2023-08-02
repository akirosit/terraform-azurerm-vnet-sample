module "vnet" {
  source         = "akirosit/vnet-sample/azurerm"
  resource_group = "MyRG"
  location       = "westeurope"
  vnet_cidr      = ["10.1.0.0/16"]
  subnet_cidrs   = ["10.1.0.0/24", "10.1.1.0/24", "10.1.2.0/24"]
}
