#region
Import-Module PowerShellGet
Install-Module MSOnline
Install-Module AzureADPreview

Import-Module MSOnline
Import-Module AzureADPreview
#closeregion

Install-Module posh-git -Force
param ($cred)