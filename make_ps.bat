::# From https://github.com/Tencent/puerts/issues/1796 Author:NiceTry12138 
set CUR_DIR=%~dp0
cd %CUR_DIR%

del /s/q buildPS5
mkdir buildPS5 & pushd buildPS5

cmake -DCMAKE_TOOLCHAIN_FILE="C:/Program Files (x86)/SCE/Prospero/Tools/CMake/PS5.cmake" ^
    -G "Visual Studio 17 2022" ^
    -DCMAKE_SYSTEM_NAME=Playstation ^
    -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON ^
    -DPS_PLATFORM=1 ^
	-DCMAKE_LINKER="C:/Program Files (x86)/SCE/Prospero SDKs/11.000/host_tools/bin/prospero-lld.exe" ^
    ..
    
popd
cmake --build buildPS5 --config Release

pause