@echo OFF

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OSVERSION=32BIT || set OSVERSION=64BIT

if %OSVERSION%==32BIT (
  Windows6.1-KB2506143-x86.msu /quiet
) else (
  Windows6.1-KB2506143-x64.msu /quiet
)