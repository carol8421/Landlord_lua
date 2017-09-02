@echo off
set CUR_PATH=%~dp0

::new Landlord
::cocos new Landlord -p com.game.landlord -l lua -d D:\Projects\Cocos
::cocos new Landlord -p com.game.landlord -l js  -d D:\Projects\Cocos

::compile win32
::cocos compile -p win32   -s %CUR_PATH%
::compile android
::cocos compile -p android -s %CUR_PATH% --ap android-20

::kill exe
::taskkill /im /f simulator.exe

::run
start %CUR_PATH%/runtime/win32/simulator.exe ^
		-workdir %CUR_PATH% ^
		-write-debug-log src/debug.log ^
		-resolution 1280x720 ^
		-scale 0.75 ^
		-position 1,1 