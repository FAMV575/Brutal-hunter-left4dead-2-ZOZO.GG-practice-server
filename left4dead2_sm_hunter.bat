@echo off
echo ZL Brutal hunter training created by Zee
echo.
echo Enabling sourcemod...
xcopy left4dead2_sourcemod\* left4dead2 /Q /s /i /y
attrib +R left4dead2\cfg\config.cfg
echo Launching game...
left4dead2.exe -insecure -steam -novid +map "c8m1_apartment versus"
echo.
echo Disabling sourcemod...
rd /s /q left4dead2\addons\metamod
rd /s /q left4dead2\addons\sourcemod
rd /s /q left4dead2\addons\stripper
del /q left4dead2\addons\metamod.vdf
rd /s /q left4dead2\cfg\sourcemod
attrib -R left4dead2\cfg\config.cfg