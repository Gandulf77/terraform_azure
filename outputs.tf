output "public_ip_loadbalancer" {
  value = azurerm_public_ip.lb_pubip.id
  description = "The private IP address of the newly created Azure VM"
}

output "public_ip_fqdn" {
  description = "The FQDN of the public IP address."
  value       = azurerm_public_ip.lb_pubip.fqdn
}