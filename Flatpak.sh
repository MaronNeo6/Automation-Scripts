#!/bin/bash

MENU="
1 - Arch
2 - Debian
3 - Fedora
4 - OpenSuse
5 - Void
6 - Outros
"

ARCH="Instalando o Flatpak no Arch Linux"
DEB="Instalando o Flatpak em distribuições baseadas em Debian"
FED="Instalando o Flatpak no Fedora"
OPEN="Instalando o Flatpak no OpenSuse"
VOID="Instalando o Flatpak no Void Linux"
OUTRO="Abrindo o site do Flatpak... Clique no icone do sistema que você esta usando"

while true; do
    echo "$MENU"
    read -p "Escolha uma opção: " OPCAO

    case "$OPCAO" in
        1)
            echo "$ARCH"
            sudo pacman -S flatpak
            break
            ;;
        2) 
            echo "$DEB"
            sudo apt install flatpak
            flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
            break
            ;;
        3) 
            echo "$FEDORA"
            sudo dnf install flatpak
            flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
            break
            ;;
        4)
            echo "$OPEN"
            sudo zypper in flatpak
            flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
            break
            ;;
        5)
            echo "$VOID"
            sudo xbps-install -S flatpak
            flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
            ;;
	    6)
	        echo "$OUTRO"
	        xdg-open https://flatpak.org/setup/
            break
            ;;
        *)
            echo "Opção $OPCAO não é valida"
            ;;
    esac
done

echo "Por favor reinicie o Computador"