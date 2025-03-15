#!/bin/bash

# Переключение на ветку dev
git checkout dev

# Получение последних изменений
git pull origin dev

# Переключение на ветку prd
git checkout prd

# Слияние dev в prd
git merge dev

# Установка тега (версии)
TAG=$(date +"%Y.%m.%d-%H.%M.%S")
git tag $TAG

# Отправка изменений на GitHub
git push origin prd
git push origin $TAG

echo "Ревизия из dev успешно перенесена в prd с тегом $TAG."
