echo off
color 0c
Setlocal EnableDelayedExpansion


set /p file=Nhap ten file: 
set /p gen_i=Nhap ten file sinh input *.exe: 
set /p gen_o1=Nhap ten file sinh output trau*.exe: 
set /p gen_o2=Nhap ten file sinh output *.exe: 
set /p n=Nhap so test can sinh: 

set /a count=0

FOR /L %%X IN (1,1,%n%) DO (
	%gen_i% > %file%%%X.inp
	%gen_o1% < %file%%%X.inp > %file%%%X_1.out
	%gen_o2% < %file%%%X.inp > %file%%%X_2.out
	fc %file%%%X_1.out %file%%%X_2.out > db
	if errorlevel 1 (
		echo test%%X WA
		set /a count=%count%+1
	) ELSE echo test%%X AC
	rem echo.
)

IF %count%==0 (
	echo All test passed
	) ELSE (
	echo Wrong %count% test
	)

set /p del=Xoa het file test[y/n]?: 
if %del%==y goto cc

:cc
FOR /L %%X IN (1,1,%n%) DO (
		del %file%%%X.inp
		del %file%%%X_1.out
		del %file%%%X_2.out
	)
	

pause
