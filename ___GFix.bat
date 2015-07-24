@rem 
@echo off

rem call .git_setup\.git_ini.bat 

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git="%git_path%cmd\git.exe"
set prj_path=%~d0%~p0

rem %wait% colors

echo.
%wait% color 0B
echo add all...
%wait% color 0F
%git% reset
%git% add -A

echo ===============================
%git% status
echo ===============================
%git% status --short
echo ===============================

echo.
%wait% color 3B
echo commit...
%wait% color 0F
If "%TIME:~0,1%"==" " (
	set dt_now=%DATE:~6,10%_%DATE:~3,2%_%DATE:~0,2% 0%TIME:~1,1%:%TIME:~3,2%:%TIME:~6,5%
) else (
	set dt_now=%DATE:~6,10%_%DATE:~3,2%_%DATE:~0,2% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,5%
)
set comment0=Изменения от %dt_now%.
%wait% color 02
echo Коментарий:
%wait% color 1A
set /p comment="%comment0% "
%wait% color 08
set comment=%comment0% %comment%
echo %git% commit -m "%comment%"
%git% commit -m "%comment%"

echo.
%wait% color 0B
echo get all:
%wait% color 0F
if "%need_sinhro%"=="1" (
	%git% fetch --all
	rem %git% pull --all
	rem %git% push --all
) else (
	%wait% color EC
	echo.
	echo not sinhro!
)

echo.
%wait% color 0B
echo send all:
%wait% color 0F
if "%need_sinhro%"=="1" (
	rem %git% fetch --all
	rem %git% pull --all
	%git% push --all
) else (
	%wait% color EC
	echo.
	echo not sinhro!
)

echo.
%wait% wait 30

rem +++