$connectionName = "AzureRunAsConnection"
$subId = Get-AutomationVariable -Name "SubscriptionId"

try{
    #Get the connection "AzureRunAsConnection"
    $servicePrincipalConnection = Get-AutomationConnection -Name $connectionName

    Write-Output "Signing in to Azure...."
    Add-AzureRmAccount -ServicePrincipal -TenantId $ServicePrincipalConnection.TenantId -ApplicationId $servicePrincipalConnection.ApplicationId -CertificateThumbprint $servicePrincipalConnection.CertificateThumbprint
    Write-Output "Setting context to a specific subscription"
    Set-AzureRmContext -SubscriptionId $subId
}
catch {
    if (!$servicePrincipalConnection){
        $ErrorMessage = "Connection $connectionName not found."
        throw $ErrorMessage
    }
    else{
        Write-Error -Message $_.Exception
        throw $_.Exception
    }
}