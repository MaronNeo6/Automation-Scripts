#!/bin/bash

echo "Este Script demanda que o Flatpak esteja instalado para a maioria das coias"
echo "Caso este não seja o caso o Script não ira funcionar!"

echo "Instalando apps essenciais"
flatpak install flathub org.prismlauncher.PrismLauncher
flatpak install flathub io.github.equicord.equibop
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub com.bitwarden.desktop
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub io.itch.itch
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

MENU="
1 - NeoVim Debian
2 - NeoVim Pacman
"

DEBIAN="Instalando o Neovim para derivados Debian"
PACMAN="Instalando o Neovim para derivados Arch Linux"

while true; do
  echo "$MENU"

  read -p "Escolha uma opção: " OPCAO

  case "$OPCAO" in
    1)
      echo "$DEBIAN"
      sudo apt install neovim
      break
      clear
      ;;

    2)
      echo "$PACMAN"
      sudo pacman -S neovim
      break
      clear
      ;;

    *)
      echo "Opção $OPCAO não é válida"
      clear
      ;;
  esac
done


echo "Instalando o Minecraft Bedrock Launcher"
flatpak install flathub io.mrarm.mcpelauncher
clear

MENU="
1 - Instalar o LazyVim
2 - Passar pro Proximo item
"

LAZY="Instalando o LazyVim"
PROXIMO="Indo para o proximo"

while true; do
  echo "$MENU"

  read -p "Escolha uma opção: " OPCAO

  case "$OPCAO" in
    1)
      echo "$LAZY"
      git clone https://github.com/LazyVim/starter ~/.config/nvim
      rm -rf ~/.config/nvim/.git
      nvim
      break
      clear
      ;;
    2)
      echo "$PROXIMO"
      break
      clear
      ;;
    *)
      echo "Opção $OPCAO não é válida"
      clear
      ;;
  esac
done

MENU="
1 - Steam Flatpak
2 - Steam Debian
3 - Steam Arch Linux
"

FLATPAK="Instalando a Steam em Flatpak"
DEBIAN="Instalando a Steam para Debian e Derivados"
PACMAN="Instalando a Steam para Arch Linux"

while true; do
  echo "$MENU"

  read -p "Escolha uma opção: " OPCAO

  case "$OPCAO" in
    1)
      echo "$FLATPAK"
      flatpak install flathub com.valvesoftware.Steam
      break
      clear
      ;;
    2)
      echo "$DEBIAN"
      sudo apt install steam
      break
      clear
      ;;
    3)
      echo "$PACMAN"
      sudo pacman -S steam
      break
      clear
      ;;
    *)
      echo "Opção $OPCAO não é válida"
      ;;
  esac
done

echo "Instalando o VLC"
flatpak install flathub org.videolan.VLC
clear

echo "Instalando o Sober (Roblox no Linux)"
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref

MENU="
1 - ZSH Debian
2 - ZSH Arch
"

ZSHDEBIAN="Instalando o ZSH para Debian"
ZSHARCH="Instalando o ZSH para Arch Linux"

while true; do
  echo "$MENU"

  read -p "Escolha uma opção: " OPCAO

  case "$OPCAO" in
    1)
      echo "$ZSHDEBIAN"
      sudo apt install zsh
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
      break
      clear
      ;;
    2)
      echo "$ZSHARCH"
      sudo pacman -S zsh
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
      break
      clear
      ;;
    *)
      echo "Opção $OPCAO não é válida"
      ;;
  esac
done

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
