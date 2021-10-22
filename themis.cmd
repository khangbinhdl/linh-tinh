echo off
color 0c
Setlocal EnableDelayedExpansion


set /p fol=Nhap ten folder: 
set /p gen_i=Nhap ten file sinh input *.exe: 
set /p gen_o=Nhap ten file sinh output *.exe: 
set /p n=Nhap so test can sinh: 

set location=%cd%

mkdir %fol%
cd %fol%

FOR /L %%X IN (1,1,%n%) DO (
   echo.
   echo test %%X
   mkdir test%%X
   cd test%%X
   %location%/%gen_i% > %fol%.inp
   %location%/%gen_o% < %fol%.inp > %fol%.out
   cd..
   echo.
)

pause
