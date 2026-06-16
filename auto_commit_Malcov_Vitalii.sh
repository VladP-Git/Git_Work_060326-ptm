#!/bin/bash

if [ -d ".git" ]
then
    echo "Git repository found."
    git add .
    if git diff --cached --quiet
    then
        echo "Нет изменений для коммита."
    else
        git commit -m "Автоматический коммит $(date +"%Y-%m-%d %H:%M:%S")"
        echo "Changes committed successfully."
    fi
else
    echo "No Git repository found. Please initialize a Git repository first."
fi
