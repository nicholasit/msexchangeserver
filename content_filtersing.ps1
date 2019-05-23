#Enable Content Filtering
Set-ContentFilterConfig -Enabled $true

#Options
Set-ContentFilterConfig
   [-BypassedRecipients <MultiValuedProperty>]
   [-BypassedSenderDomains <MultiValuedProperty>]
   [-BypassedSenders <MultiValuedProperty>]
   [-Confirm]
   [-DomainController <Fqdn>]
   [-Enabled <$true | $false>]
   [-ExternalMailEnabled <$true | $false>]
   [-InternalMailEnabled <$true | $false>]
   [-OutlookEmailPostmarkValidationEnabled <$true | $false>]
   [-QuarantineMailbox <SmtpAddress>]
   [-RejectionResponse <AsciiString>]
   [-SCLDeleteEnabled <$true | $false>]
   [-SCLDeleteThreshold <Int32>]
   [-SCLQuarantineEnabled <$true | $false>]
   [-SCLQuarantineThreshold <Int32>]
   [-SCLRejectEnabled <$true | $false>]
   [-SCLRejectThreshold <Int32>]
   [-WhatIf]