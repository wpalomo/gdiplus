@echo off

rem ---------------------------------------------------------------
rem Template bat file for FWH using Borland Make tool
rem Copyright FiveTech 2002
rem Written by Ignacio Ortiz de Zu�iga
rem ---------------------------------------------------------------

:BUILD

   c:\bcc582\bin\make -ffwhtest.mak %2 %3 FWDIR=c:\fivewin\svn\repo\ HBDIR=c:\hb30 > make.log

   if errorlevel 1 goto BUILD_ERR

:BUILD_OK

   if exist %1.exe %1.exe
   goto EXIT

:BUILD_ERR

   notepad make.log
   goto EXIT

:EXIT