#!/bin/bash

readonly thisDir=$(dirname "$(realpath $0)")

createLink() {
    ln -insr $thisDir/$1 ~/"$1"
}

createLink .vimrc
createLink .spacemacs.d

# Check if the .bashrc already sources .commonrc
if ! grep -q -e 'source.*\.commonrc' ~/.bashrc; then
   echo "source $thisDir/.commonrc" >> ~/.bashrc
fi
