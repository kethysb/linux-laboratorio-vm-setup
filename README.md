# 🖥️ Linux Laboratório (VMware Workstation Setup)

Este repositório contém a configuração técnica, scripts de automação e guia de recriação da máquina virtual **Linux Laboratório** (Linux Mint 22.3 Cinnamon 64-bit).

---

## ⚙️ Especificações da Máquina Virtual

- **Sistema Operacional:** Linux Mint 22.3 (Zena) Cinnamon 64-bit
- **Memória RAM:** 4096 MB (4 GB)
- **Processadores (vCPUs):** 4 cores
- **Firmware:** EFI
- **Disco Rígido Recomendado:** 20 GB a 40 GB (SCSI logic)
- **Rede:** NAT (ethernet0)

---

## 📜 Arquivos de Configuração Incluídos

1. **`Linux Laboratorio.vmx`**: Arquivo de configuração nativo do VMware Workstation. Basta dar duplo clique ou importar no VMware.
2. **`Redefinir-Linux-Laboratorio.ps1`**: Script PowerShell para redefinir a máquina virtual para o estado limpo (*snapshot*) automaticamente via `vmrun.exe`.
3. **`download_linux_mint.ps1`**: Script PowerShell para baixar automaticamente a ISO oficial do Linux Mint 22.3 Cinnamon diretamente dos servidores oficiais.

---

## 🚀 Como Recriar ou Restaurar a VM do Zero

### Passo 1: Baixar a ISO do Linux Mint
Execute o script no PowerShell:
```powershell
powershell -ExecutionPolicy Bypass -File .\download_linux_mint.ps1
```

### Passo 2: Importar no VMware
1. Abra o **VMware Workstation**.
2. Clique em **File > Open** e selecione o arquivo `Linux Laboratorio.vmx`.
3. Inicie a VM e selecione o arquivo ISO baixado para a instalação.

---

*Repositório de backup de configuração criado automaticamente via Antigravity AI.*
