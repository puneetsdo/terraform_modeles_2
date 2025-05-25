module "resource_groups" {
  source = "../../Child_Modules/azurerm_resource_group"
  resource_groups = var.resourec_groups

}
module "storage_accounts" {
  source = "../../Child_Modules/azurerm_storage_account"
  storage_accounts = var.storage_accounts
  depends_on = [ module.resource_groups ]
  
}

module "vnets" {
  source = "../../Child_Modules/azurerm_virtual_network"
  vnets = var.vnets
  depends_on = [ module.resource_groups ]
}

module "subnets" {
  source = "../../Child_Modules/azurerm_subnet"
  subnets = var.subnets
  depends_on = [ module.vnets ]
  
}