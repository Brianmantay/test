# Firewall
netsh advfirewall firewall add rule name="allow-in-80" dir=in action=allow protocol=TCP localport=80
netsh advfirewall firewall add rule name="allow-in-80" dir=in action=allow protocol=TCP localport=10943

# Folders
New-Item -ItemType Directory c:\temp

# Install iis
Install-WindowsFeature web-server -IncludeManagementTools

# Install dot.net core sdk
Invoke-WebRequest http://go.microsoft.com/fwlink/?LinkID=615460 -outfile c:\temp\vc_redistx64.exe
Start-Process c:\temp\vc_redistx64.exe -ArgumentList '/quiet' -Wait
Invoke-WebRequest https://go.microsoft.com/fwlink/?linkid=848827 -outfile c:\temp\dotnet-dev-win-x64.1.0.4.exe
Start-Process c:\temp\dotnet-dev-win-x64.1.0.4.exe -ArgumentList '/quiet' -Wait
Invoke-WebRequest https://go.microsoft.com/fwlink/?LinkId=817246 -outfile c:\temp\DotNetCore.WindowsHosting.exe
Start-Process c:\temp\DotNetCore.WindowsHosting.exe -ArgumentList '/quiet' -Wait