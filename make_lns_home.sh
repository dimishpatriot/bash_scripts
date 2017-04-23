#!/bin/bash
# Программа создает англоязычные ссылки для русскоязычных папок
# для Ubuntu для удобного использования из консоли
echo '> переход в домашнюю директорию'
cd ~
echo '> создание ссылок'
ln -s ~/Документы ~/Doc
echo 'Documents - OK'
ln -s ~/Загрузки ~/Download
echo 'Downloads - OK'
ln -s ~/Изображения ~/Pictures
echo 'Pictures - OK'
ln -s ~/Музыка ~/Music
echo 'Music - OK'
ln -s ~/Видео ~/Video
echo 'Video - OK'
ln -s ~/Общедоступные ~/Share
echo 'Share - OK'
ln -s ~/Рабочий* ~/Desktop
echo 'Desktop - OK'
ln -s ~/Шаблоны ~/Templates
echo 'Templates - OK'
echo '> Готово!' 
ls
