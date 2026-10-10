param(
    [switch]$Iniciar
)

$vmrun = 'C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe'
$vmx = 'C:\Users\Kethely\Documents\Virtual Machines\Linux Laboratorio\Linux Laboratorio.vmx'
$snapshot = 'Limpo'

if (-not (Test-Path -LiteralPath $vmrun)) {
    throw 'O VMware Workstation nao foi encontrado.'
}

if (-not (Test-Path -LiteralPath $vmx)) {
    throw 'A VM Linux Laboratorio nao foi encontrada.'
}

& $vmrun revertToSnapshot $vmx $snapshot
if ($LASTEXITCODE -ne 0) {
    throw "Nao foi possivel restaurar o snapshot '$snapshot'. Desligue a VM e confirme que o snapshot foi criado."
}

if ($Iniciar) {
    & $vmrun start $vmx gui
    if ($LASTEXITCODE -ne 0) {
        throw 'A VM foi restaurada, mas nao iniciou.'
    }
}

Write-Host 'Linux Laboratorio restaurado para o estado Limpo.'
