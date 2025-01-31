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

MENU="
1 - NeoVim Debian
2 - NeoVim Pacman
"

echo "$MENU"

DEBIAN="Instalando o Neovim para derivados Debian"
PACMAN="Instalando o Neovim para derivados Arch Linux"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
	1)
		echo "$DEBIAN"
		sudo apt install neovim
	;;

	2)
		echo "$PACMAN"
		sudo pacman -S neovim
	;;

	*)
		echo "Opção $OPCAO não é valida"
		;;
esac

echo "Instalando o Minecraft Bedrock Launcher"
flatpak install flathub io.mrarm.mcpelauncher

MENU="
1 - Instalar o LazyVim
2 - Passar pro Proximo item
"

echo "$MENU"

LAZY="Instalando o LazyVim"
PROXIMO="Indo para o proximo"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
	1)
		echo "$LAZY"
		git clone https://github.com/LazyVim/starter ~/.config/nvim
		rm -rf ~/.config/nvim/.git
		nvim
	;;

	2)
		echo "$PROXIMO"
	;;

	*)
		echo "Opção $OPCAO não é valida"
		;;
esac

MENU="
1 - Steam Flatpak
2 - Steam Debian
3 - Steam Arch Linux
"

echo "$MENU"

FLATPAK="Instalando a Steam em Flatpak"
DEBIAN="Instalando a Steam para Debian e Derivados"
PACMAN="Instalando a Steam para Arch Linux"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
	1)
		echo "$FLATPAK"
		flatpak install flathub com.valvesoftware.Steam
	;;

	2)
		echo "$DEBIAN"
		sudo apt install steam
	;;

	3)
		echo "$PACMAN"
		sudo pacman -S steam
		;;

	*)
		echo "Opção $OPCAO não é valida"
		;;
esac

echo "Instalando o VLC"
flatpak install flathub org.videolan.VLC

echo "Instalando o Sober (Roblox no Linux)"
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref

MENU="
1 - ZSH Debian
2 - ZSH Arch
"

echo "$MENU"

ZSHDEBIAN="Instalando o ZSH para Debian"
ZSHARCH="Instalando o ZSH para Arch Linux"

read -p "Escolha uma opção: " OPCAO

case "$OPCAO" in
	1)
		echo "$ZSHDEBIAN"
		sudo apt install zsh
		;;
	2)
		echo "ZSHARCH"
		sudo pacman -S zsh
		;;
	*)
		echo "Opção $OPCAO não é valida"
		;;
esac

echo "Instalando o Oh My ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

MENU="
1 - Sim
2 - Não
"

echo "$MENU"

SIM="Instalando o Ferdium"
NAO="Não instalando o Ferdium"

read -p "Instalar o Ferdium? " OPCAO

case "$OPCAO" in
	1)
		echo "$SIM"
		flatpak install flathub org.ferdium.Ferdium
		;;
	2)
		echo "$NAO"
		;;
	*)
		echo "Opção $OPCAO não é valida
		;;
esac