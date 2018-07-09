#!/bin/bash -x

set -e

deploy_myenv() {
  apt -y install rake
  rm -Rf ~/.vim ~/.vimrc ~/.bash_profile ~/.tmux.conf ~/.gvimrc.after 
  ln -s dot.bash_profile ~/.bash_profile
  ln -s dot.gvimrc.after ~/.gvimrc.after
  ln -s dot.tmux.conf ~/.tmux.conf
  curl -L https://bit.ly/janus-bootstrap | bash
  }

  if ! [ -d ~/.vim/janus ];do
    deploy_myenv
  done
