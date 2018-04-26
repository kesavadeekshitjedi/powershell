# Script to check the existance of a file and if so, read the last 4 lines
$FolderPath = "D:\GitHub\powershell\"
if (Test-Path("$FolderPath\Office365-CommandList.txt1s"))
{
    Write-Output("Office365-CommandList.txt exists in $FolderPath" )
    $last4Lines=Get-Content("$FolderPath\Office365-CommandList.txt") -Tail 4
    Write-Output("The last 4 lines of the file are: $last4Lines")
}
else {
    Write-Output("File doesnt exist")
}