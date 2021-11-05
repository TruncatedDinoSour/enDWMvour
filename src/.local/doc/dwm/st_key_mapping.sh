#!/usr/bin/env sh

source ~/.local/doc/dwm/resources/colours.sh

main() {
    echo -e "Welcome ${green}${USER}${reset}, these are the key mappings for the ST terminal emulator."
    echo "Let's go through the key mappings."
    echo ""
    echo "First things first:"
    echo -e "  MOD = ${blue}ALT key${reset}"
    echo -e "  TMOD = ${blue}CTRL + SHIFT key combination${reset}"
    echo ""
    echo "ST key mappings:"
    echo "  TMOD + J                => Zoom text in"
    echo "  TMOD + K                => Zoom text out"
    echo "  TMOD + L                => Reset zoom"
    echo "  TMOD + H                => Scroll up"
    echo "  TMOD + B                => Scroll down"
    echo "  MOD + CTRL + L          => Open url in history"
    echo "  MOD + Y                 => Copy URL in history"
    echo "  MOD + O                 => Copy command output"
}

main "$@"

