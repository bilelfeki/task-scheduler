param([string]$TaskName , [string]$time)

$fileNameToExecute="task-work.ps1"
$filePathToExecute= $pwd.Path  + '\' + $fileNameToExecute

$action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-File  $filePathToExecute" 
$trigger = New-ScheduledTaskTrigger -once -At $time
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName  $TaskName