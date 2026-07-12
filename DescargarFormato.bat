@echo off
:: Configura el titulo de la ventana
title Descargador de Horarios - Grupo Maestra

echo ======================================================
echo   Descargando Formato Estandar de Horarios...
echo   Por favor, espera un momento.
echo ======================================================
echo.

:: Comando de descarga limpia desde GitHub
curl --ssl-no-revoke -o "%USERPROFILE%\Downloads\Formato-Estandar-Horarios.xlsm" -L "https://raw.githubusercontent.com/Grupo-Maestra-SAS/FormatosDescarga/main/Formato-Estandar-Horarios.xlsm"

:: Validar si la descarga fue exitosa
if %errorlevel% equ 0 (
    echo.
    echo [EXITO] Archivo descargado correctamente en tu carpeta de Descargas.
    echo Abriendo el archivo en Excel...

    :: Abre el archivo descargado de forma automatica
    start "" "%USERPROFILE%\Downloads\Formato-Estandar-Horarios.xlsm"

    :: Espera 3 segundos antes de cerrar la ventana negra sola
    timeout /t 3 >nul
) else (
    echo.
    echo [ERROR] No se pudo descargar el archivo.
    echo Revisa tu conexion a internet o contacta al equipo tecnico.
    echo.
    pause
)
