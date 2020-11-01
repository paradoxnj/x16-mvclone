@echo off

SET PRGNAME=X16-MVCLONE

@echo Cleaning up
if exist .\bin\*.prg del /q .\bin\*.prg
if exist .\bin\*.sym del /q .\bin\*.sym
if exist *.txt del /q *.txt
::if exist *.x16 del /q *.x16
::if exist *-x16.pal del /q *-x16.pal
::if exist *.map del /q *.map

if exist ..\..\emulator\%PRGNAME%.prg del /q ..\..\emulator\%PRGNAME%.prg

@echo Compiling sources
::..\..\tools\acme\acme.exe -f cbm --cpu 65c02 -o %PRGNAME%.PRG -l %PRGNAME%.lst %PRGNAME%.asm
java -jar ..\..\tools\KickAssembler\KickAss.jar -debug -bytedump -showmem -maxAddr 131072 -odir .\bin %PRGNAME%.asm 
if not exist .\bin\%PRGNAME%.prg goto END

@echo Copy prg to emulator
if exist .\bin\%PRGNAME%.prg copy .\bin\*.prg ..\..\emulator /y
::if exist *.x16 copy *.x16 ..\..\emulator /y
::if exist *.pal copy *.pal ..\..\emulator /y

@echo Run the program in the emulator
if exist ..\..\emulator\%PRGNAME%.prg ..\..\emulator\x16emu.exe -debug -run -prg ..\..\emulator\%PRGNAME%.prg -ram 2048 

:END
