@echo off
cls

:: Get project name
set /p NAME=What is the project's name? 
echo Ok! %NAME% will be used!
echo.

:: Get security email
set /p SECURITY_EMAIL=What email should security concerns go to? 
echo Ok! %SECURITY_EMAIL% will be used!
echo.

:: Get code of conduct email
set /p CODE_OF_CONDUCT_EMAIL=What email should contributor conduct issues go to? 
echo Ok! %CODE_OF_CONDUCT_EMAIL% will be used!
echo.

:: Replace placeholders in markdown files
echo Now replacing the placeholders in the repository...
powershell -Command "(Get-Content *.md) | ForEach-Object { $_ -replace '\[NAME\]', '%NAME%' } | Set-Content *.md"

powershell -Command "(Get-Content SECURITY.md) | ForEach-Object { $_ -replace '\[SECURITY_EMAIL\]', '%SECURITY_EMAIL%' } | Set-Content SECURITY.md"
powershell -Command "(Get-Content CODE_OF_CONDUCT.md) | ForEach-Object { $_ -replace '\[CODE_OF_CONDUCT_EMAIL\]', '%CODE_OF_CONDUCT_EMAIL%' } | Set-Content CODE_OF_CONDUCT.md"

cls
echo Successfully replaced the placeholders!
echo You still need to tailor the markdown files in the root repository though.
echo Good luck developer!
pause
