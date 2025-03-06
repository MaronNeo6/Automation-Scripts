#!/bin/bash

echo "Este Script demanda que o Flatpak esteja instalado para a maioria das coias"
echo "Caso este não seja o caso o Script não ira funcionar!"

MENU="
1 - Instalar o Revolt
2 - Não instalar
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
1 - Instalar o NeoVim
2 - Não instalar
"

while true; do
    echo "$MENU"

    SIM="Instalando o NeoVim"
    NAO="Pulando para o próximo item"

    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$SIM"
            sudo zypper in neovim
            break
            ;;
        2)
            echo "$NAO"
            break
            ;;
        *)
            echo "Opção $OPCAO não é valida"
            ;;
    esac
done

echo "Instalando o Minecraft Bedrock Launcher"
flatpak install flathub io.mrarm.mcpelauncher
clear

echo "Instalando o VLC"
sudo zypper in vlc
clear

echo "Instalando o Retroarch"
flatpak install flathub org.libretro.RetroArch
clear

MENU="
1 - Steam Nativa
2 - Steam Flatpak
"

NATIVA="Instalando a Steeam"
FLATPAK="Instalando a Steam Flatpak"

while true; do
    echo "$MENU"

    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$NATIVA"
            sudo zypper in steam
            break
            ;;
        2)
            echo "FLATPAK"
            flatpak install flathub com.valvesoftware.Steam
            break
            ;;
        *)
            echo "Opção $OPCAO não é valida"
            ;;
    esac
done
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
            sudo dnf install zsh
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
1 - Instalar o Ferdium
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
      clear
      ;;
    2)
      echo "$NAO"
      break
      clear
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
