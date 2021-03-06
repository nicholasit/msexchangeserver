#Searching Message Tracking Logs by Recipient Email Address
Get-MessageTrackingLog -Sender mail@domain.com -Recipients *

#Searching Message Tracking Logs by Recipient Email Address filtering only day
Get-MessageTrackingLog -Start 05/21/2019 -Sender mail@domain.com -ResultSize unlimited | ft recipients | Format-Table -Wrap -AutoSize