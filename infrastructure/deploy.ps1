$resourceGroup = "testapp"

if (!$AzureRMAccount.Context.Tenant) {
    $AzureRMAccount = Add-AzureRmAccount 
}

New-AzureRmResourceGroup -Name $resourceGroup -Location "eastus"

New-AzureRmResourceGroupDeployment -Name DockerHost -ResourceGroupName $resourceGroup `
    -TemplateFile C:\Code\cicd-test\test\infrastructure\azuredeploy.json `
    -TemplateParameterFile C:\Code\cicd-test\test\infrastructure\azuredeploy.parameters.json

    #-TemplateUri https://raw.githubusercontent.com/Brianmantay/test-app/master/infrastructure/azuredeploy.json `
    #-TemplateParameterUri https://raw.githubusercontent.com/Brianmantay/test-app/master/infrastructure/azuredeploy.parameters.json


   