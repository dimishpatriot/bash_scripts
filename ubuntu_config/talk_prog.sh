#!/bin/bash
# Общение
# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# skype
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
# telegram
sudo add-apt-repository -y ppa:atareao/telegram
# Choqok
sudo add-apt-repository -y ppa:adilson/experimental
# обновление репозиториев
sudo apt-get update
# ------------------------------------------------------------------------------------------------------------
# установка программ
# Choqok - twitter-клиент с широким функционалом
sudo apt-get install -y choqok

# telegram - лучший мессенджер
sudo apt-get install -y telegram

# skype - не лучший, но бывает полезен предварительно устанавливаются 32-битные библиотеки для корректного оформления
sudo apt-get install -y sni-qt:i386 libdbusmenu-qt2:i386 libqt4-dbus:i386 libxss1:i386
sudo apt-get install -y libgtk2.0-0:i386 gtk2-engines:i386 libgconf-2-4:i386
sudo apt-get install -y skype

# evolution - почта, контакты, календарь в одном флаконе
sudo apt-get install -y evolution