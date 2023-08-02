output "vnet_id" {
  value       = azurerm_virtual_network.main.id
  description = "The ID of the virtual network"
}

output "vnet_name" {
  value       = azurerm_virtual_network.main.name
  description = "The name of the virtual network"
}

output "vnet_address_space" {
  value       = azurerm_virtual_network.main.address_space
  description = "The address space of the virtual network"
}

output "subnet_ids" {
  value       = { for s in azurerm_subnet.main : s.name => s.id }
  description = "The list of subnet IDs"
}

output "subnet_address_prefixes" {
  value       = [for s in azurerm_subnet.main : s.address_prefixes]
  description = "The list of subnet address prefixes"
}
