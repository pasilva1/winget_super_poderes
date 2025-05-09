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
winget install --id cURL.cURL --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.MouseWithoutBorders --exact --accept-package-agreements --accept-source-agreements
winget install --id Bitvise.SSH.Client --exact --accept-package-agreements --accept-source-agreements
winget install --id PuTTY.PuTTY --exact --accept-package-agreements --accept-source-agreements
winget install --id Notepad++.Notepad++ --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.VisualStudioCode --exact --accept-package-agreements --accept-source-agreements
winget install --id JetBrains.IntelliJIDEA.Community.EAP --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.Git --exact --accept-package-agreements --accept-source-agreements
winget install --id 7zip.7zip --exact --accept-package-agreements --accept-source-agreements
winget install --id Flameshot.Flameshot --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.Teams --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.Sysinternals.BGInfo --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.OpenSSH.Beta --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.WindowsTerminal --exact --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.Sysinternals.Desktops --exact --accept-package-agreements --accept-source-agreements
winget install --id ClamWin.ClamWin --exact --accept-package-agreements --accept-source-agreements
winget install --id Postman.Postman --exact --accept-package-agreements --accept-source-agreements
winget install -e --id Zoom.Zoom

echo === BAIXANDO INSTALADORES EXTERNOS COM CURL ===

curl -L -o getwinget.exe https://aka.ms/getwinget
curl -L -o FortiClientVPN.exe https://links.fortinet.com/forticlient/win/vpnagent
curl -L -o python-3.11.0-amd64.exe https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe

echo === FINALIZADO ===
pause
