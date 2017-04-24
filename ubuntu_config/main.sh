#!/bin/bash
# установка основных программ 
echo '____ Начальный конфигуратор Ubuntu версия 1.2 ____'
echo 'https://github.com/dimishpatriot/bash_scripts'
echo 'Установка/удаление/настройка основных программ'
echo 'Выберите желаемое действие:'
echo '1. Системные программы'
echo '2. Программы для работы с мультимедиа'
echo '3. Программы для общения'
echo '4. Программы разработчика'
echo '5. Индикаторы системы'
echo '6. Предварительная конфигурация системы'
echo '7. Установить полностью'
echo '0. Выход'


# обработка ввода
read -n 1 -p '#: ' ans
echo ''
# проверка 0
if [ ${ans} -eq 0 ]; then exit; fi

# обновление системы
sudo apt-get full-upgrade

# выбор пунктов меню
case "$ans" in
1) ./sys_prog.sh;;
2) ./media_prog.sh;;
3) ./talk_prog.sh;;
4) ./res_prog.sh;;
5) ./sys_ind.sh;;
6) ./else_conf.sh;;
7)  ./sys_prog.sh
    ./media_prog.sh
    ./talk_prog.sh
    ./res_prog.sh
    ./sys_ind.sh
    ./else_conf.sh;;
esac

# восстановление зависимостей
sudo apt install -y -f
# удаление лишних пакетов, чистка кеша APT
sudo apt autoremove -y
sudo apt-get autoclean -y
