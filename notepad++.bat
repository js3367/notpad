@echo off
set filstig=%1

if "%filstig%" == "" (
set filstig=.
)


if exist %filstig% (
		echo %filstig% finns 
) else (
		echo %filstig% finns inte		
)
	
set stig=%2

if exist %filstig%\ (
	echo %filstig% katalog
) else ( 
	echo File 
)
	
for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%`) do ( 
		
	if "%%b"=="tiedosto(a)" (
		
		set antal_filer=%%a
		set strolke=%%c 
	)	
)
echo %antal_filer% filer
echo %strolke% size
echo %tiedosto% mapar