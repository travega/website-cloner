#!/bin/zsh

rm -rf ./website
mkdir ./website

wget \
--recursive \
--no-clobber \
--page-requisites \
--adjust-extension \
--span-hosts \
--convert-links \
--restrict-file-names=windows \
--domains ntoretail.com \
--no-parent https://$1

mv $1/index.html website
rm -rf $1
