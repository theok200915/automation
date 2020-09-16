# First login to Azure

.\AuthenticateAzure.ps1

$VMs = Get-AzureRMVM

Write-Output $VMs