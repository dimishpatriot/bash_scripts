#!/bin/bash
# Разработка
# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# cherry tree
sudo add-apt-repository -y ppa:giuspen/ppa
# SublimeText3
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
# ubuntu make
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
# обновление репозиториев
sudo apt-get update
# ------------------------------------------------------------------------------------------------------------
# установка программ
# ubuntu make - программа установки инструментов разработчиков, нужна для установки PyCharm и прочих
sudo apt-get install -y ubuntu-make

# git - система контроля версий
sudo apt-get install -y git

# python 3.6 - новый питон
sudo apt-get install -y python3.6

# cherry tree - создание собственной базы данных древовидной структуры
sudo apt-get install -y cherrytree

# pycharm community - IDE для Python, бесплатная версия из официального репозитория
sudo umake ide pycharm

# sublime text 3 - легкий редактор
sudo apt-get install -y sublime-text-installer

# Double Commander - двухпанельный менеджер
sudo apt install -y doublecmd-qt

# TeamViewer - диспетчер удаленного рабочего стола
wget -nc --tries=5 http://download.teamviewer.com/download/teamviewer_i386.deb
sudo gdebi teamviewer_linux.deb

# FileZilla - FTP-клиент
sudo apt-get install -y filezilla

# packaging-dev - инструментарий для сборки пакетов
sudo apt-get install -y packaging-dev

# CheckInstall - утилита, позволяющая создавать бинарные пакеты для Linux из исходного кода приложения
sudo apt-get install -y checkinstall