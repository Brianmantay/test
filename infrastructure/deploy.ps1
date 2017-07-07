$resourceGroup = "testapp"

if (!$AzureRMAccount.Context.Tenant) {
    $AzureRMAccount = Add-AzureRmAccount 
}

New-AzureRmResourceGroup -Name $resourceGroup -Location "eastus"

New-AzureRmResourceGroupDeployment -Name DockerHost -ResourceGroupName $resourceGroup `
    -TemplateUri https://raw.githubusercontent.com/Brianmantay/test-app/master/infrastructure/azuredeploy.json `
    -TemplateParameterUri https://raw.githubusercontent.com/Brianmantay/test-app/master/infrastructure/azuredeploy.parameters.json


   