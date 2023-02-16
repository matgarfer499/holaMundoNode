#!/bin/bash -xe
curl -sL https://github.com/matgarfer499/holaMundoNode/archive/master.zip --output master.zip
sudo apt install unzip
unzip master.zip
rm -rf master.zip
mv holaMundoNode app
cd app
npm install