# Download .NET Core SDK and add to PATH
$env:DOTNET_INSTALL_DIR = "$pwd\.dotnetsdk"
$installScript = "$env:DOTNET_INSTALL_DIR\dotnet-install.ps1"
mkdir $env:DOTNET_INSTALL_DIR -Force | Out-Null
((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/dotnet/cli/rel/1.0.0/scripts/obtain/dotnet-install.ps1') > $installScript)
& $installScript -InstallDir "$env:DOTNET_INSTALL_DIR" -Version 1.0.0-preview4-004233
dotnet restore
dotnet build