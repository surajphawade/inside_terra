resource_group = {
    "3tire-rg" = "EastUS"
}

virtual_network = {
    vnet1 = {
        vnet_name = "3-tire-vnet"
        rg_name = "3tire-rg"
        location = "EastUS"
    }
}

storage_account = {
    stg1 = {
        stg_name = "3tirestg"
        rg_name = "3tire-rg"
        location = "EastUS"
    }
}
azure_subnet = {
    snet1 = {
        snet_name = "3-tire-snet"
        rg_name = "3tire-rg"
        vnet_name = "3-tire-vnet"
        location = "EastUs"
        address_prefixes = ["10.0.1.0/24"]
  }
  snet2 = {
        snet_name = "3-tire-snet"
        rg_name = "3tire-rg"
        vnet_name = "3-tire-vnet"
        location = "EastUs"
        address_prefixes = ["10.0.2.0/24"]
  }
}

azure_virtual_machine = {

    vm1= {
        nic_name = "3tire-nic"
        location = "EastUs"
        rg_name = "3tire-rg"
        vm_name = "3tire-vm"
        uname = "Adminsp"
        pass = "Adminsp@1227#"
        
    }
}
