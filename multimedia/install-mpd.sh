#!/bin/bash

for f in {flac,mpd}; do cd $f/keys/pgp && gpg --import * && cd ../../..; done
for f in {flac,mpd}; do cd $f && makepkg -fscCri && cd ..; done
