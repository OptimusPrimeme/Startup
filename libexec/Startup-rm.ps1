param($names)
$count = ""
foreach ($name in $names)
{    
    if(Test-Path "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*$name*")
    {
        $targets += ls "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\" |? {$_.name -like "*$name*"}
        $count += "$name "
    }
    else
    {
    Write-Host "$name doesn't exist"
    }
}
if($count.length){
    if($(Read-Host -p "$count exist,confirm to delete?(y/N)") -eq "y"){
    foreach ($target in $targets)
        {
            Remove-Item $target
        }
    }   
}

