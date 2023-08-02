output "vnet_id" {
  value = module.vnet.vnet_id
}

output "vnet_name" {
  value = module.vnet.vnet_name
}

output "vnet_address_space" {
  value = module.vnet.vnet_address_space
}

output "subnet_ids" {
  value = module.vnet.subnet_ids
}

output "subnet_names" {
  value = module.vnet.subnet_names
}

output "subnet_address_spaces" {
  value = module.vnet.subnet_address_spaces
}
