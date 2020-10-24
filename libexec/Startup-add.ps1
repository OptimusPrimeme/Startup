param($name = '',$path)
if($path -match "(?<workdir>^.*\\)(?<name>.*?)\..*$")
{
    $workdir = $Matches.workdir
    if(!$name)
    {
        $name = $Matches.name
    }
    $WshShell = New-Object -comObject WScript.Shell
    $Shortcut = $WshShell.CreateShortcut("$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\$name.lnk")
    $Shortcut.TargetPath = $path
    $Shortcut.WorkingDirectory = "$workdir\"
    $Shortcut.Save()
}
else
{
    write-host "Invalid path"
}
