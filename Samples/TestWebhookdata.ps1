param(
    [object]$WebhookData
)

if($null -ne $WebhookData){
    $WebhookData = $WbhookData.WebhookName
    $WebhookHeaders = $WebhookData.RequestHeader
    $WebhookBody = $WebhookData.RequestBody

    $From = $WebhookHeader.From
    $List = ConvertFrom-Json -InputObject $WebhookBody

    Write-Output "Runbook started from webhook $WebhookName by $From."
    Write-output $List

    Write-output $WebhookHeaders
}
else {
    Write-Error "Runbook mean to be started only from webhook"
}