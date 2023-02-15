#!/bin/bash

for f in {aide,opendoas,rsync}; do cd $f/keys/pgp && gpg --import * && cd ../../..; done
for f in {aide,checksec,opendoas,radeontop,rsync,sysstat,tmux}; do cd $f && makepkg -fscCri && cd ..; done
