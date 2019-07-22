
@echo off
set ip2=0
:loop2
if %ip2%==1 goto :koniec2
set ip1=100
	:loop1
	if %ip1%==255 goto :koniec1
			ping -n 1 -w 100 192.168.%ip2%.%ip1% | find "TTL" >>wynik_ping2.txt
		set /a ip1=%ip1%+1
		echo 192.168.%ip2%.%ip1% 
	goto :loop1
			  :koniec1

set /a ip2=%ip2%+1
goto :loop2
:koniec2
pause
