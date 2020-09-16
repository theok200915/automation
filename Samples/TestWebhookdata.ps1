param(
    [object]$WebhookData
)

if($null -ne $WebhookData){
        # Collect properties of WebhookData.
        $WebhookName    =   $WebhookData.WebhookName 
        $WebhookHeaders =   $WebhookData.RequestHeader  
        $WebhookBody    =   $WebhookData.RequestBody
        

        Write-Output "------RAW WebhookData--------"
        Write-Output $WebhookData
        Write-Output "--------------"

        Write-Output $WebhookName
        Write-Output $WebhookBody
        Write-Output $WebhookHeaders
}
else {
    Write-Error "Runbook mean to be started only from webhook"
}

