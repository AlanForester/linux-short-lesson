# Показать состояние системы
systemctl status

# Список запущенных служб
systemctl
# или
systemctl list-units

# Список неудач — список служб, запуск которых не удался
systemctl --failed

# Список установленных юнитов
systemctl list-unit-files

# Показать cgroup slice, занимаемую память и родителя процесса по его PID
systemctl status pid

# Показать связанную с юнитом nginx страницу руководства:
systemctl help nginx

# Показать статус nginx:
systemctl status nginx

# Проверить, добавлен ли юнит nginx в автозапуск:
systemctl is-enabled nginx

# Запуск, перезапуск, перезагрузка службы
# Незамедлительно запустить nginx:
systemctl start nginx

# Незамедлительно остановить nginx:
systemctl stop nginx

# Перезапустить nginx:
systemctl restart nginx

# Перезагрузить nginx с новыми настройками:
systemctl reload nginx

# Перезагрузить менеджер настроек systemd, просканировав систему на наличие новых или изменённых юнитов:
systemctl daemon-reload

# Автозапуск
# Добавить юнит в автозапуск:
systemctl enable nginx

# Добавить юнит в автозапуск и запустить незамедлительно:
systemctl enable --now nginx

# Удалить юнит из автозапуска:
systemctl disable nginx

# Маскировка
# Маскировать юнит nginx, чтобы сделать невозможным его запуск:
systemctl mask nginx

# Снять маскировку юнита nginx:
systemctl unmask nginx

# Управление питанием
# Завершить работу и перезагрузить систему:
systemctl reboot

# Завершить работу и выключить компьютер (с отключением питания):
systemctl poweroff

# Перевести систему в ждущий режим:
systemctl suspend

# Перевести систему в спящий режим:
systemctl hibernate

# Перевести систему в режим гибридного сна:
systemctl hybrid-sleep

#Цели
#Получение информации о текущих целях
systemctl list-units --type=target
