@echo OFF

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OSVERSION=32BIT || set OSVERSION=64BIT

if %OSVERSION%==32BIT (
  call Windows6.1-KB2506143-x86.msu /quiet /norestart
) else (
  call Windows6.1-KB2506143-x64.msu /quiet /norestart
)

if %ERRORLEVEL% == 0 (
  shutdown.exe /r /t 00
)