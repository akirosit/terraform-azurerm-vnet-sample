output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "vnet_name" {
  value = azurerm_virtual_network.main.name
}

output "vnet_address_space" {
  value = azurerm_virtual_network.main.address_space
}

output "subnet_ids" {
  value = [for s in azurerm_subnet.main : s.id]
}

output "subnet_names" {
  value = [for s in azurerm_subnet.main : s.name]
}

output "subnet_address_spaces" {
  value = [for s in azurerm_subnet.main : s.address_prefixes]
}
