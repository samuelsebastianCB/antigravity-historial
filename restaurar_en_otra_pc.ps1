# Script para restaurar el historial de Antigravity y clonar proyectos en la otra PC
$brainDest = Join-Path $env:USERPROFILE ".gemini\antigravity\brain"
New-Item -ItemType Directory -Force -Path $brainDest | Out-Null

Write-Host "1. Restaurando historial de conversaciones de Antigravity en $brainDest ..." -ForegroundColor Cyan
Expand-Archive -Path ".\Antigravity_Brain_Completo.zip" -DestinationPath $brainDest -Force
Write-Host "   -> Historial de Antigravity restaurado correctamente." -ForegroundColor Green

Write-Host "`n2. Tus repositorios estan listos en GitHub:" -ForegroundColor Cyan
Write-Host "   - git clone https://github.com/samuelsebastianCB/diciembre2001.git"
Write-Host "   - git clone https://github.com/samuelsebastianCB/VinateriaLaModerna-admin-angular.git"
