@echo off
if not exist SaveGame md SaveGame
mode 79,30
title GameQuiz
cd SaveGame
if not exist color.inf echo 1e>color.inf
set level=0
set hearts=0
set chcp=chcp 850^>nul
:menu
mode 79,30
mode con: cols=79 lines=30
powershell -Command "$Width = 79; $Height = 30; $Host.UI.RawUI.BufferSize = New-Object Management.Automation.Host.Size -ArgumentList $Width, $Height; $Host.UI.RawUI.WindowSize = New-Object Management.Automation.Host.Size -ArgumentList $Width, $Height"
set bgcolor=
set usernot=
set advance=
%chcp%
set /p color=<color.inf
color %color%
set button=%color:~1%
set bg=%color:~0,1%
set text=%button%
set button=%button%%color:~0,1%
set A=
set AA=
set AAA=
set AAAA=
set AAAAA=
set AAAAAA=
set AAAAAAA=
set AAAAAAAA=
set AAAAAAAAA=
set AAAAAAAAAA=
if %level% GTR 9 set A=Ä
if %level% GTR 99 set AA=Ä
if %level% GTR 999 set AAA=Ä
if %level% GTR 9999 set AAAA=Ä
if %level% GTR 99999 set AAAAA=Ä
if %level% GTR 999999 set AAAAAA=Ä
if %level% GTR 9999999 set AAAAAAA=Ä
if %level% GTR 99999999 set AAAAAAAA=Ä
if %level% GTR 999999999 set AAAAAAAAA=Ä
if %level% GTR 9999999999 set AAAAAAAAAA=Ä
if %hearts% GTR 5 set hearts=1
cls
if defined user (echo  N¡vel = %level% ³) ELSE echo.
if defined user (echo ÄÄÄÄÄ%A%%AA%%AAA%%AAAA%%AAAAA%%AAAAAA%%AAAAAAA%%AAAAAAAA%%AAAAAAAAA%%AAAAAAAAAA%ÄÄÄÄÄÄÙ) ELSE echo.
if defined user (echo.                                   Vidas:  %hearts%) ELSE echo.
echo.
echo                                   ÚÄÄÄÄÄÄÄÄÄ¿
echo                                   Ù         À
echo.                                            
echo                                   ¿         Ú
echo                                   ÀÄÄÄÄÄÄÄÄÄÙ
echo.
echo                                 ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo                                 Ù             À
echo.                                            
echo                                 ¿             Ú
echo                                 ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo.
chcp 1252>nul
echo.%user%
%chcp%
echo.
echo          ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄConfigura‡äesÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
Call Button 35 5 %button% "Jogar" 33 11 %button% "Novo Jogo" 28 20 %color% "Trocar Cor Da Tela" 29 23 %color% "Trocar o Jogador" 28 26 %color% "Deletar Um Jogador" X _Box _hover
GetInput /M %_Box% /H 70
if "%Errorlevel%" == "1" (set perfil=1&set select=&set user1=&set user2=&set user3=&set user4=&set user5=&set p1=&set p2=&set p3=&set p4=&set p5=&goto perfilbusc)
if "%Errorlevel%" == "2" goto reset
if "%Errorlevel%" == "3" (color %color%&goto cores)
if "%Errorlevel%" == "4" (set perfil=1&set select=1&set user1=&set user2=&set user3=&set user4=&set user5=&set p1=&set p2=&set p3=&set p4=&set p5=&goto perfilbusc)
if "%Errorlevel%" == "5" (set perfil=1&set user1=&set user2=&set user3=&set user4=&set user5=&set p1=&set p2=&set p3=&set p4=&set p5=&goto perfilbuscdel)
goto menu
:perfilbuscdel
if not exist perfil%perfil%.inf (goto selectdel) ELSE (set p%perfil%=%perfil%  -)
if "%perfil%" == "6" (set usernot=1&goto select)
chcp 1252>nul
set /p user%perfil%=<perfil%perfil%.inf
set /a perfil=%perfil%+1
goto perfilbuscdel
:selectdel
set Criar=
set /p color=<color.inf
color %color%
set button=%color:~1%
set bg=%color:~0,1%
set text=%button%
set button=%button%%color:~0,1%
if not defined user1 (echo msgbox "Não há jogadores para deletar",vbinformation," ">"%temp%\msg.vbs"&timeout /t 2 /nobreak >nul&start "Sucesso" "%temp%\msg.vbs"&goto menu)
cls
echo.
echo.
%chcp%
echo       ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄPerfisÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo.
echo.
echo.
echo.           %p1% 
echo.
echo.
echo.           %p2% 
echo.
echo.
echo.           %p3% 
echo.
echo.
echo.           %p4% 
echo.
echo.
echo.           %p5% 
echo.
echo.
echo.
echo.
echo.
echo.
echo Prima um jogador para delet -lo.
chcp 1252>nul
Call Button 15 5 %color% "%user1%" 15 8 %color% "%user2%" 15 11 %color% "%user3%" 15 14 %color% "%user4%" 15 17 %color% "%user5%" 66 25 %button% "Voltar" X _Box _hover
GetInput /M %_Box% /H 70
if "%Errorlevel%" == "1" if not defined user1 goto select
if "%Errorlevel%" == "2" if not defined user2 goto select
if "%Errorlevel%" == "3" if not defined user3 goto select
if "%Errorlevel%" == "4" if not defined user4 goto select
if "%Errorlevel%" == "5" if not defined user5 goto select
if "%Errorlevel%" == "6" goto menu
goto D%Errorlevel%
:D1
set "usertemp=%user:Jogador: =%"
if /i "%usertemp%" == "%user1%" set user=
del /q Perfil1.inf
if exist perfil2.inf move perfil2.inf perfil1.inf >nul
if exist perfil3.inf move perfil3.inf perfil2.inf >nul
if exist perfil4.inf move perfil4.inf perfil3.inf >nul
if exist perfil5.inf move perfil5.inf perfil4.inf >nul
echo msgbox "Jogador deletado.",vbinformation," ">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
start "Sucesso" "%temp%\msg.vbs"
goto menu
:D2
set "usertemp=%user:Jogador: =%"
if /i "%usertemp%" == "%user2%" set user=
del /q Perfil2.inf
if exist perfil3.inf move perfil3.inf perfil2.inf >nul
if exist perfil4.inf move perfil4.inf perfil3.inf >nul
if exist perfil5.inf move perfil5.inf perfil4.inf >nul
echo msgbox "Jogador deletado.",vbinformation," ">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
start "Sucesso" "%temp%\msg.vbs"
goto menu
:D3
set "usertemp=%user:Jogador: =%"
if /i "%usertemp%" == "%user3%" set user=
del /q Perfil3.inf
if exist perfil4.inf move perfil4.inf perfil3.inf >nul
if exist perfil5.inf move perfil5.inf perfil4.inf >nul
echo msgbox "Jogador deletado.",vbinformation," ">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
start "Sucesso" "%temp%\msg.vbs"
goto menu
:D4
set "usertemp=%user:Jogador: =%"
if /i "%usertemp%" == "%user4%" set user=
del /q Perfil4.inf
if exist perfil5.inf move perfil5.inf perfil4.inf >nul
echo msgbox "Jogador deletado.",vbinformation," ">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
start "Sucesso" "%temp%\msg.vbs"
goto menu
:D5
set "usertemp=%user:Jogador: =%"
if /i "%usertemp%" == "%user5%" set user=
del /q Perfil5.inf
echo msgbox "Jogador deletado.",vbinformation," ">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
start "Sucesso" "%temp%\msg.vbs"
goto menu
:reset
cls
color %color%
Call Button 23 5 %button% "Resetar Progresso e Continuar" 33 15 %button% "Cancelar" X _Box _hover
GetInput /M %_Box% /H 70
if "%Errorlevel%" == "1" goto redefinir
if "%Errorlevel%" == "2" goto menu
goto reset
:redefinir
if not defined user (set advance=1&set perfil=1&set select=1&set user1=&set user2=&set user3=&set user4=&set user5=&set p1=&set p2=&set p3=&set p4=&set p5=&goto perfilbusc)
chcp 1252>nul
set "usertemp=%user:Jogador: =%"
set /p Comp=<perfil1.inf
if /i "%usertemp%" == "%Comp%" (echo>perfil1.inf %usertemp%&echo>>perfil1.inf level 1&echo>>perfil1.inf hearts 5&goto play)
set /p Comp=<perfil2.inf
if /i "%usertemp%" == "%Comp%" (echo>perfil2.inf %usertemp%&echo>>perfil2.inf level 1&echo>>perfil2.inf hearts 5&goto play)
set /p Comp=<perfil3.inf
if /i "%usertemp%" == "%Comp%" (echo>perfil3.inf %usertemp%&echo>>perfil3.inf level 1&echo>>perfil3.inf hearts 5&goto play)
set /p Comp=<perfil4.inf
if /i "%usertemp%" == "%Comp%" (echo>perfil4.inf %usertemp%&echo>>perfil4.inf level 1&echo>>perfil4.inf hearts 5&goto play)
set /p Comp=<perfil5.inf
if /i "%usertemp%" == "%Comp%" (echo>perfil5.inf %usertemp%&echo>>perfil5.inf level 1&echo>>perfil5.inf hearts 5&goto play)
echo msgbox "Ocorreu um erro.",vbcritical,"Erro">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
"%temp%\msg.vbs"
goto reset
:perfilbusc
if defined user if not defined select goto play
if not exist perfil%perfil%.inf (goto select) ELSE (set p%perfil%=%perfil%  -)
if "%perfil%" == "6" (set usernot=1&goto select)
chcp 1252>nul
set /p user%perfil%=<perfil%perfil%.inf
set /a perfil=%perfil%+1
goto perfilbusc
:select
%chcp%
set Criar=
if defined advance goto G7
if not defined user5 set Criar=3 25 %button% "Criar"
set /p color=<color.inf
color %color%
set button=%color:~1%
set bg=%color:~0,1%
set text=%button%
set button=%button%%color:~0,1%
cls
echo.
echo.
echo       ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄPerfisÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo.
echo.
echo.
chcp 1252>nul
echo.           %p1% 
echo.
echo.
echo.           %p2% 
echo.
echo.
echo.           %p3% 
echo.
echo.
echo.           %p4% 
echo.
echo.
echo.           %p5% 
echo.
Call Button 33 25 %color% "       " 15 5 %color% "%user1%" 15 8 %color% "%user2%" 15 11 %color% "%user3%" 15 14 %color% "%user4%" 15 17 %color% "%user5%" %Criar% 66 25 %button% "Voltar" X _Box _hover
GetInput /M %_Box% /H 70
if "%Errorlevel%" == "1" goto select
if "%Errorlevel%" == "2" if not defined user1 goto select
if "%Errorlevel%" == "3" if not defined user2 goto select
if "%Errorlevel%" == "4" if not defined user3 goto select
if "%Errorlevel%" == "5" if not defined user4 goto select
if "%Errorlevel%" == "6" if not defined user5 goto select
if "%Errorlevel%" == "7" (if not defined Criar goto G8&goto G7)
goto G%Errorlevel%
:G2
for /f "tokens=*" %%i in ('"find "level" perfil1.inf"') do set level=%%i
set "level=%level:level =%"
chcp 850>nul
set user=Jogador: %user1%
for /f "tokens=*" %%i in ('"find "hearts" perfil1.inf"') do set hearts=%%i
set "hearts=%hearts:hearts =%"
set chcp=chcp 850^>nul
goto menu
:G3
for /f "tokens=*" %%i in ('"find "level" perfil2.inf"') do set level=%%i
set "level=%level:level =%"
set user=Jogador: %user2%
for /f "tokens=*" %%i in ('"find "hearts" perfil2.inf"') do set hearts=%%i
set "hearts=%hearts:hearts =%"
set chcp=chcp 850^>nul
goto menu
:G4
for /f "tokens=*" %%i in ('"find "level" perfil3.inf"') do set level=%%i
set "level=%level:level =%"
set user=Jogador: %user3%
for /f "tokens=*" %%i in ('"find "hearts" perfil3.inf"') do set hearts=%%i
set "hearts=%hearts:hearts =%"
set chcp=chcp 850^>nul
goto menu
:G5
for /f "tokens=*" %%i in ('"find "level" perfil4.inf"') do set level=%%i
set "level=%level:level =%"
set user=Jogador: %user4%
for /f "tokens=*" %%i in ('"find "hearts" perfil4.inf"') do set hearts=%%i
set "hearts=%hearts:hearts =%"
set chcp=chcp 850^>nul
goto menu
:G6
for /f "tokens=*" %%i in ('"find "level" perfil5.inf"') do set level=%%i
set "level=%level:level =%"
set user=Jogador: %user5%
for /f "tokens=*" %%i in ('"find "hearts" perfil5.inf"') do set hearts=%%i
set "hearts=%hearts:hearts =%"
set chcp=chcp 850^>nul
goto menu
:G7
set /p color=<color.inf
color %color%
set button=%color:~1%
set bg=%color:~0,1%
set text=%button%
set button=%button%%color:~0,1%
if defined user1 set "user1=%user1:^=^^%"
if defined user1 set "user1=%user1:>=^>%"
if defined user1 set "user1=%user1:<=^<%"
if defined user1 set "user1=%user1:|=^|%"
if defined user1 set "user1=%user1:&=^&%"
if defined user2 set "user2=%user2:^=^^%"
if defined user2 set "user2=%user2:>=^>%"
if defined user2 set "user2=%user2:<=^<%"
if defined user2 set "user2=%user2:|=^|%"
if defined user2 set "user2=%user2:&=^&%"
if defined user3 set "user3=%user3:^=^^%"
if defined user3 set "user3=%user3:>=^>%"
if defined user3 set "user3=%user3:<=^<%"
if defined user3 set "user3=%user3:|=^|%"
if defined user3 set "user3=%user3:&=^&%"
if defined user4 set "user4=%user4:^=^^%"
if defined user4 set "user4=%user4:>=^>%"
if defined user4 set "user4=%user4:<=^<%"
if defined user4 set "user4=%user4:|=^|%"
if defined user4 set "user4=%user4:&=^&%"
cls
%chcp%
echo.
echo.
echo       ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄPerfisÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo.
echo.
echo.
chcp 1252>nul
echo.           %p1%  %user1%
echo.
echo.
echo.           %p2%  %user2%
echo.
echo.
echo.           %p3%  %user3%
echo.
echo.
echo.           %p4%  %user4%
echo.
echo.
echo.           %p5%  %user5%
%chcp%
echo.
echo.
echo.
chcp 1252>nul
::set chcp=chcp1252^>nul
set Creat=
set /p Creat=Digite o nome do jogador: 
if not defined Creat goto G7
echo "%Creat%" | find /i ">" >nul
if "%errorlevel%" == "0" goto CreatError
echo "%Creat%" | find /i "<" >nul
if "%errorlevel%" == "0" goto CreatError
echo "%Creat%" | find /i "|" >nul
if "%errorlevel%" == "0" goto CreatError
echo "%Creat%" | find /i "&" >nul
if "%errorlevel%" == "0" goto CreatError
echo "%Creat%" | find /i "^" >nul
if "%errorlevel%" == "0" goto CreatError
set perfil=1
:loop
if not exist perfil%perfil%.inf goto visto
if "%perfil%" == "6" goto visto
set /p V%perfil%=<perfil%perfil%.inf
set /a perfil=%perfil%+1
goto loop
:visto
if /i "%Creat%" == "%V1%" goto Exist
if /i "%Creat%" == "%V2%" goto Exist
if /i "%Creat%" == "%V3%" goto Exist
if /i "%Creat%" == "%V4%" goto Exist
if /i "%Creat%" == "%V5%" goto Exist
if not defined user1 (echo>Perfil1.inf %Creat%&echo>>Perfil1.inf level 1&echo>>Perfil1.inf hearts 5&set level=1&set hearts=5&set user=Jogador: %Creat%&goto menu)
if not defined user2 (echo>Perfil2.inf %Creat%&echo>>Perfil2.inf level 1&echo>>Perfil2.inf hearts 5&set level=1&set hearts=5&set user=Jogador: %Creat%&goto menu)
if not defined user3 (echo>Perfil3.inf %Creat%&echo>>Perfil3.inf level 1&echo>>Perfil3.inf hearts 5&set level=1&set hearts=5&set user=Jogador: %Creat%&goto menu)
if not defined user4 (echo>Perfil4.inf %Creat%&echo>>Perfil4.inf level 1&echo>>Perfil4.inf hearts 5&set level=1&set hearts=5&set user=Jogador: %Creat%&goto menu)
if not defined user5 (echo>Perfil5.inf %Creat%&echo>>Perfil5.inf level 1&echo>>Perfil5.inf hearts 5&set level=1&set hearts=5&set user=Jogador: %Creat%&goto menu)
echo msgbox "Ocorreu um erro ao tentar criar perfil.",vbcritical+vbapplicationmodal,"Erro">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
"%temp%\msg.vbs"
goto menu
:CreatError
echo msgbox "O nome não pode conter > < | & ^",vbinformation+vbapplicationmodal,"Aviso">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
start "Error" "%temp%\msg.vbs"
goto G7
:Exist
echo msgbox "Esse nome já está sendo usado",vbexclamation+vbapplicationmodal,"Aviso">"%temp%\msg.vbs"
timeout /t 2 /nobreak >nul
start "Error" "%temp%\msg.vbs"
goto G7
:G8
goto menu
:cores
if not defined bgcolor color %color%
set bgcolor=1
mode 79,40
cls
echo.
echo       ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄFundoÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo           ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄLetraÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo       ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
chcp 1252>nul
Call Button 1 4 0F "Preto" 11 4 1F "Azul" 20 4 2F "Verde" 30 4 3F "Verde-água" 45 4 4F "Vermelho" 58 4 5F "Roxo" 67 4 6F "Amarelo" 1 8 7F "Branco" 12 8 8F "Cinza" 22 8 9F "Azul Claro" 37 8 AF "Verde Claro" 53 8 BF "Verde-água Claro" 1 12 CF "Vermelho Claro" 20 12 DF "Lilás" 30 12 E7 "Amarelo Claro" 48 12 F7 "Branco Brilhante" 1 20 0F "Preto" 11 20 1F "Azul" 20 20 2F "Verde" 30 20 3F "Verde-água" 45 20 4F "Vermelho" 58 20 5F "Roxo" 67 20 6F "Amarelo" 1 24 7F "Branco" 12 24 8F "Cinza" 22 24 9F "Azul Claro" 37 24 AF "Verde Claro" 53 24 BF "Verde-água Claro" 1 28 CF "Vermelho Claro" 20 28 DF "Lilás" 30 28 E7 "Amarelo Claro" 48 28 F7 "Branco Brilhante" 3 35 %button% "Salvar" 32 35 %button% "Restaurar" 64 35 %button% "Cancelar" X _Box _hover
chcp 850>nul
GetInput /M %_Box% /H 70
if "%Errorlevel%" == "1" (set bg=0&goto bg)
if "%Errorlevel%" == "2" (set bg=1&goto bg)
if "%Errorlevel%" == "3" (set bg=2&goto bg)
if "%Errorlevel%" == "4" (set bg=3&goto bg)
if "%Errorlevel%" == "5" (set bg=4&goto bg)
if "%Errorlevel%" == "6" (set bg=5&goto bg)
if "%Errorlevel%" == "7" (set bg=6&goto bg)
if "%Errorlevel%" == "8" (set bg=7&goto bg)
if "%Errorlevel%" == "9" (set bg=8&goto bg)
if "%Errorlevel%" == "10" (set bg=9&goto bg)
if "%Errorlevel%" == "11" (set bg=A&goto bg)
if "%Errorlevel%" == "12" (set bg=B&goto bg)
if "%Errorlevel%" == "13" (set bg=C&goto bg)
if "%Errorlevel%" == "14" (set bg=D&goto bg)
if "%Errorlevel%" == "15" (set bg=E&goto bg)
if "%Errorlevel%" == "16" (set bg=F&goto bg)
if "%Errorlevel%" == "17" (set text=0&goto text)
if "%Errorlevel%" == "18" (set text=1&goto text)
if "%Errorlevel%" == "19" (set text=2&goto text)
if "%Errorlevel%" == "20" (set text=3&goto text)
if "%Errorlevel%" == "21" (set text=4&goto text)
if "%Errorlevel%" == "22" (set text=5&goto text)
if "%Errorlevel%" == "23" (set text=6&goto text)
if "%Errorlevel%" == "24" (set text=7&goto text)
if "%Errorlevel%" == "25" (set text=8&goto text)
if "%Errorlevel%" == "26" (set text=9&goto text)
if "%Errorlevel%" == "27" (set text=A&goto text)
if "%Errorlevel%" == "28" (set text=B&goto text)
if "%Errorlevel%" == "29" (set text=C&goto text)
if "%Errorlevel%" == "30" (set text=D&goto text)
if "%Errorlevel%" == "31" (set text=E&goto text)
if "%Errorlevel%" == "32" (set text=F&goto text)
if "%Errorlevel%" == "33" (echo>color.inf %bg%%text%&goto menu)
if "%Errorlevel%" == "34" (set bg=1&set text=e&color 1e&goto cores)
if "%Errorlevel%" == "35" goto menu
goto cores
:bg
if defined text goto colorbg
if not defined notcolor if /i "%bg%" == "%color:~1%" goto error
if defined notcolor if /i "%bg%" == "e" goto error
if not defined notcolor color %bg%%color:~1%
if defined notcolor color %bg%e
goto cores
:colorbg
if /i "%bg%" == "%text%" goto error
if not defined notcolor color %bg%%text%
if defined notcolor color %bg%e
:text
if defined bg goto colortext
if not defined notcolor if /i "%text%" == "%color:~0,1%" goto error
if defined notcolor if /i "%text%" == "e" goto error
if not defined notcolor color %color:~0,1%%text%
if defined notcolor color 1%text%
goto cores
:colortext
if /i "%text%" == "%bg%" goto error
if not defined notcolor color %bg%%text%
if defined notcolor color %bg%%text%
goto cores
:error
echo msgbox "Não é possível ter fundo e texto da mesma cor.",vbexclamation+vbapplicationmodal,"Aviso">"%temp%\msg.vbs
"%temp%\msg.vbs"
goto cores








:play
color %color%
chcp 850>nul
set fase1aleatory=%random:~-1%
if "%fase1aleatory%" == "3" set fase1aleatory=0
if "%fase1aleatory%" == "4" set fase1aleatory=1
if "%fase1aleatory%" == "5" set fase1aleatory=2
if "%fase1aleatory%" == "6" set fase1aleatory=0
if "%fase1aleatory%" == "7" set fase1aleatory=1
if "%fase1aleatory%" == "8" set fase1aleatory=2
if "%fase1aleatory%" == "9" set fase1aleatory=0
set fase2count1=%random:~-1%
set fase2count2=%random:~-1%
set fase2count3=%random:~-1%
set /a fase2countRESULTmultiple=%fase2count2%*%fase2count3%
set /a fase2countRESULT=%fase2countRESULTmultiple%+%fase2count1%
goto Fase%level%
:errou-a-pergunta
set jdv1=
set jdv2=
set jdv3=
set jdv4=
set jdv5=
set jdv6=
set jdv7=
set jdv8=
set jdv9=
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vidas: %hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     ^|idas: %hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     V^|das: %hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vi^|as: %hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vid^|s: %hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vida^|: %hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vidas^| %hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vidas:^|%hearts%
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vidas: ^|
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
set /a hearts=%hearts%-1
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vidas: %hearts%^|
echo.
echo.
echo.
echo.
timeout /t 0 /nobreak >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                     Vidas: %hearts%
echo.
echo.
echo.
echo.
timeout /t 2 >nul
goto Fase%level%
:Fase1
title Fase 1: A substƒncia
goto aleatory%fase1aleatory%
:aleatory0
cls
set play1=
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  Se uma substƒncia muda de s¢lido pra l¡quido com 70øc, e de l¡quido pra gasosocom 120øc, qual ‚ o estado atual da substƒncia com uma temperatura de 83øc?
echo.
echo.
echo.
echo.
echo.
echo.
set /p play1=
if not defined play1 goto Fase1
if /i "%play1%" == "l¡quido" goto congratulations1aleatory0
if /i "%play1%" == "liquido" goto congratulations1aleatory0
goto errou-a-pergunta
:congratulations1aleatory0
cls
echo.Parab‚ns! Veja a explica‡Æo:
echo.(TEMP=Temperatura)
echo.
echo.
echo.
echo.
echo.                                          /
echo.                                         /
echo.                                        /
echo.                                       /   Gasoso
echo.                                      /
echo. TEMP. 120øc_________________________/
echo.                           /
echo.                          /
echo. TEMP. atual 83øc        /
echo.                        /   L¡quido
echo.                       /
echo. TEMP. 70øc___________/
echo.            /
echo.           /
echo.          /
echo.         /   S¢lido
echo.        /
echo.       /
echo.
echo.
echo.
echo.
echo.
pause
set /a level=%level%+1
goto fase2
:aleatory1
cls
set play1=
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  Se uma substƒncia muda de s¢lido pra l¡quido com 42øc, e de l¡quido pra gasosocom 58øc, qual ‚ o estado atual da substƒncia com uma temperatura de 36øc?
echo.
echo.
echo.
echo.
echo.
echo.
set /p play1=
if not defined play1 goto Fase1
if /i "%play1%" == "s¢lido" goto congratulations1aleatory1
if /i "%play1%" == "solido" goto congratulations1aleatory1
goto errou-a-pergunta
:congratulations1aleatory1
cls
echo.Parab‚ns! Veja a explica‡Æo:
echo.(TEMP=Temperatura)
echo.
echo.
echo.
echo.
echo.                                                       /
echo.                                                      /
echo.                                                     /
echo.                                                    /   Gasoso
echo.                                                   /
echo. TEMP. 58øc ______________________________________/
echo.                                      /
echo.                                     /
echo.                                    /
echo.                                   /   L¡quido
echo.                                  /
echo. TEMP. 42øc _____________________/
echo.                     /
echo.                    /
echo.                   /
echo. TEMP. 36øc atual /   S¢lido
echo.                 /
echo.                /
echo.
echo.
echo.
echo.
echo.
pause
set /a level=%level%+1
goto fase2
:aleatory2
cls
set play1=
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  Se uma substƒncia muda de s¢lido pra l¡quido com 71øc, e de l¡quido pra gasosocom 154øc, qual ‚ o estado atual da substƒncia com uma temperatura de 219øc?
echo.
echo.
echo.
echo.
echo.
echo.
set /p play1=
if not defined play1 goto Fase1
if /i "%play1%" == "gasoso" goto congratulations1aleatory2
goto errou-a-pergunta
:congratulations1aleatory2
cls
echo.Parab‚ns! Veja a explica‡Æo:
echo.(TEMP=Temperatura)
echo.
echo.
echo.
echo.
echo.                                          /
echo. TEMP. 219øc atual                       /
echo.                                        /
echo.                                       /   Gasoso
echo.                                      /
echo. TEMP. 154øc_________________________/
echo.                           /
echo.                          /
echo.                         /
echo.                        /   L¡quido
echo.                       /
echo. TEMP. 71øc___________/
echo.            /
echo.           /
echo.          /
echo.         /   S¢lido
echo.        /
echo.       /
echo.
echo.
echo.
echo.
echo.
pause
set /a level=%level%+1
:Fase2
title Fase 2: O problema
cls
set play2=
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  Quanto ‚: %fase2count1%+%fase2count2%x%fase2count3%?
echo.
echo.
echo.
echo.
echo.
echo.
set /p play2=
if not defined play2 goto Fase2
if "%play2%" == "%fase2countRESULT%" goto congratulations2
goto errou-a-pergunta
:congratulations2
cls
echo.Parab‚ns! Veja a explica‡Æo:
echo.(Multiplica‡Æo ‚ sempre resolvida primeiro)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.          %fase2count1%+%fase2count2%x%fase2count3%
echo.           \/
echo.          %fase2count1%+%fase2countRESULTmultiple%
echo.           \/
echo.           %fase2countRESULT%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
set /a level=%level%+1
:Fase3
title Fase 3: Fuja
cls
set play3=
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Vocˆ tem apenas 3 sa¡das, sÆo elas:
echo.
echo.
echo.
echo [1ø Sa¡da] Tem um assassino.
echo.
echo [2ø Sa¡da] Tem um leÆo que nÆo come a um ano.
echo.
echo [3ø Sa¡da] A porta e o corredor estÆo em chamas.
echo.
echo.
echo.
echo.
set /p play3=Qual sa¡da vocˆ escolheria?  
if not defined play3 goto Fase3
if /i "%play3%" == "2" goto congratulations3
if /i "%play3%" == "segunda" goto congratulations3
if /i "%play3%" == "segunda saida" goto congratulations3
if /i "%play3%" == "segunda sa¡da" goto congratulations3
if /i "%play3%" == "sa¡da 2" goto congratulations3
if /i "%play3%" == "saida 2" goto congratulations3
if /i "%play3%" == "2ø" goto congratulations3
if /i "%play3%" == "2ø saida" goto congratulations3
if /i "%play3%" == "2ø sa¡da" goto congratulations3
if /i "%play3%" == "2 saida" goto congratulations3
if /i "%play3%" == "2 sa¡da" goto congratulations3
if /i "%play3%" == "leÆo" goto congratulations3
if /i "%play3%" == "leao" goto congratulations3
goto errou-a-pergunta
:congratulations3
cls
echo.Parab‚ns! Veja a explica‡Æo:
echo.
echo.
echo.
echo.
echo.
echo  Se o leÆo nÆo come a um ano, logicamente ele j  estar  morto!
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
set /a level=%level%+1
:Fase4
if not defined jdv1 set jdv1=1
if not defined jdv2 set jdv2=2
if not defined jdv3 set jdv3=3
if not defined jdv4 set jdv4=4
if not defined jdv5 set jdv5=5
if not defined jdv6 set jdv6=6
if not defined jdv7 set jdv7=7
if not defined jdv8 set jdv8=8
if not defined jdv9 set jdv9=9
title Fase 4: Jogo da Velha
cls
set play4=
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if defined SayComputer (echo Espere a resposta...&goto jdv-computer-enter)
set JdvResult1=0
set JdvResult2=0
set JdvResult3=0
set JdvResult4=0
set JdvResult5=0
set JdvResult6=0
set JdvResult7=0
set JdvResult8=0
if "%jdv1%" == "O" set /a JdvResult1=%JdvResult1%+1
if "%jdv2%" == "O" set /a JdvResult1=%JdvResult1%+1
if "%jdv3%" == "O" set /a JdvResult1=%JdvResult1%+1
if "%JdvResult1%" == "3" goto JdvLoser
if "%jdv1%" == "O" set /a JdvResult2=%JdvResult2%+1
if "%jdv4%" == "O" set /a JdvResult2=%JdvResult2%+1
if "%jdv7%" == "O" set /a JdvResult2=%JdvResult2%+1
if "%JdvResult2%" == "3" goto JdvLoser
if "%jdv1%" == "O" set /a JdvResult3=%JdvResult3%+1
if "%jdv5%" == "O" set /a JdvResult3=%JdvResult3%+1
if "%jdv9%" == "O" set /a JdvResult3=%JdvResult3%+1
if "%JdvResult3%" == "3" goto JdvLoser
if "%jdv2%" == "O" set /a JdvResult4=%JdvResult4%+1
if "%jdv5%" == "O" set /a JdvResult4=%JdvResult4%+1
if "%jdv8%" == "O" set /a JdvResult4=%JdvResult4%+1
if "%JdvResult4%" == "3" goto JdvLoser
if "%jdv3%" == "O" set /a JdvResult5=%JdvResult5%+1
if "%jdv5%" == "O" set /a JdvResult5=%JdvResult5%+1
if "%jdv7%" == "O" set /a JdvResult5=%JdvResult5%+1
if "%JdvResult5%" == "3" goto JdvLoser
if "%jdv3%" == "O" set /a JdvResult6=%JdvResult6%+1
if "%jdv6%" == "O" set /a JdvResult6=%JdvResult6%+1
if "%jdv9%" == "O" set /a JdvResult6=%JdvResult6%+1
if "%JdvResult6%" == "3" goto JdvLoser
if "%jdv4%" == "O" set /a JdvResult7=%JdvResult7%+1
if "%jdv5%" == "O" set /a JdvResult7=%JdvResult7%+1
if "%jdv6%" == "O" set /a JdvResult7=%JdvResult7%+1
if "%JdvResult7%" == "3" goto JdvLoser
if "%jdv7%" == "O" set /a JdvResult8=%JdvResult8%+1
if "%jdv8%" == "O" set /a JdvResult8=%JdvResult8%+1
if "%jdv9%" == "O" set /a JdvResult8=%JdvResult8%+1
if "%JdvResult8%" == "3" goto JdvLoser
set /p play4=Digite o n£mero  
if not defined play4 goto Fase4
if "%play4%" == "1" (if "%jdv1%" == "1" set jdv1=X&goto jdv-computer)
if "%play4%" == "2" (if "%jdv2%" == "2" set jdv2=X&goto jdv-computer)
if "%play4%" == "3" (if "%jdv3%" == "3" set jdv3=X&goto jdv-computer)
if "%play4%" == "4" (if "%jdv4%" == "4" set jdv4=X&goto jdv-computer)
if "%play4%" == "5" (if "%jdv5%" == "5" set jdv5=X&goto jdv-computer)
if "%play4%" == "6" (if "%jdv6%" == "6" set jdv6=X&goto jdv-computer)
if "%play4%" == "7" (if "%jdv7%" == "7" set jdv7=X&goto jdv-computer)
if "%play4%" == "8" (if "%jdv8%" == "8" set jdv8=X&goto jdv-computer)
if "%play4%" == "9" (if "%jdv9%" == "9" set jdv9=X&goto jdv-computer)
goto Fase4
:jdv-computer
set SayComputer=1
goto Fase4
:jdv-computer-enter
set JdvResult1=0
set JdvResult2=0
set JdvResult3=0
set JdvResult4=0
set JdvResult5=0
set JdvResult6=0
set JdvResult7=0
set JdvResult8=0
if "%jdv1%" == "X" set /a JdvResult1=%JdvResult1%+1
if "%jdv2%" == "X" set /a JdvResult1=%JdvResult1%+1
if "%jdv3%" == "X" set /a JdvResult1=%JdvResult1%+1
if "%JdvResult1%" == "3" goto JdvWinner
if "%jdv1%" == "X" set /a JdvResult2=%JdvResult2%+1
if "%jdv4%" == "X" set /a JdvResult2=%JdvResult2%+1
if "%jdv7%" == "X" set /a JdvResult2=%JdvResult2%+1
if "%JdvResult2%" == "3" goto JdvWinner
if "%jdv1%" == "X" set /a JdvResult3=%JdvResult3%+1
if "%jdv5%" == "X" set /a JdvResult3=%JdvResult3%+1
if "%jdv9%" == "X" set /a JdvResult3=%JdvResult3%+1
if "%JdvResult3%" == "3" goto JdvWinner
if "%jdv2%" == "X" set /a JdvResult4=%JdvResult4%+1
if "%jdv5%" == "X" set /a JdvResult4=%JdvResult4%+1
if "%jdv8%" == "X" set /a JdvResult4=%JdvResult4%+1
if "%JdvResult4%" == "3" goto JdvWinner
if "%jdv3%" == "X" set /a JdvResult5=%JdvResult5%+1
if "%jdv5%" == "X" set /a JdvResult5=%JdvResult5%+1
if "%jdv7%" == "X" set /a JdvResult5=%JdvResult5%+1
if "%JdvResult5%" == "3" goto JdvWinner
if "%jdv3%" == "X" set /a JdvResult6=%JdvResult6%+1
if "%jdv6%" == "X" set /a JdvResult6=%JdvResult6%+1
if "%jdv9%" == "X" set /a JdvResult6=%JdvResult6%+1
if "%JdvResult6%" == "3" goto JdvWinner
if "%jdv4%" == "X" set /a JdvResult7=%JdvResult7%+1
if "%jdv5%" == "X" set /a JdvResult7=%JdvResult7%+1
if "%jdv6%" == "X" set /a JdvResult7=%JdvResult7%+1
if "%JdvResult7%" == "3" goto JdvWinner
if "%jdv7%" == "X" set /a JdvResult8=%JdvResult8%+1
if "%jdv8%" == "X" set /a JdvResult8=%JdvResult8%+1
if "%jdv9%" == "X" set /a JdvResult8=%JdvResult8%+1
if "%JdvResult8%" == "3" goto JdvWinner
timeout /t 1 /nobreak >nul
:jdvloop
set SayComputer=
set JdvEmpate=0
if "%jdv1%" NEQ "1" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv2%" NEQ "2" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv3%" NEQ "3" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv4%" NEQ "4" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv5%" NEQ "5" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv6%" NEQ "6" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv7%" NEQ "7" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv8%" NEQ "8" set /a JdvEmpate=%JdvEmpate%+1
if "%jdv9%" NEQ "9" set /a JdvEmpate=%JdvEmpate%+1
if "%JdvEmpate%" == "9" goto Jdv-Empate
set JdvCalc=0
if "%jdv1%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv2%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv3%" == "3" (set jdv3=O& goto Fase4))
set JdvCalc=0
if "%jdv1%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv4%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv7%" == "7" (set jdv7=O& goto Fase4))
set JdvCalc=0
if "%jdv1%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv7%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv4%" == "4" (set jdv4=O& goto Fase4))
set JdvCalc=0
if "%jdv1%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv5%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv9%" == "9" (set jdv9=O& goto Fase4))
set JdvCalc=0
if "%jdv2%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv5%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv8%" == "8" (set jdv8=O& goto Fase4))
set JdvCalc=0
if "%jdv3%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv5%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv7%" == "7" (set jdv7=O& goto Fase4))
set JdvCalc=0
if "%jdv3%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv6%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv9%" == "9" (set jdv9=O& goto Fase4))
set JdvCalc=0
if "%jdv4%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv5%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv6%" == "6" (set jdv6=O& goto Fase4))
set JdvCalc=0
if "%jdv7%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%jdv8%" == "X" set /a JdvCalc=%JdvCalc%+1
if "%JdvCalc%" == "2" (if "%jdv9%" == "9" (set jdv9=O& goto Fase4))
set JdvEnter=%random:~-1%
if "%JdvEnter%" == "1" (if "%jdv1%" == "1" (set jdv1=O& goto Fase4))
if "%JdvEnter%" == "2" (if "%jdv2%" == "2" (set jdv2=O& goto Fase4))
if "%JdvEnter%" == "3" (if "%jdv3%" == "3" (set jdv3=O& goto Fase4))
if "%JdvEnter%" == "4" (if "%jdv4%" == "4" (set jdv4=O& goto Fase4))
if "%JdvEnter%" == "5" (if "%jdv5%" == "5" (set jdv5=O& goto Fase4))
if "%JdvEnter%" == "6" (if "%jdv6%" == "6" (set jdv6=O& goto Fase4))
if "%JdvEnter%" == "7" (if "%jdv7%" == "7" (set jdv7=O& goto Fase4))
if "%JdvEnter%" == "8" (if "%jdv8%" == "8" (set jdv8=O& goto Fase4))
if "%JdvEnter%" == "9" (if "%jdv9%" == "9" (set jdv9=O& goto Fase4))
goto jdvloop
:JdvLoser
if "%JdvResult1%" == "3" (set JdvAlert=Jdv1&set JdvAlert2=Jdv2&set JdvAlert3=Jdv3)
if "%JdvResult2%" == "3" (set JdvAlert=Jdv1&set JdvAlert2=Jdv4&set JdvAlert3=Jdv7)
if "%JdvResult3%" == "3" (set JdvAlert=Jdv1&set JdvAlert2=Jdv5&set JdvAlert3=Jdv9)
if "%JdvResult4%" == "3" (set JdvAlert=Jdv2&set JdvAlert2=Jdv5&set JdvAlert3=Jdv8)
if "%JdvResult5%" == "3" (set JdvAlert=Jdv3&set JdvAlert2=Jdv5&set JdvAlert3=Jdv7)
if "%JdvResult6%" == "3" (set JdvAlert=Jdv3&set JdvAlert2=Jdv6&set JdvAlert3=Jdv9)
if "%JdvResult7%" == "3" (set JdvAlert=Jdv4&set JdvAlert2=Jdv5&set JdvAlert3=Jdv6)
if "%JdvResult8%" == "3" (set JdvAlert=Jdv7&set JdvAlert2=Jdv8&set JdvAlert3=Jdv9)
set %JdvAlert%=@
set %JdvAlert2%=@
set %JdvAlert3%=@
timeout /t 0 /nobreak >nul
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
set %JdvAlert%=O
set %JdvAlert2%=O
set %JdvAlert3%=O
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
set %JdvAlert%=@
set %JdvAlert2%=@
set %JdvAlert3%=@
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
set %JdvAlert%=O
set %JdvAlert2%=O
set %JdvAlert3%=O
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
goto errou-a-pergunta
:Jdv-Empate
timeout /t 1 /nobreak >nul
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.         Velha
echo.
echo.     @ ³   @   ³ @
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     @ ³   @   ³ @
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     @ ³   @   ³ @
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.         Velha
echo.
echo.     @ ³   @   ³ @
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     @ ³   @   ³ @
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     @ ³   @   ³ @
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
set jdv1=
set jdv2=
set jdv3=
set jdv4=
set jdv5=
set jdv6=
set jdv7=
set jdv8=
set jdv9=
goto Fase4
:JdvWinner
if "%JdvResult1%" == "3" (set JdvAlert=Jdv1&set JdvAlert2=Jdv2&set JdvAlert3=Jdv3)
if "%JdvResult2%" == "3" (set JdvAlert=Jdv1&set JdvAlert2=Jdv4&set JdvAlert3=Jdv7)
if "%JdvResult3%" == "3" (set JdvAlert=Jdv1&set JdvAlert2=Jdv5&set JdvAlert3=Jdv9)
if "%JdvResult4%" == "3" (set JdvAlert=Jdv2&set JdvAlert2=Jdv5&set JdvAlert3=Jdv8)
if "%JdvResult5%" == "3" (set JdvAlert=Jdv3&set JdvAlert2=Jdv5&set JdvAlert3=Jdv7)
if "%JdvResult6%" == "3" (set JdvAlert=Jdv3&set JdvAlert2=Jdv6&set JdvAlert3=Jdv9)
if "%JdvResult7%" == "3" (set JdvAlert=Jdv4&set JdvAlert2=Jdv5&set JdvAlert3=Jdv6)
if "%JdvResult8%" == "3" (set JdvAlert=Jdv7&set JdvAlert2=Jdv8&set JdvAlert3=Jdv9)
set %JdvAlert%=@
set %JdvAlert2%=@
set %JdvAlert3%=@
timeout /t 0 /nobreak >nul
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
set %JdvAlert%=X
set %JdvAlert2%=X
set %JdvAlert3%=X
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
set %JdvAlert%=@
set %JdvAlert2%=@
set %JdvAlert3%=@
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
set %JdvAlert%=X
set %JdvAlert2%=X
set %JdvAlert3%=X
cls
echo.Vidas: %hearts%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     %jdv1% ³   %jdv2%   ³ %jdv3%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv4% ³   %jdv5%   ³ %jdv6%
echo.       ³       ³
echo.    ÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄ
echo.     %jdv7% ³   %jdv8%   ³ %jdv9%
echo.       ³       ³
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
echo vc ganhou
pause