#!/bin/bash

func(){
    for arg in "$@"; do
        code $arg/index.html
    done
}

if [ "$1" = "sass" ]; then
    shift
    for arg in "$@"; do
        sass "$arg/style.scss":"$arg/style.css"
        echo "sass $arg/ completed"
    done
else
    func "$@"
fi
