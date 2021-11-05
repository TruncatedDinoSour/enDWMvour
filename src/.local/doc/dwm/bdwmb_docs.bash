#!/usr/bin/env bash

main() {
    docs="/usr/share/doc/bdwmb"
    doc="$(ls "$docs" | fzf)"
    [[ "$doc" ]] && less "${docs}/${doc}"
}

main "$@"

