#!/bin/bash

echo "Este Script prescisa do Flatpak instalado para seu funcionamento"
echo "Digite 1 para continuar"
read -n 1 -s
clear

MENU="
1 - Instalar o Revolt
2 - Não
"

while true; do
  echo "$MENU"

  SIM="Instalando o Revolt"
  NAO="Passando para o próximo item"

  read -p "Escolha uma opção: " OPCAO

  case "$OPCAO" in
    1)
      echo "$SIM"
      flatpak install flathub chat.revolt.RevoltDesktop
      break
      clear
      ;;

    2)
      echo "$NAO"
      break
      clear
      ;;

    *)
      echo "Opção $OPCAO não é válida"
      clear
      ;;
  esac
done
clear

MENU="
1 - Instalar o Neovim
2 - Não instalar
"

SIM="Instalando o Neovim"
NAO="Ignorando a instalação" 

while true; do
    echo "$MENU"

    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$SIM"
            sudo apt install neovim
            git clone https://github.com/LazyVim/starter ~/.config/nvim
            rm -rf ~/.config/nvim/.git
            nvim
            break
            ;;
        2)
            echo "$NAO"
            break
            ;;
        *)
            echo "Opção $OPCAO não é válida"
            ;;
    esac
done
clear

echo "Instalando o Minecraft Bedrock Launcher"
flatpak install flathub io.mrarm.mcpelauncher
clear

echo "Instalando o VLC"
sudo apt install vlc
clear

echo "Instale o Cliente Steam indo diretamente no site, pressione 1 para continuar"
read -n 1 -s
clear

echo "Instalando o Sober (Roblox no Linux)"
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref
clear

MENU="
1 - Instalar o ZSH
2 - Não instalar
"

SIM="Instalando o ZSH e o Oh My ZSH"
NAO="Ignorando a instalação"

while true; do
    echo $MENU

    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$SIM"
            sudo apt install zsh
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
            break
            ;;
        2)
            echo "$NAO"
            break
            ;;
        *)
            echo "Opção $OPCAO não é valida"
            ''
    esac
done
clear

MENU="
1 - Instalar o Fedium
2 - Não instalar
"

SIM="Instalando o Ferdium"
NAO="Não instalando o Ferdium"

while true; do
  echo "$MENU"

  read -p "Instalar o Ferdium? " OPCAO

  case "$OPCAO" in
    1)
      echo "$SIM"
      flatpak install flathub org.ferdium.Ferdium
      break
      ;;
    2)
      echo "$NAO"
      break
      ;;
    *)
      echo "Opção $OPCAO não é válida"
      ;;
  esac
done
clear

MENU="
1 - OverSteer (Logitech, Etc)
2 - Boxflat (Moza)
3 - Ignorar
"

OVER="Instalando o OverSteer"
BOX="Instalando o Boxflat"
IGN="Ignorando a instalação"

while true; do
  echo "$MENU"

  read -p "Escolha qual deseja instalar: " OPCAO

  case "$OPCAO" in
    1)
      echo "$OVER"
      flatpak install flathub io.github.berarma.Oversteer
      break
      ;;
    2)
      echo "$BOX"
      flatpak install flathub io.github.lawstorant.boxflat
      break
      ;;
    3)
      echo "$IGN"
      break
      ;;
    *)
        echo "Opção $OPCAO não é válida"
        ;;
  esac
done
clear