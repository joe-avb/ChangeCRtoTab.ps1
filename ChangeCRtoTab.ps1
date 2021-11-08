$myFile = Read-Host "What file would you like to change? "
$newFile = Read-Host "What will be the name of the new file? "
$toChange = Get-Content -Raw .\$myFile 
$toChange.replace("`n","`t").replace("`r","`t") | Set-Content .\$newFile