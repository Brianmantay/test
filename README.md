# test-app

This is a dotnet core application i'm using for messing around with ci/cd in conjunction with [this](https://github.com/Brianmantay/cicd-pipe/) for fun.

## Deploy ARM template

This deploys a VM to Azure, installs dotnet core and installs IIS.

`./infrastructure/deploy.ps1`

## TeamCity
![](https://raw.githubusercontent.com/Brianmantay/test-app/master/infrastructure/test-app-tc-build-steps.png)

## Octopus
![](https://raw.githubusercontent.com/Brianmantay/test-app/master/infrastructure/octopus-steps.png)




