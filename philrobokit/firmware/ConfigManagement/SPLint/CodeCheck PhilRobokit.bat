@echo off
echo ********************************************************************************** 	>  splint_output\splint_result.txt
echo ****************************   Checking CoreLib....   ****************************		>> splint_output\splint_result.txt
echo ********************************************************************************** 	>> splint_output\splint_result.txt

..\..\..\..\externals\tools\splint\bin\splint.exe -nestcomment -preproc ..\..\CoreLib\*.c >> splint_output\splint_result.txt


echo ********************************************************************************** 	>> splint_output\splint_result.txt
echo ****************************   Checking UserLib....   ****************************		>> splint_output\splint_result.txt
echo ********************************************************************************** 	>> splint_output\splint_result.txt

echo ----------------------------------- 	>> splint_output\splint_result.txt
echo *** Checking ServoLib.... ***			>> splint_output\splint_result.txt
echo ----------------------------------- 	>> splint_output\splint_result.txt

..\..\..\..\externals\tools\splint\bin\splint.exe -nestcomment -preproc ..\..\UserLib\servo\*.c >> splint_output\splint_result.txt


echo ********************************************************************************** 	>> splint_output\splint_result.txt

pause

