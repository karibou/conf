#!/bin/bash -x

set -e

deploy_myenv() {
  rm -Rf ~/.vim ~/.vimrc
  ln -s dot.vimrc ~/.vimrc
  ln -s dot.bash_profile ~/.bash_profile
  ln -s dot.gvimrc.after ~/.gvimrc.after
  ln -s dot.tmux.conf ~/.tmux.conf
  ln -s dot.vimrc ~/.vimrc
  curl -L https://bit.ly/janus-bootstrap | bash
  }

  deploy_myenv
