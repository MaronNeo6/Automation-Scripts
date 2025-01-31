@echo off
Title Teste

echo Eu cuspo fatos, aceita
pause

cls
echo Escolha um aplicativo para instalar:
echo 1. Firefox
echo 2. Librewolf
echo 3. Opera
echo 4. Brave
echo 5. Vivaldi
echo 6. Ungoogled Chromium
echo 7. Ignorar
echo 8. Fechar

set /p choice="Digite o numero de sua escolha: "

if "%choice%"=="1" (
    echo Instalando o Firefox...
    winget install Mozilla.Firefox
    echo Instalação do Firefox foi concluida com sucesso.
    pause
) else if "%choice%"=="2" (
    echo Instalando o Librewolf...
    winget install LibreWolf.LibreWolf
    pause
) else if "%choice%"=="3" (
    echo Instalando o Opera
    winget install Opera.Opera
    echo Instalação do Opera foi concluida com sucesso
    pause
) else if "%choice%"=="4" (
    echo Instalando o Brave...
    winget install Brave.Brave
    echo Instalação do Brave foi concluida com sucesso
    pause
) else if "%choice%"=="5" (
    echo Instalando o Vivaldi...
    winget install VivaldiTechnologies.Vivaldi
    echo Instalação do Vivaldi foi concluida com sucesso
    pause
) else if "%choice%"=="6" (
    echo Instalando o Ungoogled Chromium
    winget install eloston.ungoogled-chromium
    echo Instalação do Ungoogled Chromium foi concluida com sucesso
    pause
) else if "%choice%"=="7" (
    echo Ignorando
    pause
) else if "%choice%"=="8" (
    echo Fechando o Script...
    pause
    exit
) else (
  echo Escolha um numero valido!
  pause
)

cls
echo Deseja instalar o Thunderbird
echo 1. Sim
echo 2. Nao
echo 3. Sair

set /p choice="Digite o numero de sua escolha: "

if "%choice%"=="1" (
    echo Instalando o Thunderbird...
    winget install Mozilla.Thunderbird
    echo Instalação do Thunderbird foi concluida com sucesso.
    pause
) else if "%choice%"=="2" (
    echo Ignorando
    pause
) else if "%choice%"=="3" (
    echo Fechando o Script...
    pause
    exit
) else (
    echo Escolha um numero valido!
    pause
)

cls
echo Deseja instalar o Bitwarden?
echo 1. Sim
echo 2. Nao
echo 3. Sair

set /p choice="Digite um numero da sua escolha: "

if "%choice%"=="1" (
    echo Instalando o Bitwarden...
    winget install Bitwarden.Bitwarden
    echo Instalação do Bitwarden foi concluida com sucesso.
    pause
) else if "%choice%"=="2" (
    echo Ignorando
    pause
) else if "%choice%"=="3" (
    echo Fechando o Script...
    pause
    exit
) else (
    echo Escolha um numero valido!
    pause
)

cls
echo Deseja instalar o QbitTorrent?
echo 1. Sim
echo 2. Nao
echo 3. Sair

set /p choice="Digite um numero da sua escolha: "

if "%choice%"=="1" (
    echo Instalando o QbitTorrent
    winget install qBittorrent.qBittorrent
    echo Instalação do QbitTorrent foi concluida com sucesso.
) else if "%choice%"=="2" (
    echo Ignorando
    pause
) else if "%choice%"=="3" (
    echo Fechando o Script...
    pause
    exit
) else (
    echo Escolha um numero valido!
    pause
)
cls
echo Escolha um aplicativo para instalar:
echo 1. Discord
echo 2. Discord Canary
echo 3. Discord PTB
echo 4. Ignorar
echo 5. Fechar

set /p choice="Digite o número da sua escolha: "

if "%choice%"=="1" (
    echo Instalando o Discord...
    winget install Discord.Discord
    echo Instalação do Discord foi concluida com sucesso.
    pause
) else if "%choice%"=="2" (
    echo Instalando o Discord PTB...
    winget install Discord.Discord.PTB
    echo Instalação do Discord PTB foi concluida com sucesso.
    pause
) else if "%choice%"=="3" (
    echo Instalando o Discord Canary...
    winget install Discord.Discord.Canary
    echo Instalação do Discord Canary foi concluida com sucesso
) else if "%choice%"=="4" (
    echo Ignorando
    pause
) else if "%choice%"=="5" (
    echo Fechando o Script...
    pause
    exit
) else (
    echo Escolha inválida. Por favor, digite um número válido.
    pause
)

cls
echo Deseja instalar a Steam?
echo 1. Sim
echo 2. Nao
echo 3. Sair

set /p  choice="Digite o número de sua escolha: "

if "%choice%"=="1"  (
    echo Instalando a Steam
    winget install Valve.Steam
    pause
) else if "%choice%"=="2" (
    echo Ignorando
    pause
) else if "%choice%"=="3" (
    echo Fechando o Script...
    pause
    exit
) else (
    echo Escolha inválida. Por favor, digite um numero válido.
    pause
)

cls 
echo Escolha um Launcher de Minecraft pra Instalar:
echo 1. Prism Launcher
echo 2. ATlauncher
echo 3. Launcher Official
echo 4. Ignorar
echo 5. Sair

set /p choice="Digite um numero da sua escolha: "

if "%choice%"=="1" (
    echo Instalando o Prism Launcher...
    winget install PrismLauncher.PrismLauncher
    echo Instalação do Prism Launcher concluida com sucesso.
    pause
) else if "%choice%"=="2" (
    echo Instalando o ATlauncher...
    winget install ATLauncher.ATLauncher
    echo Instalação do ATlauncher concluida com sucesso.
    pause
) else if "%choice%"=="3" (
    echo Instalando o Launcher Official de Minecraft
    winget install -e --id Mojang.MinecraftLauncher
    echo Instalação do Minecraft Launcher foi concluida com sucesso
    pause
) else if "%choice%"=="4" (
    echo Ignorando
    pause
) else if "%choice%"=="5" (
    echo Fechando o Script...
    pause
    exit
) else (
    echo Escolha inválida. Por favor, digite um numero válido.
    pause
)    

cls
echo Escolha um editor de codigo para instalar
echo 1. Neo Vim
echo 2. Vscodium
echo 3. Visual Studio Code
echo 4. Ignorar
echo 5. Sair

set /p choice="Digite um numero da sua escolha: "

if "%choice"=="1" (
    echo Instalando o NeoVim
    winget install Neovim.Neovim
    echo Instalação do NeoVim concluida com sucesso
    pause
) else if "%choice%"=="2" (
    echo Instalando o Vscodium
    winget install VSCodium.VSCodium
    echo Instalação do Vscodium concluida com sucesso
    pause
) else if "%choice%"=="3" (
    echo Instalando o Visual Studio Code
    winget install Microsoft.VisualStudioCode
    echo a Instalação do Visual Studio Code concluida com sucesso

)

echo O Script acabou preesione qualquer tecla para fechar
pause

start "" "https://www.youtube.com/watch?v=yR3otY7IHMI"

exit