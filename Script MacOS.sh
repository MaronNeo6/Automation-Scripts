#!/bin/zsh

echo "Este script demanda o Brew esteja instalado para funcionar"
echo "Caso o contrario instale"

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o Neovim"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua escolha: " escolha

    case $escolha in
        1)
            echo "Instalando o Neovim"
            brew install neovim
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Saindo do Script..."
            break
            exit
            ;;
        *)
            echo "Opção inválida, tente novamente."
            ;;
    esac
done

mostrar_menu() {
    echo "Escolha uma opção"
    echo "1. Instalar o Lazyvim"
    echo "2. Pular"
    echo "3. Sair"
}

while true do
    mostrar_menu
    read -p "Digite sua eescolha: " escolha

    case $escolha in
        1)
            brew install git
            git clone https://github.com/LazyVim/starter ~/.config/nvim
            rm -rf ~/.config/nvim/.git
            nvim
            break
            ;;
        2)
            echo "Pulando a etapa"
            break
            ;;
        3)
            echo "Saindo do Script..."
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
            ;;
        *)
            echo "Opção inválida, tente novamente"
            ;;
    esac
done