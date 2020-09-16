param(
    [object]$WebhookData
)

if($null -ne $WebhookData){
        # Collect properties of WebhookData.
        $WebhookName    =   $WebhookData.WebhookName 
        $WebhookHeaders =   $WebhookData.RequestHeader  
        $WebhookBody    =   $WebhookData.RequestBody
        $WebhookMembers =   Get-Member -InputObject $WebhookData
        $BodyObject     =   ConvertFrom-Json $WebhookData.RequestBody

        Write-Output "------Members--------"
        Write-Output $WebhookMembers
        Write-Output "--------------"

        Write-Output $WebhookName
        Write-Output $WebhookHeaders
        Write-Output $WebhookBody

        Write-Output "#############Object#############"
        Write-Output $BodyObject
        Write-Output "################################"



}
else {
    Write-Error "Runbook mean to be started only from webhook"
}

