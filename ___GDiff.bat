@rem 
@echo off

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git="%git_path%cmd\git.exe"
set prj_path=%~d0%~p0

rem %wait% colors

echo.
%wait% color 0B
echo Îòëè÷èÿ

%wait% color 0F
%git% reset
%git% add -A

%wait% color 0B

%wait% color 0F
%git% add -A
echo ===============================
%git% status
echo ===============================
%git% status --short
echo ===============================

pause
exit

															echo ----------------------------

echo git diff
echo ----------------------------
%git% pull
%git% diff
echo ----------------------------
echo status
%git% status -help
echo ----------------------------
%git% status --ignored
echo ----------------------------
%git% status
echo ----------------------------
%git% status --short
echo ----------------------------
%git% status --untracked-files
echo ----------------------------
%git% diff --name-only
echo ----------------------------
%git% diff --name-only --staged
echo ----------------------------
%git% status -s --porcelain
echo ----------------------------+
echo ----------------------------*
echo  ls-files --modified
%git% ls-files --modified
echo ----------------------------
echo  ls-files --ignored
%git% ls-files --ignored
rem %git% ls-files --[cached|deleted|others|ignored|stage|unmerged|killed|modified]
echo ----------------------------
%git% show -help
echo ----------------------------
%git% diff HEAD
%git% show –name-only 
echo ----------------------------

 status --untracked-files=M
File status flags:
M modified - File has been modified
C copy-edit - File has been copied and modified
R rename-edit - File has been renamed and modified
A added - File has been added
D deleted - File has been deleted
U unmerged - File has conflicts after a merge

%git% status -u no
echo ----------------------------
%git% diff ls-files -m
echo ----------------------------
%git% diff --name-status
%git% diff --name-status --oneline
%git% diff --name-status SHA1
echo ----------------------------
%git% diff --name-status TAG
echo ----------------------------
rem %git% diff --name-only SHA1 SHA2
rem %git% diff --name-only HEAD~10 HEAD~5
echo ----------------------------
			%git% status --verbose
			echo ----------------------------

echo ----------------------------
%git% checkout -help
echo ----------------------------
%git% checkout
echo ----------------------------
%git% checkout -q
echo ----------------------------
%git% merge
echo ----------------------------

pause
exit
%git% diff
%git% diff -help

%wait% color 0F
rem %git% diff --cached

echo.
%wait% wait 30

rem +++