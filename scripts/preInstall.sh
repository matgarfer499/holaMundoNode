#!/bin/bash -xe
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
. ~/bashrc
nvm install --lts