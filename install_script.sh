#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "Running install scripts in $DIR"

run_install() {
  echo "Running $1..."
  bash -c "$DIR/$1"
}

run_install "rvm_install"
run_install "rvm_ruby1.9.2.sh"
run_install "rvm_post_install.sh"

exit 0
