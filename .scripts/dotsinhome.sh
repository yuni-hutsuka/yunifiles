#!/bin/sh

dots_dir="$HOME/.yunifiles/configs/dots"
targets=`ls $HOME/.yunifiles/configs/dots -a`

for i in $targets;
do
  if [ $i = "." ]; then
    echo -n ""
  elif [ $i = ".." ]; then
    echo -n ""
  else
    echo $i
    ln -fnsv $dots_dir/$i $HOME/$i
  fi
done
