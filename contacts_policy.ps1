New-AddressList -Name "CUSTOMER COMPANY - All Contacts" -RecipientFilter {((ObjectClass -eq 'Contact'))}
Set-addressList -Identity "CUSTOMER COMPANY - All Contacts" -RecipientContainer "contoso.local/HOSTED E-MAIL ACCOUNTS/CUSTOMER COMPANY"

New-AddressList -Name "CUSTOMER COMPANY - All Rooms" -RecipientFilter {((ObjectClass -eq 'ConferenceRoomMailbox'))}
Set-addressList -Identity "CUSTOMER COMPANY - All Rooms" -RecipientContainer "contoso.local/HOSTED E-MAIL ACCOUNTS/CUSTOMER COMPANY"

New-AddressList -Name “CUSTOMER COMPANY - All Users” -RecipientFilter {((ObjectClass -eq 'User'))}
Set-addressList -Identity "CUSTOMER COMPANY - All Users" -RecipientContainer "contoso.local/HOSTED E-MAIL ACCOUNTS/CUSTOMER COMPANY"

New-GlobalAddressList -Name “CUSTOMER COMPANY - Global Address List”
Set-GlobalAddressList -Identity “CUSTOMER COMPANY - Global Address List” -RecipientContainer "contoso.local/HOSTED E-MAIL ACCOUNTS/CUSTOMER COMPANY"

New-OfflineAddressBook -Name “CUSTOMER COMPANY - OAB” -AddressLists “CUSTOMER COMPANY - Global Address List”

New-AddressBookPolicy -Name “Policy CUSTOMER COMPANY” -AddressLists “CUSTOMER COMPANY - All Users” -OfflineAddressBook “\CUSTOMER COMPANY - OAB” -GlobalAddressList “\CUSTOMER COMPANY - Global Address List” -RoomList “\CUSTOMER COMPANY - All Rooms”


Get-user -OrganizationalUnit "contoso.local/HOSTED E-MAIL ACCOUNTS/CUSTOMER COMPANY" | Set-Mailbox -AddressBookPolicy “Policy CUSTOMER COMPANY”