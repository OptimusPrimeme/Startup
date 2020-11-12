Write-Host "Directory:$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
Write-Host "========================================================================"
ls "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"|Foreach-Object {$_.name}