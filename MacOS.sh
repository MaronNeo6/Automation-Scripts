#!/bin/bash

MENU="
1 - Instalar o NeoVim
2 - Não Instalar
"

SIM="Instalando o Neovim"
NAO="Ignorando a instalação" 

while true; do
    echo "$MENU"

    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$SIM"
            brew install neovim
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

echo "Istalando o VLC"
brew install --cask vlc

echo "Instalando o RetroArch"
brew install --cask retroarch

echo "Instalando a Steam"
brew install --cask steam

MENU="
1 - Instalar o Oh My ZSH
2 - Não instalar
"

SIM="Instalando o Oh My ZSH"
NAO="Ignorando a instalação"

while true; do
    echo $MENU

    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$SIM"
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
      brew install --cask ferdium
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
