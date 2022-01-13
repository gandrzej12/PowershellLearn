#not intended to run

new-item $profile -Force

add-content -Value 'cd c:\scripts' -Path $profile
add-content -Value '$var = 123' -Path $profile
add-content -Value '$host.privatedata.errorforegroundcolor="green"' -Path $profile
add-content -Value 'Write-Host "Hello Andrew. Have a nice & productive day." -foregroundcolor magneta' -Path $profile


powershell


new-item $profile.CurrentUserAllHosts -Force

add-content -Value 'set-alias np Notepad' -Path $profile.CurrentUserAllHosts
