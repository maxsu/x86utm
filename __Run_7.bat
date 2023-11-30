# Setup compiler environment
SET PATH=%PATH%;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsDevCmd.BAT" 

# Build x86utm Executable
cl.exe /EHsc x86utm.cpp api.c decode.c mem.c ops.c ops2.c prim_ops.c

# Build Halt7 Assembly
cl  /GS- /FA /FaHalt7.asm  /c /arch:IA32 Halt7.c 

# Process Halt7 Object File
# Q: Why do we process the Object File, rather than the Assembly?
x86utm Halt7.obj > Halt7out.txt
 
