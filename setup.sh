#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade


sudo apt-get install -y default-jre
sudo apt-get install -y curl
sudo apt-get install -y texlive-full
sudo apt-get install -y curl

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get -y install code # or code-insiders
 
 
#quick setup for new environment

# install vscode extentions. you can check installed extentions by "code --list-extensions"
code --install-extension ajshort.latex-preview
code --install-extension bbenoist.vagrant
code --install-extension James-Yu.latex-workshop
code --install-extension jebbs.plantuml
code --install-extension qhoekman.language-plantuml
code --install-extension rafaelmaiolla.remote-vscode
code --install-extension vscodevim.vim

# get plantuml latex plug-in (currently temporaly dropbox link at 20170705)
wget https://www.dropbox.com/s/z7yah4mpi2mk1mj/plantuml-jlatexmath.zip
unzip plantuml-jlatexmath.zip
mv *.jar ~/.vscode/extensions/jebbs.plantuml*
rm -f  plantuml-jlatexmath.zip



