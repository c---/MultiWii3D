REM build script by Chris Osgood 2013-03-31 http://luadev.com/rc/

@SET AVRA=avra -fI -o %%~nF.inc.hex -D %%~nF_esc -e %%~nF.eeprom -d %%~nF.obj %%~nF.asm

@FOR /F "tokens=1,2,*" %%i in (Makefile) DO (
   @IF "%%i"=="ALL_TARGETS" (
      @FOR %%F IN (%%k) DO (
         @IF NOT EXIST %%~nF.asm (
            COPY tgy.asm %%~nF.asm
            %AVRA%
            DEL %%~nF.asm
         ) else (
            %AVRA%
         )
      )

      goto exit
   )
)

:exit
