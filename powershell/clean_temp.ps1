# REMOVER ARQUIVOS TEMPORÁRIOS DO WINDOWS - "TEMP", "%TEMP%" e "PREFETCH"


# LOADER FUNCTION
function loader {
    $i = 0
Write-Host "`n`n --- | $($funcName) | ---" -ForegroundColor Yellow
while ($i -lt 35) {
    Write-Host " " -NoNewline -ForegroundColor Green -BackgroundColor Green
    $i += 1
    Start-Sleep -Milliseconds 50
}
}

Write-Host "`n    -----------------------------------------------------------------"
Write-Host "--- |Antes, feche todos os programas que estao abertos no Computador| ---"
Write-Host "         --- |Apos fechar os programas, precione" -NoNewline
Write-Host " ENTER" -ForegroundColor Blue -NoNewline
Write-Host "| ---" -NoNewline
Write-Host "`n             ------------------------------------------"

$tmo = timeout /T 50000 

$TEMP1 = Remove-Item $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue
$TEMP2 = Remove-Item C:\Windows\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
$TEMP3 = Remove-Item C:\Windows\Prefetch\* -Recurse -Force -ErrorAction SilentlyContinue

$funcName = "REMOVENDO TEMP FILES"
loader($funcName)

Write-Output "`n"

try {
    ($TEMP1) + ($TEMP2) + ($TEMP3)
}   
catch {
    Write-Host 'TEMP files não encontrados.'
}
Write-Host -ForegroundColor Green -BackgroundColor Black "--- |TEMP FILES REMOVIDOS| ---`n ---| PROCESSO CONCLUIDO |---`n"

# SAINDO DO PS
Write-Host "PRESIONE" -NoNewline
Write-Host " ENTER" -ForegroundColor Blue -NoNewline
Write-Host " PARA SAIR DO POWERSHELL" -NoNewline

$tmo = timeout /T 50020

