#!/usr/bin/env bash

adm="sudo"

info() {
    echo -e "\n[INFO] $1\n"
    sleep 2
}

install_aur() {
    rm -rfv yay
    git clone 'https://aur.archlinux.org/yay.git'

    cd yay || exit 1
    makepkg -si
    cd ..

    info 'Testing yay'
    yay -Syu || (read -p 'Yay has failed, try again ... press enter to continue ...' && install_aur)

    rm -rfv yay
}

main() {
    echo 'Before we start, make sure to have a stable internet connection, we will test it when you press enter'
    read -p 'Press enter to continue...'

    info 'This script will overwrite and remove your current configs, back up or get a base system'
    name="Yes I want my files to be overwritten, do as I say $RANDOM from $HOME"

    read -p "Type '$name' without the quates in all upper case to confirm: " confirm

    [[ "${confirm^^}" != "${name^^}" ]] && exit 2


    info 'Installing reflector and rsync...'
    ${adm} pacman -Syu --needed reflector rsync

    info 'Refreshing your mirrorlist [WARNINGS ARE NORMAL]'
    ${adm} reflector --age 10 --sort rate --latest 30 --save /etc/pacman.d/mirrorlist

    info 'Syncing repositories'
    ${adm} pacman -Syyu

    info 'Installing developer tools'
    ${adm} pacman -Syu --needed git base-devel


    info 'Entering build...'
    mkdir build
    cd build || exit 1

    info 'Installing yay'
    install_aur

    info 'Exiting build...'
    cd .. || exit 1
    rm -rfv build


    info 'Installing dependencies'
    yay -Syu --needed $(cat dependencies)

    info 'Copying files'
    shopt -s dotglob
    for file in src/*; do
        rm -rf "${HOME:?}/${file}"
        cp -rfv "${file}" "${HOME}"
    done
    shopt -u dotglob


    info 'Running the compile script for suckless'
    local back
    back="$(pwd)"

    cd ~/Suckless || exit 2
    chmod a+rx ./compile
    ./compile

    cd "$back" || exit 3

    info 'Bootstrap done - now you can install your drivers, display managers and extra stuff you might want.'
    info 'Also, you might want run run xorg_debloat.sh script.'
}


main "$@"

