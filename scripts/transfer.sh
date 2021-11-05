#!/usr/bin/env bash

main() {
    rm -rfv src
    mkdir src

    from=(
        "${HOME}/.config"
        "${HOME}/.dwm"
        "${HOME}/.local"
        "${HOME}/.vim"
        "${HOME}/.vimrc"
        "${HOME}/.bashrc"
        "${HOME}/.xinitrc"
        "${HOME}/Suckless"
    )

    for file in "${from[@]}"; do
        cp -rfv "$file" src
    done
}

main "$@"

