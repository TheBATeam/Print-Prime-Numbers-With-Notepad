
:: As prime Numbers can be divided only by two...numbers_______1 and itself....
:: so, this property of prime nos. is used in this program...



@echo off
cls
Title Print first 'n' prime Nos.
setlocal enabledelayedexpansion
echo.
set a=2
set Numcount=1
:top
set /p "n=Last Prime no. you want to See ? : "
if not defined n (goto top)
::set /a "n=%n%"
if "%n%" leq "0" (goto error)
goto calculate_prime

:calculate_prime
set count=0
for /l %%x in (!numCount!,1,!n!) do (
set me=1
for /l %%a in (2,1,!a!) do (
	set /a remainder=!a!%%%%a
	if not defined remainder (echo. Error in Nested for loop !!!&pause>nul)
	if /i "!remainder!" == "0" (set /a me+=1)
	set remainder=
	)
if /i "!me!" == "2" (echo.!a!)
set /a a+=1
)
goto end

:end
pause
exit /b

:error
echo. Invalid Entry !!!
timeout /t "2">nul
goto top