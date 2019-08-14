#This file will create a log file from a static file if run in periods.
cd c:\log
$d = Get-Date -format yyyyMMdd-hhmmss
$fileName = Get-ChildItem -name | findstr LOG
$temp1 = Get-Content $fileName
write-output ($d + " " + "Temperature is " + $temp1[14]) >> c:\log\Temperature.log
