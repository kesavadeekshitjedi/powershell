# This is for the file read and manipulation assignment.

cls
[xml] $xmlFileInfo = Get-Content "D:\GitHub\powershell\udemy.xml"

foreach ($element in $xmlFileInfo.PUBLIC.person)
{
    Write-Output "First Name: " + $element.Name
    Write-Output "Age : " + $element.Age
    $age = $element.Age
    $name = $element.Name

        if($age -gt 60)
        {
            Write-Output $name" qualifies for benefits"
        }
}