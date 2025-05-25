resourec_groups = {
  "rg1" = {
    name     = "dev-rg1"
    location = "West Europe"
  }
  "rg2" = {
    name     = "dev-rg2"
    location = "West Europe"
  }
}
storage_accounts = {
  "stg1" = {
    name                     = "devstg1990"
    resource_group_name      = "dev-rg1"
    location                 = "West Europe"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  "stg2" = {
    name                     = "devstg2990"
    resource_group_name      = "dev-rg2"
    location                 = "West Europe"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnets = {
  "vnet1" = {
    name                = "dev-vnet1"
    resource_group_name = "dev-rg1"
    location            = "West Europe"
    address_space       = ["10.0.1.0/24"]
  }
  "vnet2" = {
    name                = "dev-vnet2"
    resource_group_name = "dev-rg2"
    location            = "West Europe"
    address_space       = ["10.0.1.0/24"]     
  }
}
  subnets = {
    "subnet1" = {
      name                 = "dev-subnet1"
      resource_group_name  = "dev-rg1"
      virtual_network_name = "dev-vnet1"
      address_prefixes     = ["10.0.1.0/26"]
    }
    "subnet2" = {
      name                 = "dev-subnet2"
      resource_group_name  = "dev-rg2"
      virtual_network_name = "dev-vnet2"
      address_prefixes     = ["10.0.1.0/26"]
    }
  }