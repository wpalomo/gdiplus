@echo off

rem ---------------------------------------------------------------
rem Template bat file for FWH using Borland Make tool
rem Copyright FiveTech 2002
rem Written by Ignacio Ortiz de Zu�iga
rem ---------------------------------------------------------------

:BUILD

   g:\bcc582\bin\make -ffwh.mak %2 %3 FWDIR=g:\repo HBDIR=g:\hB30 > make.log
   if errorlevel 1 goto BUILD_ERR

:BUILD_OK

   if exist %1.exe %1.exe
   goto EXIT

:BUILD_ERR

   notepad make.log
   goto EXIT

:EXIT