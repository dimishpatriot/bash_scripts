#!/bin/bash
# Прочее
# ------------------------------------------------------------------------------------------------------------
# удаление средства для чтения для слабовидящих
sudo apt-get purge -y gnome-orca

# удаление индикатора Amazon Из панели Unity
sudo apt-get purge -y unity-webapps-common

# отключение отчетов о сбоях
sudo sed -i "s/enabled=1/enabled=0/g" '/etc/default/apport'

# решение проблемы с кириллической кодировкой в gedit
sudo gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8', 'WINDOWS-1251', 'CURRENT', 'ISO-8859-15', 'UTF-16']"