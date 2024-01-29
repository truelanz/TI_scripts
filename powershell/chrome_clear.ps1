
# REMOVER COOKIES E CACHE DO CHROME

# LOADER FUNCTION
function loader {
    $i = 0
Write-Host "`n`n --- | $($funcName) | ---" -ForegroundColor Yellow
while ($i -lt 30) {
    Write-Host " " -NoNewline -ForegroundColor Green -BackgroundColor Green
    $i += 1
    Start-Sleep -Milliseconds 50
}
}

# MATANDO PROCESSO
Write-Host "`n    ------------------------------------------------------"
Write-Host "--- |O Chrome sera fechado, precione" -NoNewline
Write-Host " ENTER" -ForegroundColor Blue -NoNewline
Write-Host " para continuar| ---" -NoNewline
Write-Host "`n    ------------------------------------------------------"
$tmo = timeout /T 50020
taskkill /IM chrome.exe /F

$i = 0
Write-Host "`n--- |FECHANDO CHROME| ---" -ForegroundColor Yellow
while ($i -lt 30) {
    Write-Host "." -NoNewline -ForegroundColor Red
    $i += 1
    Start-Sleep -Milliseconds 10
}

# REMOVENDO COOKIES
Remove-Item C:\Users\$Env:UserName\AppData\Local\Google\Chrome\'User Data'\Default\Network\Cookies -Force -ErrorAction SilentlyContinue
Remove-Item C:\Users\$Env:UserName\AppData\Local\Google\Chrome\'User Data'\Default\Network\Cookies-journal -Force -ErrorAction SilentlyContinue

$funcName = "REMOVENDO COOKIES"
loader($funcName)

# REMOVENDO CACHE
Remove-Item C:\Users\$Env:UserName\AppData\Local\Google\Chrome\'User Data'\Default\cache\Cache_Data -Force -Recurse -ErrorAction SilentlyContinue

$funcName = "REMOVENDO CACHE"
loader($funcName)

# REMOVENDO HISTORICO
Remove-Item C:\Users\vboxuser\AppData\Local\Google\Chrome\'User Data'\Default\History -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item C:\Users\vboxuser\AppData\Local\Google\Chrome\'User Data'\Default\History-journel -Force -Recurse -ErrorAction SilentlyContinue

$funcName = "REMOVENDO HISTORICO"
loader($funcName)

# SAINDO DO PS
Write-Host -ForegroundColor Green -BackgroundColor Black "`n`n--- |COOKIES E CACHE REMOVIDOS| ---`n   ---| PROCESSO CONCLUIDO |---`n"
Write-Host "PRESIONE" -NoNewline
Write-Host " ENTER" -ForegroundColor Blue -NoNewline
Write-Host " PARA SAIR DO POWERSHELL" -NoNewline

$tmo = timeout /T 50020
