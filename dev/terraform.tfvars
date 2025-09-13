resource_group = {
    rg1 = {
        name = "3tire-rg"
        location = "EastUs"
    }
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
        snet_name = "3-tire-frontend"
        rg_name = "3tire-rg"
        vnet_name = "3-tire-vnet"
        location = "EastUs"
        address_prefixes = ["10.0.1.0/24"]
  }
  snet2 = {
        snet_name = "3-tire-Backend"
        rg_name = "3tire-rg"
        vnet_name = "3-tire-vnet"
        location = "EastUs"
        address_prefixes = ["10.0.2.0/24"]
  }
}

azure_virtual_machine = {

    vm1= {
        nic_name = "3tire-f-nic"
        location = "EastUs"
        rg_name = "3tire-rg"
        vm_name = "3tire-frontend"
        uname = "Adminsp"
        pass = "Adminsp@1227#"
        # subnet_id = "/subscriptions/2e333137-3307-4678-a744-a2d37508c632/resourceGroups/3tire-rg/providers/Microsoft.Network/virtualNetworks/3-tire-vnet/subnets/3-tire-frontend"
        name = "3-tire-frontend"
        vnet_name = "3-tire-vnet"
        pip_name = "3tire-pip-frontend"
    }
    vm2= {
        nic_name = "3tire-b-nic"
        location = "EastUs"
        rg_name = "3tire-rg"
        vm_name = "3tire-backend"
        uname = "Adminsp"
        pass = "Adminsp@1227#"
        # subnet_id = "/subscriptions/2e333137-3307-4678-a744-a2d37508c632/resourceGroups/3tire-rg/providers/Microsoft.Network/virtualNetworks/3-tire-vnet/subnets/3-tire-Backend"
        name = "3-tire-Backend"
        vnet_name = "3-tire-vnet"
        pip_name = "3tire-pip-backend"
    }
}

azure_public_ip = {
    pip1 = {
        pip_name = "3tire-pip-frontend"
        rg_name = "3tire-rg"
        rg_location = "EastUs"
    }
     pip2 = {
        pip_name = "3tire-pip-backend"
        rg_name = "3tire-rg"
        rg_location = "EastUs"
    }
}

azure_key_vault = {
    akv = {
        kv_name = "tire-akv"
        rg_name = "3tire-rg"
        location = "EastUs"
        
    }
}

azure_key_vault_secrets = {
    secrets1 = {
        secret_name = "front_vm_admin_name"
        secret_value = "Adminsp"
        data_secret_name = "tire-akv"
        rg_name = "EastUs"
    }
    secrets2 = {
        secret_name = "front_vm_admin_pass"
        secret_value = "Adminsp@1227#"
        data_secret_name = "tire-akv"
        rg_name = "EastUs"
    }
}