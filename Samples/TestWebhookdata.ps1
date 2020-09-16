param(
    [object]$WebhookData
)

if($null -ne $WebhookData){
        # Collect properties of WebhookData.
        $WebhookName    =   $WebhookData.WebhookName 
        $WebhookHeaders =   $WebhookData    
        $WebhookBody    =   $WebhookData.RequestBody
        $SearchResults = (ConvertFrom-JSON $WebhookBody).SearchResults
        $SearchResultsValue = $SearchResults.value

        Write-Output $WebhookName
        Write-Output $WebhookHeaders
        Write-Output $SearchResultsValue
}
else {
    Write-Error "Runbook mean to be started only from webhook"
}

