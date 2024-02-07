module "resource_group" {
  source = "../../terraformtodoapplication/resourcegroup"
  rgs    = var.rgs
}

module "vnet" {
  source     = "../../terraformtodoapplication/vn"
  vnet = var.vnet
}

# output "virtualnetwork" {
#   value = module.vnet.id
  
# }

module "subnet" {
  depends_on = [ module.resource_group,module.vnet ]
  source  = "../../terraformtodoapplication/subnet"
  subnets = var.subnets
  }

# output "subnetid" {
#   value = module.subnet.id
  
# }



# module "public_ip" {
#   source = "../../terraformtodoapplication/pubilicip"
#   pips   = var.pips
#   depends_on = [ module.resource_group]
# }

module "networinterface" {
  source = "../../terraformtodoapplication/networinterface"
  nics   = var.nics
  depends_on = [ module.resource_group,module.vnet,module.subnet]
}

module "vm" {
  source = "../../terraformtodoapplication/vm"
  vms    = var.vms
  depends_on = [ module.resource_group,module.vnet,module.subnet,module.networinterface]

}

module "server" {
  source  = "../../terraformtodoapplication/Server"
  servers = var.servers

}

module "database" {
  source    = "../../terraformtodoapplication/Database"
  databases = var.databases
   depends_on = [module.server]


}

# module "publicvirtualmachine" {
#   source = "../../publicvirtualmachine"
  
# }

