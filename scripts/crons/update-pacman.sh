#!/bin/bash

cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

/usr/bin/reflector \
    --country 'United Kingdom' \
    --age 12 \
    --protocol https \
    --sort rate \
    --number 10 \
    --save /etc/pacman.d/mirrorlist \
    --verbose

echo "Pacman mirrorlist updated."

exit 0
