@ECHO OFF
set memsixtyfour=2G
set memthirtytwo=1G
if $SYSTEM_os_arch==x86 (
echo OS is 32
set mem=%memthirtytwo%
) else (
echo OS is 64
set mem=%memsixtyfour%
)
java -Xmx%mem% -XX:MaxPermSize=256M -Dfile.encoding=UTF-8 -jar Spigot.jar nogui
PAUSE
goto Start