# First login to Azure

.\AuthenticateAzure.ps1

$VMs = Get-AzureRMVM
foreach($VM in $VMs){
    Write-Output "$($VM.Name)"
}