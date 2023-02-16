#!/bin/bash

for f in {wlroots,sway,swaybg,swayidle}; do cd $f/keys/pgp && gpg --import * && cd ../../..; done
for f in {wlroots,seatd,sway,swaybg,swayidle,foot,wl-clipboard}; do cd $f && makepkg -fscCri && cd ..; done
