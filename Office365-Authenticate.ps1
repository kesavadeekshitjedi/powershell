$OfficeURI = "https://outlook.office365.com/powershell-liveid/"
Set-ExecutionPolicy RemoteSigned
$UserCredential = Get-Credential
# Create and establish a session to Office365 in the cloud
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri $OfficeURI -Credential $UserCredential -Authentication Basic
Import-PSSession $Session
Get-Mailbox
