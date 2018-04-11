$Office365URI="https://outlook.office365.com/powershell-liveid"
Remove-PSSession $O365Session
# Use this to create the encrypted file:
# Read-Host "Enter password: " -AsSecureString | ConvertFrom-SecureString | Out-File "office365.txt"
$AdminName = "daddepalli@robertmarktech.com"
$AdminPass = Get-Content "C:\github-repos-deek\powershell\office365.txt" | ConvertTo-SecureString
$MyO365Credential = new-object -typename System.Management.Automation.PSCredential -argumentlist $AdminName, $AdminPass


Import-Module MSOnline
#$MyO365Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $AdminUser, $AdminPass
Connect-MSolService -Credential $MyO365Credential
$O365Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionURI $Office365URI -Credential $MyO365Credential -Authentication Basic -AllowRedirection
Import-PSSession $O365Session
Set-MSolUserLicense ` -UserPrincipalName "rsmith@robertmarktech.com" ` -RemoveLicenses : "robertmarktech:STANDARDPACK"
Remove-PSSession $O365Session