#!/bin/bash
work_dir="$1"

cd $work_dir

if [ ! -d ".git" ]; then
  echo "Isn't git repo"
  exit 1
fi

git add .

if git diff-index --quiet HEAD;
 then
   echo "No changes to commit."
   exit 0
fi

git commit -m "Auto commit $(date +'%Y-%m-%d %H:%M:%S')"

