# use the out-file cmdlet to write to a file

Write-Output "test hello" | Out-File "mytest.txt"
Write-Output "test hello2" | Out-File "mytest.txt" -Append
echo "test" >> mytest.txt

