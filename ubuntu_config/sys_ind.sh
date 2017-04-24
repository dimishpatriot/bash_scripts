#!/bin/bash
# Индикаторы
# ------------------------------------------------------------------------------------------------------------
# добавление сторонних репозиториев
# System Load Indicator
sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
# Simple Weather Indicator
sudo add-apt-repository -y ppa:kasra-mp/ubuntu-indicator-weather
# Caffeine
sudo add-apt-repository -y ppa:caffeine-developers/caffeine-dev
# Shutter
sudo add-apt-repository -y ppa:shutter/ppa
# Keylock Indicator
sudo add-apt-repository -y ppa:tsbarnes/indicator-keylock

# обновление репозиториев
sudo apt-get update

# ------------------------------------------------------------------------------------------------------------
# установка программ
# System Load Indicator - индикатор загрузки системы
sudo apt install -y indicator-multiload
sudo mkdir -p ~/.config/autostart/
cp /usr/share/applications/indicator-multiload.desktop ~/.config/autostart/
# Simple Weather Indicator - простой индикатор погоды
sudo apt install -y indicator-weather
cp /usr/share/applications/indicator-weather.desktop ~/.config/autostart/
# CPUFreq - регулирование частоты процессора
sudo apt install -y indicator-cpufreq
# Caffeine - предотвращает выключение экрана при просмотре видео
sudo apt-get install -y caffeine
cp /usr/share/applications/caffeine.desktop ~/.config/autostart/
# Shutter - удобный индикатор для скриншотов
sudo apt-get install -y shutter
cp /usr/share/applications/shutter.desktop ~/.config/autostart/
# Netspeed Indicator - индикатор скорости сети
sudo apt-get install build-essential libgtop2-dev libgtk-3-dev libappindicator3-dev git-core
git clone git://github.com/mgedmin/indicator-netspeed.git
cd indicator-netspeed
make
sudo make install
cp /usr/share/applications/indicator-netspeed.desktop ~/.config/autostart/
# Keylock Indicator - индикатор клавиатуры
sudo apt install -y indicator-keylock
cp /usr/share/applications/indicator-keylock.desktop ~/.config/autostart/

