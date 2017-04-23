#!/bin/bash
# Скрип устанавливает/обновляет Wine
echo '> скрипт установки/обновления wine  до последней версии'
sudo dpkg --add-architecture i386
echo '> арихитектура изменена на i386'
wget https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
echo '> добавлен ключ релиза'
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
echo '> добавлен репозиторий https://dl.winehq.org/wine-builds/ubuntu/'
sudo apt-get update
sudo apt-get install --install-recommends winehq-stable
echo '> wine установлен!'
