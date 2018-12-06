Write-Host "Enabling Useful Windows Features" 
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment

Enable-WindowsOptionalFeature -online -FeatureName NetFx4Extended-ASPNET45
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45

Enable-WindowsOptionalFeature -Online -FeatureName IIS-HealthAndDiagnostics
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpLogging
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LoggingLibraries
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpTracing
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Security
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestFiltering
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IIS6ManagementCompatibility
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Metabase
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementConsole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-BasicAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication
Enable-WindowsOptionalFeature -Online -FeatureName IIS-StaticContent
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DefaultDocument
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebSockets
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationInit
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45

Write-Host "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 

Write-Host "Installing Useful Programs"
choco install git -y
choco install tortoisegit -y

choco install dotnetcore-sdk -y
choco install nodejs -y
choco install yarn -y
choco install javaruntime -y

choco install sql-server-express -y
choco install sql-server-management-studio -y
choco install azure-data-studio -y

choco install visualstudio2017community -y

Write-Host "Installing vscode and extensions"
choco install vscode -y
code --install-extension coenraads.bracket-pair-colorizer
code --install-extension alefragnani.bookmarks
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension kisstkondoros.vscode-codemetrics
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension kisstkondoros.vscode-gutter-preview
code --install-extension tyriar.lorem-ipsum
code --install-extension ryu1kn.text-marker
code --install-extension shardulm94.trailing-spaces
code --install-extension eg2.tslint
code --install-extension kisstkondoros.typelens
code --install-extension robertohuertasm.vscode-icons

code --install-extension eg2.vscode-npm-script
code --install-extension andyyaldoo.vscode-json
code --install-extension dotjoshjohnson.xml
code --install-extension asvetliakov.snapshot-tools
code --install-extension christian-kohler.npm-intellisense
code --install-extension mariusalchimavicius.json-to-ts
code --install-extension ms-vscode.csharp
code --install-extension formulahendry.dotnet-test-explorer

choco install notepadplusplus -y
choco install winmerge -y
choco install 7zip -y
choco install postman -y
choco install fiddler -y
choco install mremoteng -y

choco install googlechrome -y
choco install firefox -y

choco install slack -y
choco install screenpresso -y

Write-Host "Ding!"