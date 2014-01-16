#!/bin/bash

files=( '.inputrc' '.tmux.conf' '.vimrc' '.vim' )
script=`readlink -e $0`
scriptdir=`dirname $script`

# Get user confirmation
echo  "The following files will be overwritten:"
for file in ${files[@]}; do
  echo $file
done
echo "Is this ok? (y/n)"
read response
if [[ $response != 'y' ]]; then
  exit
fi

# Remove old files and create symlinks
for file in ${files[@]}; do
  src="$scriptdir/$file"
  dest="$HOME/$file"
  if [[ -e $dest ]]; then
    rm -r $dest
  fi
  ln -s $src $dest
done
