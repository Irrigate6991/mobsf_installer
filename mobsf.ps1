# Ordner für die Installation erstellen
New-Item -Path "C:\" -Name "mobsf" -ItemType Directory

# Git installieren
Invoke-WebRequest -Uri 'https://github.com/git-for-windows/git/releases/download/v2.44.0.windows.1/Git-2.44.0-64-bit.exe' -OutFile 'C:\mobsf\git.exe'
Start-Process 'C:\mobsf\git.exe' -ArgumentList '/VERYSILENT' -Wait

# Python installieren
Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe' -OutFile 'C:\mobsf\python.exe'
Start-Process 'C:\mobsf\python.exe' -ArgumentList '/quiet', 'InstallAllUsers=1', 'PrependPath=1' -Wait

# JDK installieren
Invoke-WebRequest -Uri 'https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.exe' -OutFile 'C:\mobsf\jdk.exe'
Start-Process 'C:\mobsf\jdk.exe' -ArgumentList '/s' -Wait

# OpenSSL installieren
Invoke-WebRequest -Uri 'https://slproweb.com/download/Win64OpenSSL-3_2_1.exe' -OutFile 'C:\mobsf\OpenSSL.exe'
Start-Process 'C:\mobsf\OpenSSL.exe' -ArgumentList '/silent', '/verysilent' -Wait

# Visual Studio Code installieren
Invoke-WebRequest -Uri 'https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user' -OutFile 'C:\mobsf\vscode.exe'
Start-Process 'C:\mobsf\vscode.exe' -ArgumentList '/VERYSILENT', '/MERGETASKS=!runcode' -Wait

# wkhtmltopdf installieren
Invoke-WebRequest -Uri 'https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox-0.12.6-1.msvc2015-win64.exe' -OutFile 'C:\mobsf\wkhtmltox.exe'
Start-Process 'C:\mobsf\wkhtmltox.exe' -ArgumentList '/S' -Wait

# Installationsordner entfernen
Remove-Item -Path "C:\mobsf" -Recurse -Force
 

setx wkhtmltopdf "C:\Program Files\wkhtmltopdf" /M
