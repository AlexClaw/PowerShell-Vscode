Install-module MicrosoftTeams

$credential = Get-Credential

#Connect to Microsoft Teams
Connect-MicrosoftTeams -Credential $credential

Update-Module MicrosoftTeams

