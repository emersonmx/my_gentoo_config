#! /bin/bash

zenity --question --text "Você deseja deslogar?"

if [ $? == 0 ]; then
    kill -TERM $(xprop -root _BLACKBOX_PID | awk '{print $3}')
fi

