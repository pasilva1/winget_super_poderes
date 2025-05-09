@echo off
setlocal
echo === INSTALANDO APLICATIVOS COM WINGET ===

:: Verifica se winget está instalado
winget --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Winget não está instalado. Baixe em: https://aka.ms/getwinget
    pause
    exit /b
)

:: Instalações com winget (sem prompt)
winget install -e --id cURL.cURL -y
winget install -e --id Microsoft.MouseWithoutBorders -y
winget install -e --id Bitvise.SSH.Client -y
winget install -e --id PuTTY.PuTTY -y
winget install -e --id Notepad++.Notepad++ -y
winget install -e --id Microsoft.VisualStudioCode -y
winget install -e --id JetBrains.IntelliJIDEA.Community.EAP -y
winget install -e --id Microsoft.Git -y
winget install -e --id Flameshot.Flameshot -y
winget install -e --id Microsoft.Teams -y
winget install -e --id Microsoft.Sysinternals.BGInfo -y
winget install -e --id Microsoft.OpenSSH.Beta -y
winget install -e --id Microsoft.WindowsTerminal -y
winget install -e --id Microsoft.Sysinternals.Desktops -y
winget install -e --id ClamWin.ClamWin -y

echo === BAIXANDO INSTALADORES EXTERNOS COM CURL ===

curl -L -o getwinget.exe https://aka.ms/getwinget
curl -L -o FortiClientVPN.exe https://links.fortinet.com/forticlient/win/vpnagent
curl -L -o python-3.11.0-amd64.exe https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe

echo === FINALIZADO ===
pause
