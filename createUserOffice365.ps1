$Office365URI="https://outlook.office365.com/powershell-liveid"
Remove-PSSession $O365Session
$AdminName = "daddepalli@robertmarktech.com"
$AdminPass = Get-Content "C:\github-repos-deek\powershell\office365.txt" | ConvertTo-SecureString
$MyO365Credential = new-object -typename System.Management.Automation.PSCredential -argumentlist $AdminName, $AdminPass


Import-Module MSOnline
Import-Csv -Path "C:\github-repos-deek\powershell\NewUserList.csv" | ForEach-Object { New-MsolUser -UserPrincipalName $_.UserPrincipalName -FirstName $_.FirstName -LastName $_.LastName -LicenseAssignment "robertmarktech:STANDARDPACK" -UsageLocation "US" -Country $_.Country
