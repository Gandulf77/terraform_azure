#load balancer
resource "azurerm_lb" "example_lb" {
  name                = "example-lb"
  location            = var.location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = azurerm_public_ip.lb_pubip.id
  }
}

#backend_pool
resource "azurerm_lb_backend_address_pool" "backend_pool" {
  loadbalancer_id = azurerm_lb.example_lb.id
  name            = "backendAddressPool"
}

#Load balancer rule
resource "azurerm_lb_rule" "lb_rule_5000" {
  loadbalancer_id               = azurerm_lb.example_lb.id
  name                          = "Port5000Access"
  protocol                      = "Tcp"
  frontend_port                 = 5000
  backend_port                  = 5000
  frontend_ip_configuration_name = "publicIPAddress"
  backend_address_pool_ids      = [azurerm_lb_backend_address_pool.backend_pool.id]
}

