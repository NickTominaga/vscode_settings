#!/bin/bash

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
mv *.jar ~/.vscode/extensions/jebbs.plantuml-2.0.0/
rm -f  plantuml-jlatexmath.zip

