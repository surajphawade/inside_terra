#AZ Cli - curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
#tfsec - curl -s https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash
terraform import 'module.azurerm_resource_group["rg1"].azurerm_resource_group.rg' "/subscriptions/Put-sub-id-here/resourceGroups/put-rg-name-here"

