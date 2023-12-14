#!/bin/sh

dots_dir="$HOME/$1/configs/dots/"
targets=`ls $HOME/$1/configs/dots/ -a`

for i in $targets;
do
  if [ $i = "." ]; then
    echo -n ""
  elif [ $i = ".." ]; then
    echo -n ""
  else
    echo $i
    # ln -fnsv $dots_dir/$i $HOME/$i
  fi
done
