#!/bin/bash
# git-commiter-hellwig.sh
# Автоматический коммит изменений в репозитории git

if [ ! -d ".git" ]; then
    echo "Текущая директория не является git-репозиторием"
    exit 1
fi

if git diff --quiet; then
    echo "Нет изменений для коммита"
    exit 0
fi

git add .

git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')"
