#!/usr/bin/env sh

source ~/.local/doc/dwm/resources/colours.sh

main() {
    echo -e "Welcome ${green}${USER}${reset}, these are the key mappings for DWM."
    echo "Let's go through the key mappings."
    echo ""
    echo "First things first:"
    echo -e "  MOD = ${blue}COMMAND/WINDOWS key${reset}"
    echo ""
    echo "DWM key mappings:"
    echo "  MOD + d                 => Open DMenu"
    echo "  MOD + ENTER             => Open a new terminal"
    echo "  MOD + SHIFT + Enter     => Make the focused window the master window"
    echo "  MOD + B                 => Toggle bar visibility"
    echo "  MOD + J                 => Scroll through the stack (clockwise)"
    echo "  MOD + K                 => Sctoll through the stack (anti-clockwise)"
    echo "  MOD + SHIFT + I         => Add +1 to the master window space"
    echo "  MOD + SHIFT + D         => Take -1 from the master window space"
    echo "  MOD + H                 => Make the master window smaller"
    echo "  MOD + L                 => Make the master window larger"
    echo "  MOD + <0..9>            => Switches to another tag"
    echo "  MOD + SHIFT + Q         => Remove a window"
    echo "  MOD + T                 => Switch to tiling layout"
    echo "  MOD + F                 => Switch to floating layout"
    echo "  MOD + M                 => Switch to tabbed layout"
    echo "  MOD + SPACE             => Make the focused window floating"
    echo "  MOD + SHIFT + SPACE     => Make all visible windows floating"
    echo "  MOD + -                 => Make the gaps smaller"
    echo "  MOD + +                 => Make the gaps larger"
    echo "  MOD + SHIFT + =         => Set gaps to 0"
    echo "  MOD + SHIFT + E         => Open the exit menu"
    echo "  MOD + CTRL + E          => Open your editor"
    echo "  MOD + X                 => Lock the sceen"
    echo "  MOD + SHIFT + F         => Make the focused window fullscreen"
    echo "  MOD + W                 => Open a browser"
    echo "  MOD + E                 => Open emoji selector"
}

main "$@"

