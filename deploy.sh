#!/bin/bash -x

set -e

deploy_myenv() {
  apt -y install rake
  rm -Rf ~/.vim ~/.vimrc ~/.bash_profile ~/.tmux.conf ~/.gvimrc.after 
  ln -s dot.bash_profile ~/.bash_profile
  ln -s dot.gvimrc.after ~/.gvimrc.after
  ln -s dot.tmux.conf ~/.tmux.conf
  curl -L https://bit.ly/janus-bootstrap | bash
  # install Pathogen
  mkdir -p ~/.vim/autoload ~/.vim/bundle
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  cd ~/.vim/bundle && \
    git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
  }

  if ! [ -d ~/.vim/janus ];do
    deploy_myenv
  done
