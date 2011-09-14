#!/bin/bash

PWD=$(pwd)

DIR="$( cd "$( dirname "$0" )" && pwd )"
cp $DIR/.bashrc ~/
cp $DIR/.rvm_prompt.sh ~/
source ~/.bashrc
rvm || echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bashrc

rvm pkg install readline
FOLDER=$(find $HOME/.rvm/src/ruby-1.9*/ext/ | grep readline | head -n1);
cd "$FOLDER"
ruby extconf.rb -- --with-readline-dir="$HOME/.rvm/usr"
make install

cd $PWD

