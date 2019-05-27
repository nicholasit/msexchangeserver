add-pssnapin Microsoft.Exchange.Management.PowerShell.E2010

$output = Get-TransportServer | Get-MessageTrackingLog -Start (get-date).AddDays(-1) -EventID "SEND" -ResultSize Unlimited | Group-Object -Property Sender | %{ New-Object psobject -Property @{Sender=$_.Name;Recipients=($_.Group | Measure-Object RecipientCount -Sum).Sum}} | Where-Object {$_.Recipients -gt 100} | Sort-Object -Descending Recipients | Format-Table -AutoSize Sender,Recipients | Out-String

Send-MailMessage -From sysadmins@example.com -Subject "Exchange senders report: $(Get-Date -UFormat '%a, %D')" -To sysadmins@example.com -Body $output -SMTP mail.example.com
