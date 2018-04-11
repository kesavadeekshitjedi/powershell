$OfficeURI = "https://outlook.office365.com/powershell-liveid"
$AdminUserName = "daddepalli@robertmarktech.com"
$AdminPassword = Get-Content "C:\github-repos-deek\powershell\office365.txt" | ConvertTo-SecureString
$O365Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $AdminUserName, $AdminPassword
# Office 365 credential is established at this point.

Import-Module MSonline
Connect-MsolService -Credential $O365Credential
# At this point we should be connected to Office 365. We now need to import the session.

$O365Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri $OfficeURI -Credential $O365Credential -Authentication Basic
Write-Output "Getting List of users and the license status in Office 365"

Get-MsolUser | Select-Object UserPrincipalName, isLicensed | Export-Csv "C:\github-repos-deek\powershell\CurrentUsers-$(((get-date).ToUniversalTime()).ToString("yyyyMMddThhmmssZ")).csv"
