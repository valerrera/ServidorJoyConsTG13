@echo off
rem Servidor de Joy-Cons portable: copiar ESTA carpeta completa a cualquier PC con
rem Windows 10/11 de 64 bits. No hace falta instalar nada (los DLL van incluidos).
rem Uso: doble clic, o desde consola:  iniciar_servidor_joycons.bat [puerto] [max_controles]
rem Ctrl+C para detenerlo.

set PUERTO=%1
if "%PUERTO%"=="" set PUERTO=60123
set MAX=%2
if "%MAX%"=="" set MAX=8

echo IP(s) de este PC (la que va en serverHost en Unity):
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do echo   %%a
echo.

"%~dp0joycon_vrpn_server.exe" %PUERTO% %MAX%
pause
