#!/bin/bash
# установка основных программ 
echo 'Установка/удаление/настройка основных программ Ubuntu'

# ---------------------------------------------------------------------------
# добавление сторонних репозиториев
# кодеки
sudo add-apt-repository -y "deb http://download.videolan.org/pub/debian/stable/ /"
# wine
sudo apt-add-repository -y https://dl.winehq.org/wine-builds/ubuntu/
# ubuntu tweak tool
sudo add-apt-repository -y ppa:tualatrix/ppa
# cherry tree
sudo add-apt-repository -y ppa:giuspen/ppa
# skype
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
# telegram
sudo add-apt-repository -y ppa:atareao/telegram
# ubuntu make
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
# обновление репозиториев и системы
sudo apt-get update
sudo apt-get upgrade 

# -----------------------------------------------------------------------------
# ubuntu make - программа установки инструментов разработчиков
sudo apt-get install -y ubuntu-make
# preload - демон, собирающий информацию о наиболее часто запускаемых приложениях для ускорения их запуска
sudo apt-get install -y preload
# установка мультимедиа-кодеков сторонних производителей
sudo apt-get install -y ubuntu-restricted-extras
# установка кодека для чтения лецинзионных дисков
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
sudo apt-get install -y libdvdcss2
# git - система контроля версий
sudo apt-get install -y git
# python 3.6 - новый питон с заменой ссылки python3
sudo apt-get install -y python3.6
# wine - для запуска приложений windows из под Linux
sudo dpkg --add-architecture i386
wget https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-get install -y --install-recommends winehq-stable
# virtualbox - программа для создания и управления виртуальных машин
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O - | sudo apt-key add -
sudo apt-get install -y virtualbox-5.1
# synaptic - менеджер пакетов
sudo apt-get install -y synaptic
# synaptic - менеджер пакетов
sudo apt-get install -y synaptic
# sublime text 3
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

# ----------------------------------------------------------------------------
# unity tweak tools - программа настройки окружения unity
sudo apt-get install -y unity-tweak-tool
# gnome tweak tools - программа настройки окружения gnome
sudo apt-get install -y gnome-tweak-tool
# ubuntu tweak tools - программа настройки ubuntu
sudo apt-get install -y ubuntu-tweak

# ---------------------------------------------------------------------------
# gimp - редактор изображений
sudo apt-get install -y gimp
# telegram - лучший мессенджер
sudo apt-get install -y telegram
# skype - не лучший, но бывает полезен. 
# предварительно устанавливаются 32-битные библиотеки для корректного оформления
sudo apt-get install -y sni-qt:i386 libdbusmenu-qt2:i386 libqt4-dbus:i386 libxss1:i386
sudo apt-get install -y libgtk2.0-0:i386 gtk2-engines:i386 libgconf-2-4:i386
sudo apt-get install -y skype
# evolution - почта, контакты, календарь в одном флаконе
sudo apt-get install -y evolution
# cherry tree - создание собственной базы данных древовидной структуры
sudo apt-get install -y cherrytree
# pycharm community - IDE для Python, бесплатная версия из официального репозитория
sudo umake ide pycharm
# sublime text 3 - легкий редактор
sudo apt-get install -y sublime-text-installer
# установка программ для работы с различными типами архивов
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

# ----------------------------------------------------------------------------
# отображение имени пользователя в системном трее
gsettings set com.canonical.indicator.session show-real-name-on-panel true
# удаление средства для чтения для слабовидящих
sudo apt-get purge -y gnome-orca
# удаление индикатора Amazon Из панели Unity
sudo apt-get purge -y unity-webapps-common
# отключение отчетов о сбоях
sudo sed -i "s/enabled=1/enabled=0/g" '/etc/default/apport'
# решение проблемы с кириллической кодировкой в gedit
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8', 'WINDOWS-1251', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

# ----------------------------------------------------------------------------
# удаление плеера rhythmbox
sudo apt-get purge -y rhythmbox
# удаление видеоплеера totem
sudo apt-get purge -y totem
# установка универсального плеера vlc и плагина для браузера
sudo apt-get install -y vlc browser-plugin-vlc

# ----------------------------------------------------------------------------
# восстановление зависимостей
sudo apt install -y -f
# удаление лишних пакетов, чистка кеша APT
sudo apt autoremove -y
sudo apt-get autoclean -y


