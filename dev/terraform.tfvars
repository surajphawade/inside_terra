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
        stg_name = "threetirestg"
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
        admin_username = "Adminsp"
        admin_password = "Adminsp@1227#"
        # subnet_id = "/subscriptions/2e333137-3307-4678-a744-a2d37508c632/resourceGroups/3tire-rg/providers/Microsoft.Network/virtualNetworks/3-tire-vnet/subnets/3-tire-frontend"
        name = "3-tire-frontend"
        vnet_name = "3-tire-vnet"
        pip_name = "3tire-pip-frontend"
        kv_name = "tire-akv"
    }
    vm2= {
        nic_name = "3tire-b-nic"
        location = "EastUs"
        rg_name = "3tire-rg"
        vm_name = "3tire-backend"
        admin_username = "Adminsp"
        admin_password = "Adminsp@1227#"
         name = "3-tire-Backend"
        vnet_name = "3-tire-vnet"
        pip_name = "3tire-pip-backend"
        kv_name = "tire-akv"
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
        secret_name = "front-vm-admin-name"
        secret_value = "Adminsp"
        key_vault_name = "tire-akv"
        rg_name = "EastUs"
    }
    secrets2 = {
        secret_name = "front-vm-admin-pass"
        secret_value = "Adminsp@1227#"
        key_vault_name = "tire-akv"
        rg_name = "EastUs"
    }
    secrets3 = {
        secret_name = "back-vm-admin-name"
        secret_value = "Adminsp"
        key_vault_name = "tire-akv"
        rg_name = "EastUs"
    }
    secrets4 = {
        secret_name = "back-vm-admin-pass"
        secret_value = "Adminsp@1227#"
        key_vault_name = "tire-akv"
        rg_name = "EastUs"
    }
}

azure_mysql_server = {
    sqlserver1 = {
        sqlserver_name = "3tire-az-server"
        rg_name = "3tire-rg"
        location ="EastUs2"
        administrator_login = "Adminsp"
        administrator_login_password = "Admin@1227#"
    }
}

azure_mysql_database = {
    sqldb1 = {
        msdb_name = "3tire-sqldb"
        collation = "SQL_Latin1_General_CP1_CI_AS"
        sqlserver_name = "3tire-az-server"
        rg_name = "EastUs"
    }
}