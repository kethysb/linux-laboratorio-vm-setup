# Script de download automatico da ISO do Linux Mint 22.3 Cinnamon
$url = "https://mirrors.edge.kernel.org/linuxmint/iso/stable/22.3/linuxmint-22.3-cinnamon-64bit.iso"
$output = Join-Path -Path $PSScriptRoot -ChildPath "linuxmint-22.3-cinnamon-64bit.iso"

Write-Host "Baixando Linux Mint 22.3 Cinnamon ISO de $url..."
Invoke-WebRequest -Uri $url -OutFile $output
Write-Host "Download concluido com sucesso! Salvo em: $output"
