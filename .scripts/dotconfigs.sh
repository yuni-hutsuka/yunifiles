#!/bin/sh

dots_dir="$HOME/.yunifiles/configs/dotconfigs"
targets=`ls $HOME/.yunifiles/configs/dotconfigs -a`

mkdir -p $HOME/.config

for i in $targets;
do
  if [ $i = "." ]; then
    echo -n ""
  elif [ $i = ".." ]; then
    echo -n ""
  else
    echo $i
    ln -fnsv $dots_dir/$i $HOME/.config/$i
  fi
done
