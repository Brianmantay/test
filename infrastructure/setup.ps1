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
Invoke-WebRequest https://download.microsoft.com/download/D/0/2/D028801E-0802-43C8-9F9F-C7DB0A39B344/dotnet-win-x64.1.1.2.exe -outfile c:\temp\dotnet-win-x64.1.1.2.exe
Start-Process c:\temp\dotnet-win-x64.1.1.2.exe -ArgumentList '/quiet' -Wait
Invoke-WebRequest https://go.microsoft.com/fwlink/?linkid=848766 -outfile c:\temp\DotNetCore.1.0.5_1.1.2-WindowsHosting.exe
Start-Process c:\temp\DotNetCore.1.0.5_1.1.2-WindowsHosting.exe -ArgumentList '/quiet' -Wait