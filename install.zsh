#!/bin/zsh

#Author: Leandro Silva (http://grafluxe.com)
#Copyright: 2021 Leandro Silva
#License: MIT

mkdir -p ~/.id3-to-filename
curl -Lko ~/.id3-to-filename/LICENSE.md https://raw.githubusercontent.com/grafluxe/id3-to-filename/master/LICENSE.md
curl -Lko ~/.id3-to-filename/id3filename.zsh https://raw.githubusercontent.com/grafluxe/id3-to-filename/master/id3filename.zsh
echo 'alias id3filename="zsh ~/.id3-to-filename/id3filename.zsh"' >> ~/.zshrc
source ~/.zshrc
echo Done!
