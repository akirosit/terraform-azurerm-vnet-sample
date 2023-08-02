# Terraform Module

This is a Terraform module for deploying a VNET on Azure.

## About This Module

It's been created for training purpose.

The module creates :

- 1 `azurerm_virtual_network`.
- X `azurerm_subnet` within the VNET. The number of subnet and associated CIDR block is defined by the `subnet_cidrs` variable.

## How to Use This Module

Basic Example :

```hcl
module "vnet" {
  source         = "akirosit/vnet-sample/azurerm"
  resource_group = "MyRG"
  vnet_cidr      = ["10.1.0.0/16"]
}
```

Defining subnets to deploy within the Vnet (3 here) :

```hcl
module "vpc" {
  source       = "akirosit/vpc-sample/aws"
  vpc_cidr     = "10.1.0.0/16"
  subnet_cidrs = ["10.1.0.0/24", "10.1.1.0/24", "10.1.2.0/24"]
}
```
