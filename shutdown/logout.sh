#! /bin/bash

zenity --question --text "Você deseja deslogar?"

if [ $? == 0 ]; then
    killall fluxbox
fi

