# Logging best practices.
# Use variables

$log_dir = "D:\GitHub\powershell"
$currentTimeStampLogWriter = Get-Date -Format "dd-MM-yyyy HH:MM:ss"
$currentTimestampFileAppender = Get-date -Format "dd-MM-yyyy_HHMMss"
$module_name = "powershell-logging"

Write-Output $log_dir
Write-Output $currentTimeStamp
Write-Output $module_name
Write-Output "$currentTimeStampLogWriter : test message to logging file " | Out-File "$log_dir\logging.log" -Append