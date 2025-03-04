#!/bin/zsh

echo "Este script demanda o Brew esteja instalado para funcionar"
echo "Caso o contrario instale"

mostrar_menu() {
    echo "Qual Editor você deseja instalar?"
    echo "1. NeoVim com LazyVim"
    echo "2. VSCodium"
    echo "3. Pular"
    echo "4. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $scolha in
        1)
            echo "Instalando o NeoVim com LazyVim"
            brew install neovim
            brew install git
            git clone https://github.com/LazyVim/starter ~/.config/nvim
            rm -rf ~/.config/nvim/.git
            neovim
            break
            ;;
        2)
            echo "Instalando o VSCodiuim"
            brew install --cask vscodium
            break
            ;;
        3)
            echo "Pulando a etapa"
            break
            ;;
        4)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar a Steam"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando a Steam"
            brew install --cask steam
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o VLC"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o VLC"
            brew install --cask vlc
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o Ferdim"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o Ferdim"
            brew install --cask ferdium
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o Prism Launcher"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o Prism Launcher"
            brew install --cask prismlauncher
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script"
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamnte"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o qBittorrent"
    echo "2. Pular"
    echo "3. Fechar"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o qBittorrent"
            brew install --cask qbittorrent
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o Bitwarden"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o Bitwarden"
            brew install --cask bitwarden
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instlar o Thunderbird"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o Thunderbird"
            brew install --cask thunderbird
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac 
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o Itch.io"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o Itch.io"
            brew install --cask itch
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o Heroic Games Launcher"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o Heroic Games Launchr"
            brew install --cask heroic
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Fechando o Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done