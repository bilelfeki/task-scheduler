$fileConfig= ".\task-config.txt"
$schedular = ".\task-scheduler.ps1"
$lines = Get-Content -Path $fileConfig

foreach ($line in $lines) {
    $parts = $line -split ":", 3
    $taskName = $parts[0].Trim()
    $taskValue = $parts[1].Trim()
    $time = $parts[2].Trim()
    powershell -File $schedular -TaskName $taskValue $time
}