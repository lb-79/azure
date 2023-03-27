#Install the Azure Az PowerShell module
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force

#Connect Azure Account
Connect-AzAccount

#Get available Locations, e.g. filtering for Europe only
Get-AzLocation | Where-Object {$_.GeographyGroup -eq "Europe"} | Select-Object -Property Location,DisplayName | Format-Table

#List, Create, Delete Resource Group
Get-AzResourceGroup
