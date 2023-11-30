REM Setup compiler environment
SET PATH=%PATH%;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.BAT" 

REM Build x86utm Executable
cl.exe /EHsc x86utm.cpp api.c decode.c mem.c ops.c ops2.c prim_ops.c

REM Build Halt7 Assembly
cl  /GS- /FA /FaHalt7.asm  /c /arch:IA32 Halt7.c 

REM Process Halt7 Object File
x86utm Halt7.obj > Halt7out.txt
