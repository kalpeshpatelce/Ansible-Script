cmdkey /add:172.16.2.137 /user:Administrator /pass:ceit
net use Z: /delete
net use Z: \\172.16.2.137\matlab /persistent:no
Set-Location -Path "Z:"
Z:\setup.exe -inputFile Z:\installer_input.txt