#!/bin/bash

echo "Este Script demanda que o Flatpak esteja instalado para a maioria das coias"
echo "Caso este não seja o caso o Script não ira funcionar!"

echo "Instalando o RPM Fusion"
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
clear

MENU="
1 - Sim
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
1 - Sim
2 - Não
"

SIM="Instalando o Neovim"
NAO="Ignorando a instalação" 

while true; do
    echo "$MENU"

    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$SIM"
            sudo dnf install neovim
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
sudo dnf install vlc
clear

echo "Instalando o Retroarch"
sudo dnf retroarch
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
            sudo dnf install steam
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

echo "Instalando o Sober (Roblox no Linux)"
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref
clear

MENU="
1 - Sim
2 - Não
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
1 - Sim
2 - Não
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