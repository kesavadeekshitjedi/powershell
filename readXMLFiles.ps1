# This is a Udemy example on reading xml files.

[xml] $xmlfileContent = Get-Content D:\GitHub\powershell\myxml.xml
# the [xml] identifier is explicitly telling forcing the $xmlfileContent variable to be of type xml.
$xmlfileContent.GetElementsByTagName("dir_retention")
$xmlfileContent.purge.dir_retention.retention_days