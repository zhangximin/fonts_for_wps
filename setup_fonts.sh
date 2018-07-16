#!/bin/bash

if [ $UID -ne 0 ]; then
    echo "Superuser privileges are required to run this script."
    echo "e.g. \"sudo $0\""
    exit 1
fi

if [ ! -d /usr/share/fonts/wps ];then
	mkdir -p /usr/share/fonts/wps
fi

cp ./wps/* /usr/share/fonts/wps/

cd /usr/share/fonts/wps/

mkfontdir
mkfontscale
fc-cache -vf
