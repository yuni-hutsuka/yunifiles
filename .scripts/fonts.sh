#!/bin/sh

dots_dir="$HOME/.yunifiles/assets/fonts"
targets=`ls $HOME/.yunifiles/assets/fonts`

mkdir -p $HOME/.local/share/fonts

for i in $targets;
do
  if [ $i = "." ]; then
    echo -n ""
  elif [ $i = ".." ]; then
    echo -n ""
  else
    echo $i
    ln -fnsv $dots_dir/$i $HOME/.local/share/fonts/$i
  fi
done

fc-cache
