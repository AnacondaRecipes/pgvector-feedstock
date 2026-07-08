@echo on

set "LIBRARY_PREFIX=%LIBRARY_PREFIX:\=/%"
set "PGROOT=%LIBRARY_PREFIX%"

nmake /NOLOGO /F Makefile.win
if errorlevel 1 exit 1
nmake /NOLOGO /F Makefile.win install
if errorlevel 1 exit 1
