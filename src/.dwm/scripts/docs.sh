#!/usr/bin/env bash

pre_run() {
    neofetch
    echo ""
    echo "welcome to the docs, please read and select them, you can open a new terminal with MOD + ENTER."
    echo "this function won't stop until you kill the window so to kill it it please focus it and press"
    echo "MOD + SHIFT + Q to stop reading the docs or"
    echo "if you actually want to read the docs - continue."
    echo ""
    read -p 'Press enter to continue...'
}


main() {
    doc="$(find "${HOME}/.local/doc/dwm" -type f -maxdepth 1 | fzf)"
    [[ "$doc" ]] && (chmod a+rx ${doc} && "${doc}" | less -r)

    main
}

pre_run
main

