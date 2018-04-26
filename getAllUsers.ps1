Import-Module MSOnline
$OfficeURI = "https://outlook.office365.com/powershell-liveid/"
Set-ExecutionPolicy RemoteSigned
$AdminName="daddepalli@robertmarktech.com"
# To create the encrypted password file run the following in an admin powershell window
# Read-Host -Prompt "Enter password: " -AsSecureString | ConvertFrom-SecureString | Out-File "C:\Users\kesav\officecred.txt"
$AdminPass = Get-Content "C:\Users\kesav\officecred.txt" | ConvertTo-SecureString
$UserCredential = new-object -typename System.Management.Automation.PSCredential -argumentlist $AdminName, $AdminPass
#$UserCredential = Get-Credential
# Create and establish a session to Office365 in the cloud
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri $OfficeURI -Credential $UserCredential -Authentication Basic
Import-PSSession $Session
Connect-MsolService -Credential $UserCredential
Write-Output "Session established with $OfficeURI"
Write-Output "Connected as $AdminName to $OfficeURI"

