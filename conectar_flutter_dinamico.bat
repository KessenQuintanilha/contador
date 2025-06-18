@echo off
setlocal

set ADB_PATH="C:\Users\kquintanilha\AppData\Local\Android\Sdk\platform-tools\adb.exe"

:input_ip
set /p IP="Digite o IP do dispositivo (ex: 172.16.120.24): "
if "%IP%"=="" (
    echo IP nao pode ser vazio.
    goto input_ip
)

set PORT=5555

echo Conectando ao dispositivo %IP% via Wi-Fi...
%ADB_PATH% connect %IP%:%PORT%

echo.
echo Dispositivos conectados:
%ADB_PATH% devices

echo.
echo Iniciando aplicativo Flutter...
flutter run

endlocal
pause
