variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster."
  type        = string
}

variable "azurerm_public_ip" {

 description = "Name of the Load Balancer"
 type        = string
}

variable "frontend_ip_configuration" {
  description = "Name of the Frontend IP Configuration"
  type        = string
}
variable "azurerm_lb" {
  description = "Name of the Frontend IP Configuration"
  type        = string
}

