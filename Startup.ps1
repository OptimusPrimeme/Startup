param($cmd)


. $psscriptroot\lib\commands



$commands = commands
if (@($null, '--help', '/?') -contains $cmd -or $args[0] -contains '-h') { exec 'help' $args }
elseif ($commands -contains $cmd) { exec $cmd $args }
else { "'$cmd' isn't a Startup command. See 'Startup help'."; exit 1 }
