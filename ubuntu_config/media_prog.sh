#!/bin/bash
# Медиа
# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# кодеки
sudo add-apt-repository -y "deb http://download.videolan.org/pub/debian/stable/ /"
# handbrake
sudo add-apt-repository -y ppa:stebbins/handbrake-releases
# OpenShot
sudo add-apt-repository -y ppa:openshot.developers/ppa
# обновление репозиториев
sudo apt-get update
# ------------------------------------------------------------------------------------------------------------
# установка программ
# установка мультимедиа-кодеков сторонних производителей
sudo apt-get install -y ubuntu-restricted-extras

# установка кодека для чтения лецинзионных дисков
wget -nc --tries=5 http://download.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
sudo apt-get install -y libdvdcss2

# gimp - редактор изображений
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# handbrake - конвертер медиа-файлов
sudo apt-get install -y handbrake-gtk

# OpenShot - легкий видеоредактор
sudo apt-get install -y openshot-qt

# удаление плеера rhythmbox
sudo apt-get purge -y rhythmbox

# удаление видеоплеера totem
sudo apt-get purge -y totem

# установка универсального плеера vlc и плагина для браузера
sudo apt-get install -y vlc browser-plugin-vlc

# Clementine - мультимедиа-плеер
sudo apt-get install clementine